require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get companies_url
    assert_response :success
  end

  test "should get new" do
    get new_company_url
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post companies_url, params: { company: { annual_rate: @company.annual_rate,
                                               default_rate: @company.default_rate,
                                               money: @company.money,
                                               name: @company.name,
                                               period: @company.period,
                                               term: @company.term,
                                               monthly_debt: @company.monthly_debt,
                                               monthly_percent: @company.monthly_percent,
                                               monthly_common: @company.monthly_common,
                                               payout: @company.payout,
                                               paid_percent: @company.paid_percent,
                                               paid_debt: @company.paid_debt,
                                               yield_pa: @company.yield_pa} }
    end

    assert_redirected_to company_url(Company.last)
  end

  test "should show company" do
    get company_url(@company)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_url(@company)
    assert_response :success
  end

  test "should update company" do
    patch company_url(@company),
          params: { company: { annual_rate: @company.annual_rate,
                               default_rate: @company.default_rate,
                               money: @company.money,
                               name: @company.name,
                               period: @company.period,
                               term: @company.term,
                               monthly_debt: @company.monthly_debt,
                               monthly_percent: @company.monthly_percent,
                               monthly_common: @company.monthly_common,
                               payout: @company.payout,
                               paid_percent: @company.paid_percent,
                               paid_debt: @company.paid_debt,
                               yield_pa: @company.yield_pa} }
    assert_redirected_to company_url(@company)
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete company_url(@company)
    end

    assert_redirected_to companies_url
  end
end
