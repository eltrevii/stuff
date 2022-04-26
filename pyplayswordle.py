try:
	import requests as r, sys as sus, bs4 as bs, webbrowser as wb, time as t, os, pywinauto as pw
	from selenium import webdriver as wd
	from pywinauto.keyboard import send_keys as sk
	from selenium.webdriver.support.ui import WebDriverWait
	from selenium.webdriver.common.by import By
	from selenium.webdriver.support import expected_conditions as EC

except ModuleNotFoundError as m:
	try:
		__import__('os').system('pip install ' + str(m).replace("'", "").split('No module named ')[1])

	except ModuleNotFoundError as m:
		print('pip cant find the module ' + str(m).replace("'", "").split('the requirement ')[1].split(' (from')[0] + '; this error might be caused because you use pywin32 or another package that is installed with a different name than imported')

dr = wd.Chrome()
dr.get("https://wordle.danielfrg.com")
t.sleep(2)

b = WebDriverWait(dr, 20).until(EC.element_to_be_clickable((By.XPATH, '//button[@class=" css-47sehv" and contains(., "ACEPTO")]')))
b.click()

b = WebDriverWait(dr, 20).until(EC.element_to_be_clickable((By.XPATH, '//button[@class="chakra-modal__close-btn css-1iqbypn"]')))
b.click()

b = WebDriverWait(dr, 20).until(EC.element_to_be_clickable((By.XPATH, '//div[@class="css-m9r6d8"]')))
b.click()

def send():
	sk('c', vk_packet = False); t.sleep(0.125)
	sk('a', vk_packet = False); t.sleep(0.125)
	sk('s', vk_packet = False); t.sleep(0.125)
	sk('a', vk_packet = False); t.sleep(0.125)
	sk('s', vk_packet = False); t.sleep(0.125)
	sk('{ENTER}', vk_packet = False)

for i in range(6):
	send()

t.sleep(3)

b = dr.find_element(By.XPATH, '//span[@class="chakra-text css-1lejymi"]').text
print(b)