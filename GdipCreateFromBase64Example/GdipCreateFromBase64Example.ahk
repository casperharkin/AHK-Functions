﻿		#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
		; #Warn  ; Enable warnings to assist with detecting common errors.
		SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
		SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
		
		Frames()
		Count := 1
		Gui, Add, Picture, vImage, % "HBITMAP:*" GdipCreateFromBase(Frame%Count%)
		Gui, Show
		
		Loop  
		{
			count := (count+1 = 7) ? Count := 1 : Count+1
			GuiControl, , Image, % "HBITMAP:*" GdipCreateFromBase(Frame%count%)
			sleep 500
		}
		Exit ; END OF AES
		
		Frames(){
		Global
		
		Frame1 .= "iVBORw0KGgoAAAANSUhEUgAAAeAAAAEOCAMAAABmRDRVAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAA" 
		Frame1 .= "dTAAAOpgAAA6mAAAF3CculE8AAAARVBMVEVscW9UWVkPDhQtNT5FTlCMg2rjuX+PJzBhHSgkFRvCl2eUbVERERhrT0IVGSEWKTmG" 
		Frame1 .= "b1JENDBMWi1xdEEnQyEYMCv///9wxKLIAAAAAWJLR0QWfNGoGQAAAAd0SU1FB+QBGxcXGYP4k7kAAApISURBVHja7d0LY6K6FoZh" 
		Frame1 .= "5dKpmhP3OPL//+pJuF9CsgKBLOB7O7XqaAWeSUBt977dht11Sb+0KdmvrKu/cOOrUke3cdmwub/Q1+S55Rtn4/JJ7V/ZF7G+9b1t" 
		Frame1 .= "/htRHnB6nxuArwc83NhxfaMB33yAcy7A2WLgSLwRgW3fOBxwOvJdDDy43g7MyjczAIUCvoUCzm3AlCFs8d0HOJ4vgPcA3o/3NlkT" 
		Frame1 .= "ExDRN7X7BgPO1wCnjhnaDzgnAI82+b6+RwTOHcDuIWzznRG2DmAf4J19Lwicxgbe1Zcj8M+wMXC+GtjuuwB4dvtp4NFG39r3z8b9" 
		Frame1 .= "/tqBf38nd/nxy7EA+wDPDmAn8C4KmwLrzMDV3y1B9WbeqAXABt5HbKQ1/fYbypY9n8/VuBGpH0PRRcCH9h0CT3o+wwPv6/zwBOY0" 
		Frame1 .= "gINsYgfudsA7IT8Mvn7Aj12AN9rCz14zvFsC7yD9ePAE3mGjjoFfqlpXndsXeDtnDZzRgae+YgXwfluOCqyNqy9RgOcLApyvBX7+" 
		Frame1 .= "sNgYHhmA/zcGjrdw6+7eAmeBgDXv0YB/OAOvbAlwMg9c8R5ua5wG+DVZ0GcY4Pog6xfAcTMA/1bAGYABbPEFMIteTzdwDuAOmNmz" 
		Frame1 .= "JGdBgBMAsw3AMwHY5QtgFhGAcwBfBTgjAwshAMyiAMAGXCFuRwf+AfAMsMK9aWABYA5tAFzy3gHMIzdw7gCezNB3cb9fATj2ApJ6" 
		Frame1 .= "PdcCJwZgFYB5ZBjAfsCm4+d7+XkHMIPcwLkV2MB7K4UBzKN1wCbe+13z3gHMo1XAZt5SGCOYSWuAJ+P31vt15HsKYA4FBRai/q23" 
		Frame1 .= "8hyAOeQEnvXNTD9IWRGXpyI9DfDz2MDTNVsMXBHXfwDMINMAXgXcEAOYRxsAJ6UvgHm0EbDeAwOYQ07gfNkI1sDneS26D3ywN5M2" 
		Frame1 .= "ARZpdZwF4PhtAVz9RMfxgX8AbEkbnxw49uKRcgHnS4F1AI6fF3AGYAADmFcAtnQB4BzAAAYw5wBsCcAA5t7raQXOAQxgAHMOwLau" 
		Frame1 .= "BpwB+BzvNbTAOYABDGDWAdgWgAHMPQDbAvBlgJ8HBTY/SwJwsx2uBZwB+FrAKYDZZ94FA7jZDgAGMO8AbO3awCmA+QdgewAGMO9e" 
		Frame1 .= "5qU0AmcABjCAmbUCOAVw7KUjBGB7AAYw7zyAMwADGMDcWg6cAvgAKzTzOgeA2w0BYABzDsCOAAxg1gHY0YWADb4AZh+AHQEYwKwD" 
		Frame1 .= "sCMAA5h1AHZkBY69cIQWA6cABjCA4wdgRwAGMOsA7AjAJwf+uQxwBuCDAptXywGcAhjAAGYQgF0dG3huFzwFzgB8JeAUwAAGMIMA" 
		Frame1 .= "7AzAAGYcgJ0BGMCMIwObfQHMPQA7uyJwCmAAA5hFTuAbgE8OfLsB+OTANwCfHPg2Ak4BfDJgRQzgcwPfAHxI4NcTwK4ODzyzWkPg" 
		Frame1 .= "DMAABjC/FgGnFwV+nhg4AzCAAcywJcApgE8HnAEYwADmGIDdXQA4AzCAAcyyBcCpF7AEcNRIwNliYCkBHLdtgSWAIzf/bmEAYCkB" 
		Frame1 .= "HLstgSWA40cCtvkCmHcbAksAM2g7YAlgDs0fRK8ElgBm0VbAEsA88gdOKcASwEwCMCEA23wBHDUKcOYLLAHMJm/gFMAABjCbLK9z" 
		Frame1 .= "LAeWAGYTgCkdHHh2tWpgu+8UWAKYT1sC490kBm0IjHeTOOQLnLqBG18Ac2gzYLxdyKPwwI0vgFm0ETDeD+ZScGAJYFZtBoznwSyy" 
		Frame1 .= "vZC1AjgBMJN8gVMS8ODlLPzyWcw2A+75AjhiwYHHAzgBcNS2AB6+nAXgqNkOogMAJwCOXHDgZOoL4Ih5AqdewAmAo7clcALg+IUH" 
		Frame1 .= "Hu6KARy57YATAHNoM+AEwCzyA07JwAmAeQRgUgNfAF8B+AVgAHMIwKQADGCmBQEevGwFYE5Z3y30ApYA5pgfcDo7RduFARwt6wzt" 
		Frame1 .= "AWwXBnC0ggJLALMrGLBVGMDRCgdsEwZwtLyAUwBfGdgiDOBoAZjWJYBTAF8bOAEwv2jAqdV3ACwBzKqgwAmA2UUEtgdgvr2sywfg" 
		Frame1 .= "dksAuBEGMKsATOuowPZdMIC7LXFy4LdifL+vC/w8ObC2fVOAEwDzigxc1oCOqQHMNk/gSnnk+wYw3/yAG+U07QazRu8DJwDm1ALg" 
		Frame1 .= "wXRdnQcw25YDvzvf99xvNvz3H4AjtwK41wzw378YwbGzv5C1Evj9BnDstgT+250FcKw2HcEAjh+AaQEYwDwDMC0AA5hnAKZlAn4B" 
		Frame1 .= "GMDRAzAtKzDnFXrZFw7AzYYAMIBZBmBaAAYwzwBMC8AAZpnjWVIL/Hn/Ux8q9UWdL0/1hU/1CWCuUYG//z7ff9/P5/sp1Oe3UOfr" 
		Frame1 .= "D31SAJhr5BH81bTFV37UH/VFXVLKhTpRZz5fAHONPIKlsixP5LcoP8RHfoSWlkXxATDXyCNYFIUavRq4HMOy5P5IPV2r06sD810j" 
		Frame1 .= "8ggu9HhVJ0pWKwvNKvT8rK1H++DiC2AuUYELKTWl+ijKWVlD632x0Fd+5Ph/EF0AmElUYDUr62GrJuqPJpaFli3UWTVbq/ND4G8h" 
		Frame1 .= "vgDmERn4q2dkNU2rL1+pL6kZW5TaYrIP1uoA5hEVWOiBKoWeobWxGrTaWxblXlmORrC6AYCZ5HGQpWEVph64QjsX2lvow2khRgdZ" 
		Frame1 .= "6hYA5hF5ihZCD2E9bBWoLKXVAFbaUl8zBBZXGcEHeCLseK+h90KHFtWzsv78lrO1Grn1KB6NYD2+AcwjKnB5CC00sR6+9Vk1rEU5" 
		Frame1 .= "X4+AxVWeJp0IWNaiRXmmnKFFRV1eMRrBQpwX+GUEZrtKVGC1W61k9TGWnqGr0Vwii/EINvx3OgAcKTJweTylYYtqLH9r3op9BDwZ" 
		Frame1 .= "wACOFRm4TM/IpXG595X1rD2Zog0BOFL0fbBsXDvddhADmOsqOResPYquh3A7Sdey9VUAjr18Mwvtvkk3RctatD7Ykg2uBgdw7OUz" 
		Frame1 .= "LTDpZh1wu+cVDWu3OwYwr3WiL1AL3E7IRYXbJQHMDNhnafpH0bK3722fCFcnAOayTr7L0gHXr0sOBm57DsA81sl/OYbPg3vjuD+e" 
		Frame1 .= "8TyYAfDCRRgAd0+D5WgYAzjyOi1+/P7TpP7+d/DluiOYg/C6xx5P0d2edxCAIwGvftjRUbTpGEt4HEVv0B6b0fzI0YHDbMDxQdY4" 
		Frame1 .= "rxc6Ihd660UEDrdRBsDSpHsc4C2KIBx2BSYjWE4na+oU/WfuAVYUG7hT3gU3+Lb6Y5qiJwOZChw533/YM/d71I3uwBvXWvuGv2Hw" 
		Frame1 .= "+kzRR20k26z90Lm+7eFwde3z4LlhTAA+snCDW67K5LWeGnlwj0Owtj26d5N6L0/2LzuBk8fRa9fE+I987l5LZfdeO8dBNAGYkP5G" 
		Frame1 .= "zXnZZLl5d1ZKwu0Jkb6JfUvMX6a4+ny/XS+HABZGMQKwDOWbkL7H6u1lUI3t57wcZARPNzUJOLCv81bdNjAfcJ7ycgzg0c3DPKj7" 
		Frame1 .= "RuKSxQYO85ikW43WPPrkuc/l4MC0450Ysdruu10OD0w74IlQ9xyx+dHhK1y+DrC4ZhsAJyx9AXz2hj89XF84/+X/Az6ZLfxADNnJ" 
		Frame1 .= "AAAAJXRFWHRkYXRlOmNyZWF0ZQAyMDIwLTAxLTI3VDIzOjIyOjU3KzAwOjAwf8F/bQAAACV0RVh0ZGF0ZTptb2RpZnkAMjAyMC0w" 
		Frame1 .= "MS0yN1QyMzoyMjo1NyswMDowMA6cx9EAAAAASUVORK5CYII=" 
		
		Frame2 .= "iVBORw0KGgoAAAANSUhEUgAAAeAAAAEOCAMAAABmRDRVAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAA" 
		Frame2 .= "dTAAAOpgAAA6mAAAF3CculE8AAAARVBMVEVscW9UWVkPDhQtNT5FTlCMg2rCl2fjuX+UbVGPJzBhHSgkFRsRERhrT0IVGSEWKTmG" 
		Frame2 .= "b1JENDBMWi1xdEEnQyEYMCv///9hAN42AAAAAWJLR0QWfNGoGQAAAAd0SU1FB+QBGxcXGYP4k7kAAAqhSURBVHja7d2Jgpo6GAVg" 
		Frame2 .= "BXQWc2Nr5f1f9SbILnv+Bck503HAcSTk6x8COu3p1M3ZJ2knrZLIJWvSblz/rnQmp36ybsa+4e+5XCaeOOvn8pb6W9NNLB99rjP+" 
		Frame2 .= "REs2+P4zJwDHB9ztbF1fNeDTJb3WmQO+7AU42wysxKsD/FL9eg89cNrz3QzcuX8aeFe+2QAQFfDbN74WZ9a31cergC86wHq+MsDX" 
		Frame2 .= "0ZpdpPzxwHK8p7c9GQJa6JtO+2Yd3PW+NfIlBDidGaHXAV8WAPe6XNZXGPjayRZgnxng+RKe8h0RnizgNcDCvpLA1362Ag8aLwZO" 
		Frame2 .= "tYFFfcWAv69XSuB34xXA074bgEf7zwP3Op3b94c5v7+DwPS+PkMNkAEeLeBZYBEFVmCfPvCQLwHwiDFfNgAP8N60kULy207tywcs" 
		Frame2 .= "bHzrim4C/mjfLnCZb15gUeTbSuA9FTBJJw/7sgOLMd8GfNcB30SA6Tu3SNtPsoDlnG+3fQLz9eYosC9c2QKWgPbA2XLgd18TACyk" 
		Frame2 .= "uALYG+sBc9i3gS+hwNcv3V5YnwHg/3YJvCE1cEYE7Hk/rhc+B/h7bQO2ACfjwC9e7V5YnQMDX2mAy0nWL4CZsx749wWcAXgRsHZL" 
		Frame2 .= "JYATAOslHPgC4Ap4lyM0P3ACYL0AeFsAPOcbC7B2Q8OBLwCOBThbDGyMAbBI1vuuBh7ANeb06cBfAB4BdrgnD2wALBEF4IL3fEjg" 
		Frame2 .= "Q0yi+8CXGeC3EfpszmcAS4UdOBkAdokGWLmVG3zXAQ/Nn8/F5xnAAgkHvkwCD/CeCmEAy4QXeIj3fPa8ZwDLhBV4mLcQRgULhRP4" 
		Frame2 .= "rX5PrV9HPqcAlogosDHlb70VSwCWSDDwqG829EbKF3Fxa9LDAF8B3CEu/8QBrN3K1e/X+QoDrogBLJMtBRwInBS+AJaJErA/Ah8R" 
		Frame2 .= "+BiH4A7wZVsFe+DjXIsGcO8gnL7mWQDmjwbw6x0dnw/89RnAW3YsELhCBjB7NhVwG/iyFdgHwOyhBc4ADODYgJWbCOCQRAB8AXAb" 
		Frame2 .= "eHcj9LZJNICrfgAwgJWbCOCQHB/4AuB9A2+bYwG46gcAA1i3hbTAGYAPBnwB8O6Bt+0YgF/9sHfgjQUM4Kof5oF1GwjgsAAYwLoN" 
		Frame2 .= "BHBYrj3hvR2CARyYyIAzAMcFnAJYH3jjjgH41Q8ABrBmto7QAK76IWrgFMAA/nDgr90Db90vAJcdERNwBuDd+QI4MDEDpwAGMIBZ" 
		Frame2 .= "A+DgxAScARjAABYNK3AKYG3g7b4ArjsCwABWC4DDs3Pg7fsF4LIjdgwcUMAArjsiHuAB3+iArwAGsFwATJA5YM22AZggAAawWgBM" 
		Frame2 .= "kGiBUwADGMCsCfEFcN0RAAawUgBMEQAfHPgrGuAMwDEBpwAGcAzAmi0DMEliAc4AvDPg76DNzwCnAAYwgHkTNEIDuOkJAANYJQCm" 
		Frame2 .= "CYABrBNa4GFfACs2DMA0iRE4BbA+cNhpMICbnpgCVmwXEfAJwAcHPp0AfHDgE4APDnzqAacA3gdw0G61gR0xgI8NfAIwgAEsGlrg" 
		Frame2 .= "DMA7Aw6cYwG46YnogNNIga8HBs4ADGAAi4YPOAXw4YAzAAMYwLIJPA0GcNMTuwQOLeAOcAZgAANYNnzA6SpgC2CeUAJnm4GtBTBT" 
		Frame2 .= "dgFsAcyWHQBbC2C+6ANbAHOGEHjKF8BaUQe2AGaNNrAFMG+UgS2AmaMLbAHMHS7gdAmwBTB7AEwWAE/5ApgpoS8HN8DZWmAbE7DW" 
		Frame2 .= "HgUX8AhwCmAAA1ggisAWwAIBMF0ODjzt+w5sASwRfeBIXk2KFjiWV5OOBZzOA1e+RwXey5UOZeDjvlwYO3DlC2DmBF+pDAE+8uvB" 
		Frame2 .= "kQNbAAtFGfi458E7AQ4/BAcAJwBmDw9wugi4cznrcL98BmDb9QUwS5SA+wWcAJgpesDdy1kAZsougBMAs0XtGPzmC2CWsACnq4AT" 
		Frame2 .= "ADNGHzgBMGfCL2RtA+4eigHMFm3gBMCsIRihg4ATAPOGBThdDJwAmDkApkzHF8AAFgiAKQNgAEsHwJSJHLhz2QrAMpEGtgCWDQdw" 
		Frame2 .= "OjpETwsDmCGywNPCAGaIArAFsGCEgSeFjwb8X4zAU8IAZggDcArgfQGH79Ya4AlhADMEwJSJAjgFcNzACYAlQwmcTvp2gC2AhaIA" 
		Frame2 .= "nABYMKTA0wGwRgBMGQDXwlEAfwMYwNwBMGWODnx3jPd7vMDX/QFTvNZQA3vb+xLgBMBSIQYuUoH2qQGsEBbgl3LP9w5gjSZxAFfK" 
		Frame2 .= "adoUs0dvAycAlgkbcGe4fi0DWCHcwPfG9z72mw1//gCYLezArYwA//2LCubLDoDvdwDzRR/4b7N4POBvAB97kgXgqIA1dgnAlAEw" 
		Frame2 .= "gKVD8WISgOuOADCAhQNgygAYwMIhmWMBuO4IAMcGrH2lA8CkATCAhQNg0gAYwMKhBX7c/7kPF/fFLRe3fuXx+gSwfItogZ//Hs9/" 
		Frame2 .= "z8fj+cjd5zN3y+WHv8kBLN8i4gp+etr8aR/uj/vi1pxy7m7cwuMJYPkWEVewdZbFjX3mxYd52Ifx0jbPHwCWbxFxBZs8d9XrgYsa" 
		Frame2 .= "tgX3w/rh2t0CWL5FxBWc+3p1N07WKxvPavz47K17x+D8CWD+0ALn1npK95EXo7KH9sdi4+982P5/EJ1HByy/T7TAblT2ZesG6ocn" 
		Frame2 .= "trmXzd2iG63dchf4mZtnBMDKJUzyamED/PQjshum3Zen9WtuxDaFtnk7Bnt1AHOHFtj4QrXGj9De2BWt97Z5cVS2vQp2DwAwe2iB" 
		Frame2 .= "ny9Yh+kL13jn3HsbP502pjfJco8AMHeIh2hjfAn7snWgtpB2Bey0rb+nC2xQwQIhruBC1I/K/vNZjNaucssq7lWwr28AM4dmEt06" 
		Frame2 .= "TXLDrvHEvnzLRVfWphive8AmjtOkQwHbUjQvFooR2ryoizt6FWzMcYG/jwnsDqsvWT/H8iP0q5oLZNOv4IF/pwPA1KEGLuZTHjZ/" 
		Frame2 .= "1fKz5H2x94DfChjA5KEGLuJH5MK4OPractR+G6IHckhgVWHyY7CtXBvduogB/PHAeVnC9SBdypZ3AfjTgb1kKVpOtmyF68EBfADg" 
		Frame2 .= "+shrKtbmcAzgjweuB+T8hdvEAvgIwNXIbNp1nFc3kQJ/6wFTbbIBLq9Ldgq3XgKwJDDl1rrnwa06btdztOfBCsDUW+oAN6fBtlfG" 
		Frame2 .= "ABYRZthI+zSpffztfEEFiwCzbKE/RDdH3k4AzA3M9fy9WfTQHMusmEUzhLVbywxs9lvyIFw/OUcH9idZ/ay60KGcQNQBYQng65W1" 
		Frame2 .= "UzrAdkj3c4BJIwTMzDtQwfZ9sF46RP+MbSAg+xFm0e3yMvTVz9AQ/VbIS4GVs/Yv9sjP3cr88pawe0apjqlf8B8o3jVD9KemJ1vt" 
		Frame2 .= "/e3GVsJXQd2f1nnwWBkvAP5k4Qq32JXutR4GYGHcH+9761y76l/LWnChI7l9euo96f8lpxV2z6KxdzOT6AXAC+KfqFq2VSYe3ixa" 
		Frame2 .= "u+DxC7LoSd57gg54fJajvE4BbAbFFgBbKt9k0XMM7T+F8J4818+it3X1ImBi39lHNX3wXsYBuqMT2F2sawD3Hk6z0fkHmdFsFTYf" 
		Frame2 .= "EG1gmm0uelRvz3uD2SrZ63UHg++ydXLgZfMdjcz2y6a63Ynj6Do98LIJj0Kac8TqrcMD6zOysz+/u/V4gE2cYQBOdukL4KOn++7h" 
		Frame2 .= "cuX46/8DLNYuISikoGoAAAAldEVYdGRhdGU6Y3JlYXRlADIwMjAtMDEtMjdUMjM6MjI6NTcrMDA6MDB/wX9tAAAAJXRFWHRkYXRl" 
		Frame2 .= "Om1vZGlmeQAyMDIwLTAxLTI3VDIzOjIyOjU3KzAwOjAwDpzH0QAAAABJRU5ErkJggg==" 
		
		Frame3 .= "iVBORw0KGgoAAAANSUhEUgAAAeAAAAEOCAMAAABmRDRVAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAA" 
		Frame3 .= "dTAAAOpgAAA6mAAAF3CculE8AAAARVBMVEVscW9UWVkPDhQtNT5FTlCMg2rCl2fjuX+PJzBhHSgkFRuUbVERERhrT0IVGSEWKTmG" 
		Frame3 .= "b1JENDBMWi1xdEEnQyEYMCv///+En3S/AAAAAWJLR0QWfNGoGQAAAAd0SU1FB+QBGxcXGYP4k7kAAAudSURBVHja7d0NY5sgEAbg" 
		Frame3 .= "RI1ZE0a2TP//Xx34DaKiohz4Xtc0ptkReXoHSdvtdlPjLiMZRtpGcl5kfQwfnH5TuhA3PTI1pj4hb3k8ZhJnejxG0X1q/iE29753" 
		Frame3 .= "MZ3IZsDx37kBuPtELuLZRcTA6mT79T0FOO/jqYcV8IMKcLYZ2BPv8cC5Gs+pOAg41Xw3Ayu3zwOT8s0MQK6AddxZYEV52Xcwx6uA" 
		Frame3 .= "H36A/fkeB5wb47kUUQKfx3sbnYkJyNI3nfHN843AFfGyrzVwutCh1wE/LIC1KT/X9yTgPN8BXMWS73COVwAvZJoeVL15BfDJvucA" 
		Frame3 .= "7/cdEu8ETn0Dn+obEHBL/NgNPO+7AXhy/iSwNulH+/46OH5+xsC5I+Dn0+IBnAM8WcCLwKcoHAos4yhgK+IDYwOwgfflG2lP/Azj" 
		Frame3 .= "AGDPxC9VdBNw0L4qcB1ufT0Tv1YCUyrgbbOtzfsZwD6RXwbfdcCvU4D3Yk7EEO9YYF/orxdN4INA54DfIs4FPgNcAmf2wGNftgP4" 
		Frame3 .= "JMUVwNI4Pw74fb79EPixFzh/Hvwl7jwMwL+PA863A2+IDjhzBCx5QwN+rgPeO9j76CY/jC3AyTRwzQvgubHep6zk3XBugJtN1g+A" 
		Frame3 .= "l8c6GfinBs4AfA5wTh84uQLwYXusztcX8APARwLn9IETAO8a6dwODeB6Fs4CPr2A1wMnAN41kG/gB4CXgPcNRAc4swZmjAHYdhzq" 
		Frame3 .= "wAZcxm6hAz8BPAEscG8SmAHYbpS3i6+TVWPuBK547wC2HeXsAtaBHwvAow59Z/d7hMDHbKLpAycGYBGXAt41yOkdeh2waf98r97v" 
		Frame3 .= "ALYaxDfwYxbYwHurhAFsO8jpHXoFsIn3fpe8dwBbjnF+AdsDm3krYVSw7RiEgUf1exv8OvI9BbDVGCEBM9b81lt17TrAu8bwDTzp" 
		Frame3 .= "m5l+kLImri5ZGg1wfhRw7mWPtQO4Jm7+ANhmCA8FvAu4JY4P+IAlOA8SOKl8AWw5gocO7QBYrsAAthnBRwErwI9tFSyB43kt+iBg" 
		Frame3 .= "Xx16NzBL630WgJcHCBG4/omO8IGftsD78wcG3CID2DL9yb5D4MdWYBkAXkzvpUNPAmcABjCAV6UHsM84Ftif7wD4AeBl4B3ZAew1" 
		Frame3 .= "AAzgfcDv3Uk2Dg3geh6OBM4pAD8ADGAAb07+3p1k64kBuJ6H84BPPjEzcAZgd8A+O3QH/AAwgAEM4MiBt6f29DIHgLt5OBbYWwED" 
		Frame3 .= "uJ0HAF8FOHcM7LdDA7idh2sBZ9cGdrqJ9tuhLYFTAAMYwNOJAew9rIA3J/a3BAO4nYdLA6cADrVDA7ibCAADeGtajx3aDJwBGMAA" 
		Frame3 .= "ts7aJ/RxXhbAKYD3AXssYAB3E7EMvDUrgCnElYAzALsE9vkkCcD9RBwBnAcBnAI43D0WgLuJADCAtyUFMIk4ApiAL4C7iQAwgDfl" 
		Frame3 .= "pAds8AVwqEswgLuJcA+cq8CezgvAzUQAGMBbUnru0ADuJgLAlwGOaRO9DJwC2A2wr/MCcDMRzoFJFDCAu4kA8MWBt2UEMJUAcOTA" 
		Frame3 .= "T9fAWjJvpzUCzgB8JeAUwEHvsQDczwSAAbw6H0HgDMBOgIkswUvAKYABDODJdP47NID7mQAwgNdmAzChWADelM3/EgzgfiauAWz2" 
		Frame3 .= "BXCoSzCA+5lwCUxmCZ4HTgEMYABPJ6MEfAPwgcA+T6sFvt0AHDnwDcCugOl0aAX4pgGnAHYD7PW0hsCCGMBxA98ADGAAW+aiCJwB" 
		Frame3 .= "2AGwlsjvaQG4nYlZ4C2pqAOnFwWOqkNrwBmAAQxgy1TUgVMAR7DHUoEzAAMYwJaZaHRoAPczET9wBmAAA9g2E40leBo4XQXMAawn" 
		Frame3 .= "ogecbQbmHMCjRBEBcwAbEkUDzDmATYneJHz3A3MAmxORA57zBfD6RJEAcwCbExFZgvcCcwBPJIoDmAN4Kk8UwBzAk3mILMFTwKkN" 
		Frame3 .= "MAfwdB4AUwu3wFQ69B5gDuDpPPSAs7XAHMAzeah06AngFMAABvBcnvCBOYDn8gCYXEQOPO87BuYAns3zJuK7GxjfTTLniQUY302a" 
		Frame3 .= "SEMaOF0Gbn0BbE5DZgneB4xvF06lCR249QXwRJoogPH94Ok0ZJbgbcAcwAtpIgHG8+CJNHQ69A7gBMCTWWgDp1bAystZ+OUzNUsk" 
		Frame3 .= "wANfACtZAgfWCzgBsJaFzh5rK7D6chaAtSxRAScAHmUJHDgZ+wJYyUIaOF0FnADYkCUe4OQqwJanRG4TvQ1YXYoBrCeJBjgBsDFJ" 
		Frame3 .= "LMAJgM1JCC3BY+DUGjgB8EQSAFOMjnLPP+kPYLoBYADbJgEwxXAHTGkTDeB+JhwA03uWZA2svGwF4NkcwQJzAFvloLQEj4DTyRY9" 
		Frame3 .= "LwzgPkegwPPCAO5zhAzMAbycI1TgWWEAdzlI7bFWAc8JA7jLQRo4BfAOYIIdeh3wjDCAnwCmHZcATgF8beAEwIspaO2xOuB01lcB" 
		Frame3 .= "5gCeSxE2cALgpRRUgecDwNYpAEw0ANwJA3guBYCJxn7gHMCUwxEwMd8e+CMYP5/rAueRA0vbjw1wAuDZFHSBq2hBdWoA26agDlwr" 
		Frame3 .= "a74fAMcC3CqnaV/MEn0InAB4JkMIwEq7rq8D2DZDQMCf3vcz9ZsNf/4AWMlA5n886x7VDPAgJoD//o2xgjcKxwj8+QBYzRAX8N/+" 
		Frame3 .= "KoBpbqJ3VjCA9QwAphoABrBNBgBTDTfA5PZYAO4mYi8wzU00gLuJADCAlxMAmGwAGMAWCchtogHcTQSAAbyYgF6HBnA3EQPgN4AB" 
		Frame3 .= "bEwAYLoRO/D380+8iRAfxPXqUh5863cAhw5c/PsW/4rvt/iW4r0oxfXmTV6UAA4dWEKW37LgX/FHfBBHQrkUF+LKtwBw6MAFF5bV" 
		Frame3 .= "BS/K6o19+ZdJaV6WXwCHDvxlZSmqVwJXNcwr7i+X7VpcAnhRjTiwhGXyQshKZSZZmezP0lpbg8sCwMYEhIFLziWleCurriyh5VrM" 
		Frame3 .= "5I1frv8H0SWADQnelnc99bwaYNGVZdmKRv2VxLyUsqW4Krq1uK4CFyUrADxOQBq4kB1ZtGnxoeDySHRsVmmz0Ros1QE8TkAZmMlC" 
		Frame3 .= "5Ux2aGksilZ687JalblWweIOADYkoAxc1LACUxYuk86l9GZyO82YtskS9wDwOAHBPVbfohmTJSzLVoDySloUsNDm8hYVmKGCjQko" 
		Frame3 .= "AxeVqOzK8r2ourWo3KaKtQqW9Q3gcQLKwNUWmkliWb7NVVHWrOrXGjDD0yRjAsrAvBEtqytVh2Y1dXWDVsGMxQv8fm97rZI4sFhW" 
		Frame3 .= "a1m5x5Iduq7mCpnpFWz4dzouAJwvJaC4iR48TWLV3kq25KqWi4a3ZteARwUMYPLAVciOXBlXqy9vuvaoRRsCwMSBebO/Yk3ZdtVc" 
		Frame3 .= "HwF4BbDvU1EfVruLbkq4a9KNbHMTgEMHlpKNaLPZ4i2uBL8a8AZh+sDdysta1n45BnDwwF1DLmvcPjiAYwBuOzMb1nHZXgB4GZjk" 
		Frame3 .= "JnoA3LwuqRRudw3A4QMrOyy1nq/3PHg9MNGnwSpw/zSYa2UMYHtg32eiPa7B06Th+qt8uGAF/14rHACwtvIqAeAYgBVc9cAW+IA4" 
		Frame3 .= "YxYMw64GdrIEHzGB+iZLj1UvdHgOh3PpDtj3pCjA3KQbDrDD2ADs+yFPxKiC+bhZ27boX1MD7AhP07Ie2BWG47n6ZWrRo0K2BfYc" 
		Frame3 .= "W+dS+9RLxjrhfBrY96TI6L7hbyjeNS061FBkm8lYDez7JOaiex48VcYWwCELt7jVqTSnvhKYuO9Lee1Kfy3L4oWO5BV6dGfSflGv" 
		Frame3 .= "ARYF7Pvxz8fCJtoC2CJkovY6b2Pm7v1Vzi3ubxFWSdozXwm8sIshfuwCmBnFLIC5K9/EKkd3/vbCuQ7s22v1sZMKHk+1FbBj38V7" 
		Frame3 .= "9XPA7YDl7TMb1CCOfQBrd3cz6PKd1C/tReFaN/jwDexmTKt7aWfOZ4Hz3HtzdXPsHNhuv+MjTPNgFh7WLhGnzcfuge02PB6if47Y" 
		Frame3 .= "/uhwe6wSjz8f8vF1gNk14wDghKQvgGMP9aeHm4P4j/8DUVAKzauTLGIAAAAldEVYdGRhdGU6Y3JlYXRlADIwMjAtMDEtMjdUMjM6" 
		Frame3 .= "MjI6NTcrMDA6MDB/wX9tAAAAJXRFWHRkYXRlOm1vZGlmeQAyMDIwLTAxLTI3VDIzOjIyOjU3KzAwOjAwDpzH0QAAAABJRU5ErkJg" 
		Frame3 .= "gg==" 
		
		Frame4 .= "iVBORw0KGgoAAAANSUhEUgAAAeAAAAEOCAMAAABmRDRVAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAA" 
		Frame4 .= "dTAAAOpgAAA6mAAAF3CculE8AAAAQlBMVEVscW9UWVkPDhQtNT5FTlDjuX+UbVGMg2rCl2ePJzBhHSgkFRsRERgVGSEWKTmGb1JE" 
		Frame4 .= "NDBMWi1xdEEnQyEYMCv///82TUBhAAAAAWJLR0QV5dj5owAAAAd0SU1FB+QBGxcXGYP4k7kAAAo3SURBVHja7d2BYqI4FEZhBRSn" 
		Frame4 .= "Tdxx4P2fdRNAJQFCSFDuTf7TqdWOtcRvElDb3dPJ7KwrxpXPiu9VvRtvnP2pcqWTXWU2/ouL1bV23HBlV096/ZV7E4drn18t35DP" 
		Frame4 .= "N5x+zSlv4MtiKQObd/axvh8Cvqy2CbimAlwFAx/E+wHgddse2HXD+wGXlm8wsPF5NzAp3+o0FY4A9tTdCFy7gH2msMP3O8DH+e4J" 
		Frame4 .= "7K+bG/D3eE+TkcztQz19DeDbJt5NwHUMcLmyQm8Drj2Arbv8u76fAr7dPgdcrwCvT2GX74KwcwJvAf6y72eAbzfCwOXRwF/1/QTw" 
		Frame4 .= "LcTXH7iOBnb7BgAv3n8a2LrTP+3758P93G6BwDttwHeAFyfwKvBXFD7X7XY08EcLAJ7h/T16GOGF+/IA/vNrigYBJ+GbKvAg7A9M" 
		Frame4 .= "aQJvNrEa+25foTd+1aHA9o55E/DvV4BjMafdLjG+m4GPQv/9pQm8P+gE+HY48DfANXDlDzz1FRHAn1fkBexoF+A6Flitet8kiosX" 
		Frame4 .= "cEAv4GonYM1LesRmcb6JAhfLwD0v6REbRU7gHvjoQbhHuA/wcJD1A2Bq3X564ArAAHb4JgEc8PUMgWsA+0f/GCsAuEgIeJcVmvZo" 
		Frame4 .= "AQxgE7gA8DuGwHVOwLG+vIErb2AhBICpthV4BleIU6bADHxjgRXuSQMLABMtFrjjPfMEvmUIXK8AT1boszif0wAOuIH0gIsZYBWA" 
		Frame4 .= "6bYJeO74+dy9nwFMNBO4dgLP8J46YZ7A0bvgxIDneM9nzXsGMN28ged5O2HMYML5Ak/m72n068jnkj9wwA1cg7/ym6MMBRZi+K23" 
		Frame4 .= "7hyAqWYAL/pWcz9I2RN3p6IEMNHCgXvi4Q9D4Dx2wVHAT2IAEy4OuOh8AUy4eGC9B84SmMUu2ACuw2awBmb4XDSAvYBF2R9nAZho" 
		Frame4 .= "kcD9T3QAmG6xwE9kdsB7HWNRH+sIuA4F1gGYaEvAFYDXAjDpAAzglbgB1wDeFoBJB2AAu7uG/9P46jgzBb5lB1xnDRxwCwAmHYAB" 
		Frame4 .= "vBJv4ArAazEDrgG8MR6PkgAM4ByAQ24BwKTLZRcMYAAnCZzNQTSA8wSuALxWWsAlgO0ATDoAA3glAJMOwKZv4sAhtwBg0gEYwCux" 
		Frame4 .= "Bq4AvBqASRcPHPO1Xx2pB3AJ4ElXAJMOwAB2xxq4Sh54v+c56A8VwNkDlwCeBmDSARjAKwGYdAAG8EoAJt1+T0XTH+oUeMYXwHYA" 
		Frame4 .= "Jh2AAbwSl1cLAQxgAM8FYNLFA3PZBa8DlwCeic0xFoABDOCZAEw7AAPYHYBplzVwBeD10gEuATwXgEl3AzCA3TEGrgDsUTLAJYBn" 
		Frame4 .= "AzDpAAzglQBMOgADeCUAky5n4HlfAFsBmHQAtn0BbAVg0uUIfALwlhgCn04A9o8l8AnA3vEEPlnAJYCXYgqsiAHsFVvgE4C9AjDp" 
		Frame4 .= "MgauAOwVgEkXDczH1wVcAngptsAVgL0CMO0AbPsC2IwrcAVgvwBMOwAD2B1T4ArAngGYdgC2fVeBJYCJNgKugoGlBDDV9gCWAKZb" 
		Frame4 .= "PLCUACZcNLAEMOnewC5fAJtlBCwBTLtIYAlg4sUBSwBTLwpY5g589EB8xjoPXPoASwDTD8AAXgKWAD56ID5jfQJXW4ElgKmPsxvr" 
		Frame4 .= "LHCZFfD2zQUw7QDsASwBDGCq5Qjs9p0CSwDnAZzCq0kAXgZO4tWk7IDLdeCnL0/g6AfCuQBzfbkQwGvAT18Aky8CmO/rwbHAjF4O" 
		Frame4 .= "DgOWAM4DmOvjYAD7ABcAJj/Oyyxw6QVsPJ3F7JfPAOwHPPIFMNVCgO0JXACYboHA5tNZAKZbPHABYMqF7YMnvgCm2hS43ARcAJh2" 
		Frame4 .= "kcAFgIkXBGzuigFMuSjggivwBcA+wAWA6TcBLr2BCwAfPQyfkQIYwAC2AvDRo1ofNoABvByAjx7V+rABbAEbT1sBOE1gCeA+zsDl" 
		Frame4 .= "4hLtFgYw0fyB3cIAJtpGYAngS7LATmFmwHHCqQK7hAFMNAu4BLBHyQI7hAFMNABnBVwC2Kd0gQsA6zgCl05fA1gCOF3gAsAXpsDu" 
		Frame4 .= "ADwOwEePymPcEcDX0H8Yhwx0I3CRCPAFwABeCsAsBp4b8F0x3u+ZAm/bYJbA2vbuA1wAmClw1xPUpgbwKNbAvbLlewfwOM7AT+Wy" 
		Frame4 .= "fE9mjT4GLgDMHNhYrvvz6QFHHEanAnx/+96XfrPhv/8ATDsX8KgF4L9/E5nBm7Y4I+D7HcDEiwL++z4LYKLFzWAAky9f4PCjLABz" 
		Frame4 .= "GDiAAbwUgDkMHMB5AW/ZZABzGPglfAoDmMPALwAG8EIA5jDwC4ABvBCAOQz8AmAALwRgDgPvBp8R8OP+T72p1Ad1vjvVFx79e/rA" 
		Frame4 .= "G7aZJXDz79H8ax6P5tGq96ZV54c3fdICeBRLYA3ZPtpGPtQf9UFdUsqtOlFnHg2AR7EEbqSy7E5k03Zv4iEfQkvLtn0AeBRL4Ido" 
		Frame4 .= "WzV7NXA3h2XH/ZB6uVanAB7FEljDCn2iZLWy0KxCr8/a2toHtw2AuQG3UmpK9dZ2q7KG1vtioT/5kPb/ILpND9h/o1kCq1VZT1u1" 
		Frame4 .= "UD80sWy1bKvOqtVanTeBm1Y0KQAHTmGewI1ekdUyrT40Ul9SK7botMVkH6zVAcwLWOiJKoVeobWxmrTaW7bdXllaM1hdAcDMgJse" 
		Frame4 .= "VmHqiSu0c6u9hT6cFsI6yFLXADAvYCmEnsJ62ipQ2UmrCay0pf6MCSzynsEs/ztZTSeqV2X93nSrtZq5wyy2ZrCe30kAB77cwBG4" 
		Frame4 .= "O4QWmlhP3+GsmtaiW68tYJHIw6ToNfrozfcZ4WiJFv2OV+g/jeyMuyOv6QwWAsDMgNVutZfVx1h6he5nc4cs7Bk889/pADDR3g+T" 
		Frame4 .= "RHdspZfkbi43A2/PbgFPJjCAqfYC7tIrcmfc7X3lsGpPluiZAEy09z5YPl3fuq9JnCxwmDCnB8Kvo+hhCr8W6UF2+BSAx3EE1pKD" 
		Frame4 .= "6HCwJZ+4GhzA45gCv/a84sn63h0DeBxL4NeC3Pa472TKwEHPZbEEfq7MYjyP2+dJHsC+280TeHhe0pi4r3MAHscT2DjCMudzuo+D" 
		Frame4 .= "L0FrNFvg98NgaU1jAI9jCmzsf40P2cxgzw1nCmzteY0SBg6YwlyBDVzzgi/wB/rCfUAH+BN3oH2QZbfpiY6DC7svPwx89J1iAMs5" 
		Frame4 .= "XT7AgW0Vvh69wZuazGA5Xax9l+g/S98gom/cB2SAP3Bf/ZlboicT2Rf44ELvy59PAh99p+heL/jPTN4tSzTXfrYJX4/e3s29Hgcv" 
		Frame4 .= "TWMPYM7Co1U6SeDf96tJo6cnx5dXgbUw77YAH72t21s5iPYA9kjf0PO8fOa4+vuslB7X98h9I97CV/dyx/HyHsBiVswDWO7lW6zc" 
		Frame4 .= "hj/w0R67X95lBk/vai/gnX1dV/CfwY4DUpaXjwC2rr7PN127ipfwVSTX0cD7fE+va20EPnxx3efy7sDFAcB+CbFKjIMsf+GjOWe2" 
		Frame4 .= "Sw9/Bfj5kxHmY0rOl/MBfv+jxj54B+GjOV3Ay84AZpz508PDBWlCX+f+nvfl/wEyi6zPu4b3pAAAACV0RVh0ZGF0ZTpjcmVhdGUA" 
		Frame4 .= "MjAyMC0wMS0yN1QyMzoyMjo1NyswMDowMH/Bf20AAAAldEVYdGRhdGU6bW9kaWZ5ADIwMjAtMDEtMjdUMjM6MjI6NTcrMDA6MDAO" 
		Frame4 .= "nMfRAAAAAElFTkSuQmCC" 
		
		Frame5 .= "iVBORw0KGgoAAAANSUhEUgAAAeAAAAEOCAMAAABmRDRVAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAA" 
		Frame5 .= "dTAAAOpgAAA6mAAAF3CculE8AAAARVBMVEVscW9UWVkPDhQtNT5FTlDjuX+Mg2rCl2eUbVGPJzBhHSgkFRsRERhrT0IVGSEWKTmG" 
		Frame5 .= "b1JENDBMWi1xdEEnQyEYMCv///+MRST1AAAAAWJLR0QWfNGoGQAAAAd0SU1FB+QBGxcXGYP4k7kAAAuJSURBVHja7d0NY5sqFAbg" 
		Frame5 .= "xI+4tVy6ZfH//9ULxi8QEcTAQd+3a6o2MTk8O2iSdrvd1NxlinnKIUW8VFPmD67bUNfjermRm55Kzdo35JbHw7LjSs9jkfFb9ofY" 
		Frame5 .= "X/s+Zn1HLne4vM0tM+C6BnAwsDrYaX2VB1h3qaIA33yAH1SAq93AiXjnD7CuowLbdnwccKn57gZWttuBSflOD7A5HPh2FPDDBuzS" 
		Frame5 .= "whbfOMDpfMcH2AzAFYAPB47He1tUovvW07Yt39LuexjwIwS43Jih/YAfDsDakMf1XQNuZg1MDfixAbzdwjbfFWFrA/sAR/ZdAZ58" 
		Frame5 .= "61/NbKVP1sBlauCovmbgOakJeE06CvAjGNjuuwN4pcg3sDbon/b97ZDGGXjIdNuvLzvw15fLIwhIHODVBt4Edlb4XJpmY4Zepmkm" 
		Frame5 .= "YBkz8Pt7aYsLyw5gA+932iIa/wauu9t0t/6aR5X9yh/497cquguYgq8v8FtY5mszqY3C8u0JTKmB51IK8LbvBLyNPLuzgCQF1g/M" 
		Frame5 .= "XsDfUYA3pKb1PcBG5vm3QnUTon9/0wR2HaOdDWwC/iXS48rFCMAxwCVw5Q689GUBwOFDsgAIBJbG/dcEwJ+wnwM/QoGbOvZQfAD4" 
		Frame5 .= "P5LAOzICVwcBS97IQ9GYgP1u6gIct6ijsge4WAd+88YdCwMAgKcKjwHuT7K+SAA3rjP0JYC/3sBV9sCzDQCeVegPXNACNs/QAB4q" 
		Frame5 .= "1IEfmQE3ZmDfWwPY7pseeLbFvYENwgCmBdwAeKNAX+AiC2D/218F+JEX8MoRGMBTgavAlTMwYywRcLPSwACeCvQENuAydqME7Phe" 
		Frame5 .= "/2IPW8BRWQ4cojBggXuTwCwJsHH0vRoYwFvAHe89NfB8I4DVAlXgxwbwYoa+s/s9FbBx8P0OwQBWgQsDsAglYD9fACvApvPne/d5" 
		Frame5 .= "TwBsHnsAawUqwA8rsIH31glnDFwDeAA28d7vkvdOCNjzEAzgEdjM2wmn6WDz0ANYr88ReNG/t9mvI99LMsC+vgBeA2as/623bik+" 
		Frame5 .= "cANgt/rmwKu+lekHKd/E3SUrEwIrm4OBGwW4uTDwm7j/A2CqCQEeiFMAW2ZoACv1BQEXnS8x4N07ArARWB6BUwIrmwG8qG8G/NjX" 
		Frame5 .= "wRI4+mvRAHatLxCYle/zrMjADYBd6wsDfv9ExxWAY6IcOlKBwAMyDWDvFyrrtVc6zgj82AssExfY1sAAVstbAa6yBQ7YF4CJA++Z" 
		Frame5 .= "oQFMELgBsHt5I/AjS2B1O4CX5Z0JeM85FoDpATcA9igPwBcBfuQP3ADYUN7ZgIP2BmAA55YV4CoTYGX7rhl6IXxS4Ec+wNZzrMD9" 
		Frame5 .= "ARjAmQXAAAYwgGMCW30BvKjuXMChOxyF/zvJj2QB+JrAVabAwTu8KnAJ4HgkBw9XzsDqNwBsrA7AAM4DeO85FoDl/2xLEljdvreB" 
		Frame5 .= "AUwL+PAZ2g04Gsjh4wXgCwJXAAYwgPOIC3CZA/Duk2gAZwN8wC4BDODMYgKuCAMffwgGMIBPDlzmALz/HAvAAAZwCmB1e8AMDWAA" 
		Frame5 .= "AxjAVAPg6wEbfMkDh5xjARjAAI4F/IkZGsAABjCAqSYv4AbA3sVtAZcABnACYO0bAF4tDsAApg8c9DQYwAAG8NmBY3F8YMgWwBWA" 
		Frame5 .= "rwRc0gTWtgedYwGYDPBnTqIBDOAzAVcAvhJwCWAApwcOO4kGMIABDGCqATCAAXwmYLMvNWBtO4AtxQH4wsAlLeAPPQ0GMIBPAHwD" 
		Frame5 .= "8MmBbzcAnxz4litw4DnWdYBvGnAJ4JMBC2IAnxv4BmAAAzinaMAVgAEM4JxiAS7JAmvbDwZuRuDmdMAVgAEM4KyyDlwC+HTAFYAB" 
		Frame5 .= "DOC8AuALAVcABjCAM8sqcOkFzAFMNDPgajcw5wCmmiOAOYDpJhyY88TAv0IFAGwD5gAmnQnY5ksLWNsMYGtxgcAcwLQTCMwBTDxh" 
		Frame5 .= "wBzA1BMEzAFMPivApQswBzD9ABjAa8AcwBlkBK58gTkl4EP2eyHgEsAABnAW2Q3MAZxFAHwRYLvvEpgDOI+EAhN5N+mQ/QJ4CUzl" 
		Frame5 .= "3aQjdnsd4HIbePAFMPUEAad5u1DfDGBrdbuAB18Ak08AcKr3g/XNALZWtweYAzibBAGneR6sbwawtbrdwAWAc4gBuHQCVl7OivrL" 
		Frame5 .= "Z/pmAFurCwCe+SYEPvz9fgDrDVwAmG52AqsvZwGYbsKBCwLAR+wWwDPhhS+AqWYJXHoBFwCmnUDgAsDEswtYPRQDmHKCgAsAk08I" 
		Frame5 .= "cAFg+lkAl87ABYAzCICNP3N3vn/xHcAABnCOyR44+KVoAJMBrgG8ozpHYOVlq1MBNwAegDkNYHXvAN4oTwMuV6douzCAicYd2C4M" 
		Frame5 .= "YKLxBOYAziwewFZhABOND7BNGMBEowGXAL4ysEUYwEQD4EsBl7SBawD7l+cFXAA4twzApdVXAeYAziiewAWAM8sIbA+Ac03uwL+C" 
		Frame5 .= "xx/ACnAB4LxyCuDwXQKYBnANYO/6BuAfwfjzA2AzcL7CA7C0/XEBLgCcVSbgLgOoTg3gXKMDv5U13x8AR+L4wIipwINyWU7NLNHn" 
		Frame5 .= "wEVq4PnuAbxVnwFYma7fywDONRbgn8n3Z+03G/78ATDt2IBnWQH++xcdTDxhwD8/ACaeIOC/0yKAiSasg6MD1wD2rQ/AAD4zcANg" 
		Frame5 .= "AAMYwHQDYAADGMCRgWf7B/BWgQAGMCXgGlO0Z4E5AqODPQoEMIABDOB4wPWhwM1lgJ8//8SHiPgilrtLufJ8fwI41wzAr3/P17/X" 
		Frame5 .= "8/l6tuLz1Yrl/kNetADONWMHvyRt++JP8Ud8EWtCuRUXYuH5IgY83QGAtyocOpgLy+6Cv9rugz35k0lp3rbPkwI31wF+srYV3SuB" 
		Frame5 .= "ux7mHfeTy+laXAI414wd3Mp+FRdCViozycrk/CyttWNw+0oIXAPYq8QeuOVcUoqPtpuVJbQ8FjO58cn1/yC6BXAmGYDFrCzbVkzU" 
		Frame5 .= "T0nMWynbikUxW4tlFfjVsheA88gI/JIzspimxZcXl2tixmadNlscg6U6gPPIAMxko3ImZ2hpLJpWevO2OypzrYPFFUgB772/5kLA" 
		Frame5 .= "rzeswJSNy6RzK72ZPJ1mTDvJEtdIB1wD2KfGYYpmTLawbFsByjtp0cBCm8stKjBL2sEA9qpxfKFDispZWX6+utladG7fxVoHy/4G" 
		Frame5 .= "cB6ZniaJaZdJYtm+/aJoa9bN1xowS/o0CcBeNc6maPY+8DL558U74+7Ma9nBjJ0X+NcM+AT/jtJ4Fv1ib1l5jiVn6Hc3d8hM72DD" 
		Frame5 .= "v9MRE7g+CLi5FHB3PiVh23cvv3reN7sGvGjg2MDjPQB4q8gBuIuckTvj7ujL+1l7MUUbAmCimY7BfHCddMcmJgZcHwLcXAq47Vt4" 
		Frame5 .= "nKR72X4TgHPNbIrmvWh/ssUHXAlODni4CwBvVTkBj0deNrBOh2NiwDWAnascgMcJuX3jTuHnBG4uBjzMzGzex+1wQQ24BrBrmSNw" 
		Frame5 .= "/7qk0rjjEj3g/j4AvFWm8jx41sfzfqb2PLgGsHuZc+DpaTDX2pgccB0K3FwPWDn+Kl8IdvDQwgDeqlOboqcjrxJ6wL0wgLfqVM+i" 
		Frame5 .= "TedYzOMs+gNZf+jy4iPAng/kwHxiAPWTLD1eL3TEzQeAQ//WRULziQLMTbpkgcVAHwmcWuJDWXQwX07WrlP077U7CMjW498HTJT2" 
		Frame5 .= "A2P12zRFLxrZFThJAoDNA/PdZ3XwY6IdkvENf0Pz+kzR6eLtq9xakx2qV53TFhiW8XnwWhs7ACcWnrJiarvJgNuVsnitp0dOXVdA" 
		Frame5 .= "vqd3k2YvT87XN4GL79wzVmL8S5760YVm4yTaAdghckfDMh9iufq0yLnD9R3itBP7SJx0/QhgZhRzAOZH+RZO+6Aw3tHXD+ng5VA7" 
		Frame5 .= "AR/su3mtaQzMJ5ynXE8BrF39mDvdvhK7ZFIDH3OfTtfSKk8+ecZZPxzY7XwnRUiNe7T144HdTngSZHqOOPzo8BXWrwPMrpkPABck" 
		Frame5 .= "fQF89qg/PdyvnH/9f3X+3q6YIK4IAAAAJXRFWHRkYXRlOmNyZWF0ZQAyMDIwLTAxLTI3VDIzOjIyOjU3KzAwOjAwf8F/bQAAACV0" 
		Frame5 .= "RVh0ZGF0ZTptb2RpZnkAMjAyMC0wMS0yN1QyMzoyMjo1NyswMDowMA6cx9EAAAAASUVORK5CYII=" 
		
		Frame6 .= "iVBORw0KGgoAAAANSUhEUgAAAeAAAAEOCAMAAABmRDRVAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAA" 
		Frame6 .= "dTAAAOpgAAA6mAAAF3CculE8AAAARVBMVEVscW9UWVkPDhQtNT5FTlCMg2qPJzDjuX9hHSgkFRvCl2eUbVERERhrT0IVGSEWKTmG" 
		Frame6 .= "b1JENDBMWi1xdEEnQyEYMCv///8ApNWpAAAAAWJLR0QWfNGoGQAAAAd0SU1FB+QBGxcXGYP4k7kAAAoVSURBVHja7d2JYqI6FAZg" 
		Frame6 .= "ZBmtkxtnHHj/V70JsiVsgSA5h/x/WwXraJKvJ8SlnSQxc9NJh8napOcl7zNsnH1RtpLETm5m7hv6kqJYuOHcTjFK963lJjbXvnWZ" 
		Frame6 .= "vyGXOxz/mwTA8QGbgx3WNxhwsgW4oAKc7wYOxBsQeOmGjwPOLN/dwMbly8CkfPMJoKOAk6OAiyVglxJe8D0HOJwvgM8APo83GfVk" 
		Frame6 .= "CsjRN1v2PQy48AHOVmbobcCFA7A15Of6cgQuVoDXS3jJd0Z4sYC3AJ/sGyFwFhr4VF+GwIU38LLvDuDZ8dPA1qB/2/eXkbtbfrnn" 
		Frame6 .= "8VgGfjw23NienAM8W8CrwBMKR8dRdZ/5o8408Od7Xwb+anYAT/D+fKl1h8CuQT+GMWUf/IF//Ziiu4AP9/0K7Jz0YzWhjfzysxH4" 
		Frame6 .= "mwV8DmybZxs34IN+nsIA2wfmTcA/K8C/5/p4rues7xz08FtfasMpwD/nAdPKCPi3SoOrN08APgNcA+fuwGNfcSlgbdycBwBeyCHA" 
		Frame6 .= "hS/w8z4cinbcQo/NTOaA/yMJvCMdcH4QsOa9JnDopu7LHuB0HvjDC2A6eR4D3CyyHgCmlufjA5xHCnwH8Ag4BTCjjIALAEcOnAKY" 
		Frame6 .= "UwAMYBM4BTCr2MAFgGMBzp2BhRB8ge8ANoAncIVIYgAO3c693fMDVriJBhYAJhpf4Jr3BmCysYCLFeDRDH0TtxuACWcbcDoBrAJg" 
		Frame6 .= "utkEPLV+vtVfNwATjQlcLAJP8Ca1MIDpxh14ivd207w3ANONM/A0by3Mu4LvANbAo/pNBr+OfMsATDW7gYVofuut3gIw1RjAs775" 
		Frame6 .= "1BspP8T1qcguA/w0gJ8RA3+Im08AU40PcEsMYMLxA05rXwdgwr4AXgHWR2AAk80QuNhXwRp47bloAAfrnSewyD7rLAATjSfw5x0d" 
		Frame6 .= "MQCHbuXu3nkCt8gAJpoBcLEXWIcx8D1K4BzAAAYwgwA4GuACwAAGMLsAGMAHAJP2jQS4ADCAAcwvAL5bwnEA5wC+GHABYAADmGEA" 
		Frame6 .= "fAcwgAEMYKoB8H3ygfB/F3lLFoC7NkYFnAM4LuAMwKHbuLtvAAYwgAEMYKpxAs4uDnwHcPTAoVu4v2sAvscHnAMYwADmERfgDMAA" 
		Frame6 .= "BjDRALhrZDzAOYABDGAmcQDOAAxgAFMNgLtGAhjADAPgrpEABjDDTABP+F4d+A5gADMNgPtWAhjA/ALgvpUABjC/rAJnAAYwgOkG" 
		Frame6 .= "wH0rAQxgfvk68B3AYXsG4LaRS8Ch2+fRsxFwDuCYgDMAAxjAhAPgrpGRAOcAjgk4AzCAAUw5AO4aCWAAMwyAu0YCGMAMYwNP+wKY" 
		Frame6 .= "bQDcNTJC4AzAAAYw7bTASdzA9+sDJwmALw6cAPjiwIkFnB0CzEM4DmBFDOBrAycABjCAOcUCzgEMYABzygJwFinwswN+Xg44BzCA" 
		Frame6 .= "Acwq88AZgC8HnAMYwADmFQD3jbw8cA5gAAOYWWaBs03AEsBEMwDOdwNLCWCqOQJYrgOTFwbwIi+AycYbWAKYdHrgJV8As40vsAQw" 
		Frame6 .= "7XgCSwATjx+wBDD1eAFLAJPPDHDmAiwBTD8AHjQSwLO+AKaaDjjfCiwBzCHTwBmAAbwNmLowgJd9AUw1AB428sLAy75jYAlgHvEF" 
		Frame6 .= "dn01CcChOuYH7PxqEoBDdWwCOFsHbn0BTD1ewBteLgRwqI7tAm59AUw+HsCbXg8GcKiO7QGWAGYTL2A8Dqaf/cDpNmDiwjEBZ07A" 
		Frame6 .= "xtNZi798xqKEATwBPPAFMNXsAbYLOAUw3ewENp/OAjDd+AOnAKacfcfgkS+AqWYMnG0CTgFMO57AKYCJZxeweSgGMOV4AadbgGkL" 
		Frame6 .= "A3gCOAUw/YyAM2fgFMAMAmCjja3v9f7iO4ABDGCOAbDRRgADmFlcgY2nrQDMJ1uA5U5gDk9lRQOczU7Ry8IAJhp34GVhB2DSwgC2" 
		Frame6 .= "Xh4EMJNsAF4UBjDRbAFeEgYw0VjAGYBjBl4QZg78BDCAecYEzgAcN3AKYG5pgbNFXwNYAphRNgKnAGaWDng5hwATFgYwgJlmK3AK" 
		Frame6 .= "YF4BsNFCAAOYWTrgl2J8vb4DTH8ZvQbMV7gF1rYvF+AUwKzSA9dpQW1qAHONDfxRtnxfAA7dwP09M4Fb5Szri1mjD4HT3cB0heMC" 
		Frame6 .= "NqbrzzaAuWYB+NX7vuZ+s+HPHwDTzhLwIDPAf/+igonHD/j1AjDxeAH/7TcBTDR+FQxg8gGw0UAAA5hZzgUmKwxgADMNgM0GAngX" 
		Frame6 .= "MPmDMIABzDQANtoH4GsCPwEMYKY5GZioMIABzDUANpp3XeD365/6UFFnars+1TvvzxeAuaYFLv+9y3/l+12+K/VVVmq7+dAnFYC5" 
		Frame6 .= "pqvgUtNWpXyrT3Wm9pRypU7Uxrv0BSYuHAFwKZVlfSLLqv4Qb/kWWlpW1RvAXNNVsKgqVb0auK5hWXO/pZ6u1SmAuaar4ErXqzpR" 
		Frame6 .= "slpZaFah52dtbR2DqxLAXNICV1JqSvVR1bOyhtbHYqEvfEv7P4iuAMwkLbCalXXZqon6rYllpWUrtalma7VtApeVKPcCkxSOAbjU" 
		Frame6 .= "M7KaptVZKfWemrFFrS1Gx2CtDmAeaYGFLlQp9AytjVXRam9Z1UdlaVWwugKAmWSwyNKwClMXrtDOlfYWejkthLXIUtcAMI90U7QQ" 
		Frame6 .= "uoR12SpQWUurAlbaUl9iAouLVfAzAuCyFtWzsv4q69laVW5TxVYF6/reDUxQOAbgegktNLEu32ZTlbWo52sLWGx/mES6hGMAlo1o" 
		Frame6 .= "VW/UM7T4UNcXWBUsxHWBfw+AL/B3lLpVdCk+snqNpWfoTzXXyMKu4Im/0wFgoukfJol6baWn5LqWy4b3w24BjwoYwFTTAdfRM3Jt" 
		Frame6 .= "XB99ZTNrj6boiWwApiccA7Bs1leiKduumj97AOaabhXdlHA3STeyzUWXBn7GAKwlG9FmsSVbXA0OYK4ZAHdHXtGy9ofjQ4GpCccB" 
		Frame6 .= "3E3I1Qe3jwTwFYDbmVkM67hqTwDMNT1w87ykUbjd1sHApISfkQAbKyyzng9+HEyshCMC7h8GS6uMAcw1w4dJw+OvcXZ4BZMSjgbY" 
		Frame6 .= "OvIa8QemKxwPsIFr7rgCb0jonncjMEjwBm8ZQNfYiyw7m57o2JbQtj3w1kELjbYbWE7pfg2YBHPo8f96RhUsx5O16xT9a+4O1gNa" 
		Frame6 .= "97GazexN2lP0qJBdgb1znuzCwPw0mR38M9EOSfeC/0Txbpmij8xXaGfuy5Jte286h0bySfc4eK6MHYAPFx7naNcuLW7dldFzPQ1y" 
		Frame6 .= "aCSP/PSvJg2enhzurwKnP9zT9WTyhzx063yzsoh2AHaIvqF2W7ZZuHq/KaXD9R3idCPLI3HR/SOAxaSYA7A8yjd1ug0K4336/iEV" 
		Frame6 .= "PB5qJ+CDfVev1Y/B9ILzkvshgK2rH3On61cSUSY08DH36XQtq+fBJ89z9g8HdlvvhAipcT9t/3hgtwVPgPSPEdu3DsewHw+wiDNf" 
		Frame6 .= "AE5J+gL46jHfPdzsXH//f+lkiZFyQYWSAAAAJXRFWHRkYXRlOmNyZWF0ZQAyMDIwLTAxLTI3VDIzOjIyOjU3KzAwOjAwf8F/bQAA" 
		Frame6 .= "ACV0RVh0ZGF0ZTptb2RpZnkAMjAyMC0wMS0yN1QyMzoyMjo1NyswMDowMA6cx9EAAAAASUVORK5CYII=" 
		
		}
		
		GdipCreateFromBase(B64, IsIcon := 0) {
			; GDI+ Startup
			hGdip := DllCall("Kernel32.dll\LoadLibrary", "Str", "Gdiplus.dll") ; Load module
			VarSetCapacity(GdiplusStartupInput, (A_PtrSize = 8 ? 24 : 16), 0) ; GdiplusStartupInput structure
			NumPut(1, GdiplusStartupInput, 0, "UInt") ; GdiplusVersion
			VarSetCapacity(pToken, 0) ;Make var big enough to fit contents
			DllCall("Gdiplus.dll\GdiplusStartup", "PtrP", pToken, "Ptr", &GdiplusStartupInput, "Ptr", 0) ; Initialize GDI+
		
			VarSetCapacity(B64Len, 0)
			DllCall("Crypt32.dll\CryptStringToBinary", "Ptr", &B64, "UInt", StrLen(B64), "UInt", 0x01, "Ptr", 0, "UIntP", B64Len, "Ptr", 0, "Ptr", 0)
			VarSetCapacity(B64Dec, B64Len, 0) ; pbBinary size
			DllCall("Crypt32.dll\CryptStringToBinary", "Ptr", &B64, "UInt", StrLen(B64), "UInt", 0x01, "Ptr", &B64Dec, "UIntP", B64Len, "Ptr", 0, "Ptr", 0)
			pStream := DllCall("Shlwapi.dll\SHCreateMemStream", "Ptr", &B64Dec, "UInt", B64Len, "UPtr")
			VarSetCapacity(pBitmap, 0)
			DllCall("Gdiplus.dll\GdipCreateBitmapFromStreamICM", "Ptr", pStream, "PtrP", pBitmap)
			VarSetCapacity(hBitmap, 0)
			DllCall("Gdiplus.dll\GdipCreateHBITMAPFromBitmap", "UInt", pBitmap, "UInt*", hBitmap, "Int", 0XFFFFFFFF)
			
			If (IsIcon) 
				DllCall("Gdiplus.dll\GdipCreateHICONFromBitmap", "Ptr", pBitmap, "PtrP", hIcon, "UInt", 0)
			
			; Free GDI+ module from memory
			DllCall("Kernel32.dll\FreeLibrary", "Ptr", hGdip)
		
			ObjRelease(pStream)
			return (IsIcon ? hIcon : hBitmap)
		}