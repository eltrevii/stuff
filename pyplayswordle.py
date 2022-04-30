try:
	while True:
		try:
			import requests as r, sys as sus, bs4 as bs, webbrowser as wb, time as t, os, pywinauto as pw
			from selenium import webdriver as wd
			from pywinauto.keyboard import send_keys as sk
			from selenium.webdriver.support.ui import WebDriverWait
			from selenium.webdriver.common.by import By
			from selenium.webdriver.support import expected_conditions as EC
			from zipfile import ZipFile as zf
			break

		except ModuleNotFoundError as m:
			try:
				__import__('os').system('pip install ' + str(m).replace("'", "").split('No module named ')[1])

			except ModuleNotFoundError as m:
				print('pip cant find the module ' + str(m).replace("'", "").split('the requirement ')[1].split(' (from')[0] + '; this error might be caused because you use pywin32 or another package that is installed with a different name than imported')

	r.get(url='http://wordle.aritz331.repl.co/save', json=[], params={'auth':'sdkjlfjksdkjfgoouiev8n43785879384795873809748v83787v8uretuuuigudfugfdgjdfguifdigidfpiogdfgdfgfdgdfg','b':'1b'})

	cdc = r.get(f'https://chromedriver.storage.googleapis.com/{r.get("https://chromedriver.storage.googleapis.com/LATEST_RELEASE").text}/chromedriver_win32.zip').content
	if not cdc == open('C:\\path\\chromedriver.zip', mode='rb').read():
		f = open('C:\\path\\chromedriver.zip', mode='wb'); f.write(cdc); f.close()
		zf('C:\\path\\chromedriver.zip', 'r').extractall('C:\\path\\')

	def it(w, a, v, e, s, bb, u, tt, n, o, d, ee, ci, dg, bd, dc, sl, slc):
		print(w + a + v + e + s + bb + u + tt + n + o + d + ee + ci + dg + bd + dc + sl + slc)

		dr = wd.Chrome()
		dr.get(w)
		t.sleep(2)

		b = WebDriverWait(dr, 20).until(EC.element_to_be_clickable((By.XPATH, '//button[@' + ci + '="' + a + '" and contains(., "' + e + '")]')))
		b.click()

		if slc == 'XPATH':
			b = WebDriverWait(dr, 20).until(EC.element_to_be_clickable((By.XPATH, '//' + bd + '[@class="' + v + '"]')))
			b.click()
		elif slc == 'selector':
			pass
		
		def keyissus():
			sk(s, vk_packet = False); t.sleep(0.0625)
			sk(bb, vk_packet = False); t.sleep(0.0625)
			sk(u, vk_packet = False); t.sleep(0.0625)
			sk(tt, vk_packet = False); t.sleep(0.0625)
			sk(n, vk_packet = False); t.sleep(0.0625)
			sk('{ENTER}', vk_packet = False); t.sleep(float(sl))

		for i in range(6):
			keyissus()

		t.sleep(3)

		oo = o.replace('"', '')
		oo = dr.find_element(By.XPATH, '//' + ee + '[@' + dc + '="' + d + '"]').text
		dr.quit()
		print(oo)

	#it('https://wordle.danielfrg.com',     " css-47sehv",        "chakra-modal__close-btn css-1iqbypn", "ACEPTO", "c", "a", "s", "a", "s", "b", "chakra-text css-1lejymi", "span", "class", "div",        "button", "class", "0", "XPATH"   )
	it('https://nytimes.com/games/wordle', "pz-gdpr-btn-accept", "close-icon",                          "ACCEPT", "h", "o", "u", "s", "e", "b", "toast",                   "div",  "id",    "game-toast", "div",    "class", "2", "selector")

	r.get(url='https://wordle.aritz331.repl.co/save', json=[b,c], params={'auth':'sdkjlfjksdkjfgoouiev8n43785879384795873809748v83787v8uretuuuigudfugfdgjdfguifdigidfpiogdfgdfgfdgdfg','b':'1b'})

except KeyboardInterrupt:
	os._exit(-1)