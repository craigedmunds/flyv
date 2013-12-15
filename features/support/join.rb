class Join < Base

  JOIN                   = {link: 'JOIN'}
  JOIN_EMAIL             = {id: 'ctl00_uiContent_uiEmailAddressinner' }
  JOIN_PASSWORD          = {id: 'ctl00_uiContent_uiPasswordinner'}
  JOIN_PASSWORD_CONFIRM  = {id: 'ctl00_uiContent_uiConfirmPasswordinner'}
  JOIN_PHONE             = {id: 'ctl00_uiContent_uiPrimaryPhoneinner'}
  JOIN_TITLE             = {id: 'ctl00_uiContent_uiTitleinner'}
  JOIN_FIRSTNAME         = {id: 'ctl00_uiContent_uiFirstNameinner'}
  JOIN_LASTNAME          = {id: 'ctl00_uiContent_uiLastNameinner'}
  JOIN_COUNTRY           = {id: 'ctl00_uiContent_uiAddressCountryinner'}
  JOIN_LANGUAGE          = {id: 'ctl00_uiContent_uiLanguageinner'}
  JOIN_TERMS             = {id: 'ctl00_uiContent_uiTermsAndConditionsinner'}
  JOIN_CREATE_ACCOUNT    = {id: 'ctl00_uiContent_BtnSubmit'}

  def initialize(driver)
    super
  end

  def join
    click_on(JOIN)
    verify_page('Become a member')
  end

  def enter_personal_details
    type(JOIN_EMAIL, "test_user_#{SecureRandom.hex(3).upcase}@a.com")
    type(JOIN_PASSWORD, 'password')
    type(JOIN_PASSWORD_CONFIRM, 'password')
    type(JOIN_PHONE, '01225 100200')
    type(JOIN_FIRSTNAME, 'Test')
    type(JOIN_LASTNAME, 'User')
    type(JOIN_COUNTRY, 'United Kingdom')
    type(JOIN_LANGUAGE, 'English (United Kingdom)')
  end

  def accept_terms
    click_on(JOIN_TERMS)
  end

  def create_account
    click_on(JOIN_CREATE_ACCOUNT)
  end

  def create_new_user_account
    join
    enter_personal_details
    accept_terms
    create_account
  end

end