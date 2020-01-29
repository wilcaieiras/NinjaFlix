class LoginPage
  include Capybara::DSL

  def go
    visit "/"
  end

  def with(email, pass)
    find("input[name=email]").set email
    find("input[name=password]").set pass
    find("a[name="btnEntrar"]").click
  end

  def alert
    find(".alert").text
  end
end
