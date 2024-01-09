<?php

class AboutController extends Controller
{

    /**
     * __construct a Services
     * @return void
     */
    public function __construct(
        protected StateService $stateService,
        protected CountryService $countryService,
        protected OccupationService $occupationService,
    ) {}

    /**
     * Return Profile/About Index Page
     * @return View
     */
    public function index() : View
    {
        $user = Auth::user();
        $states = $this->stateService->getState();
        $occupations = $this->occupationService->getoccupations();
        $countries = $this->countryService->getCountries();

        return view('laravel.blade.view', compact(
            ['user'],
            ['states', 'countries'],
            ['occupations']
        ));
    }

    /**
     * Update user's data
     * Model : Author
     * @return RedirectResponse
     */
    public function update(UpdateAboutRequest $request): RedirectResponse
    {
        $user = Auth::user();
        $user->author()->update($request->validated());
        Alert::Success('Your data has been updated!');
        return redirect()->back();
    }
}
