*** Settings ***
Library  SeleniumLibrary

### DATA ###
Resource  DATA/geral.robot

### PAGES ###
Resource  PAGES/CheckoutPage.robot
Resource  PAGES/HomePage.robot
Resource  PAGES/LoginPage.robot

### SHARED ###
Resource  SHARED/setup_teardown.robot