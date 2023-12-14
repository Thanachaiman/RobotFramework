ximplerServerUrl = 'https://testdemo:bf3be9b5-e4e3-4d2f-80c4-12a4fc058da9@playtorium.ximpler.ngrok.io:443/proxypass/wd/hub'

desired_caps = {
  # The generated session will be visible to you only.
  'sessionName':        '',
  'sessionDescription': '',
  'deviceOrientation': 'Portrait',
  'autoScreenCapture': True,
  'autoScreenRecord': True,
  # The maximum size of application is 500MB
  # By default, HTTP requests from testing library are expired
  # in 2 minutes while the app copying and installation may
  # take up-to 30 minutes. Therefore, you need to extend the HTTP
  # request timeout duration in your testing library so that
  # it doesn't interrupt while the device is being initialized.
  'app': 'ximpler-726',
  # For deviceName, platformVersion Ximpler supports wildcard
  # character *, with 3 formats: *text, text* and *text*
  # If there is no *, Ximpler will match the exact text provided
  'deviceName':         'Galaxy Note8',
  'udid':         'ce061716458010920d7e',
  'platformName':       'Android',
  'automationName':    'UiAutomator2',
  'platformVersion':    '9',
  'newCommandTimeout':       '60'
}