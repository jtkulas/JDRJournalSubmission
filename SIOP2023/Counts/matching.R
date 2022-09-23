
## Trying to figure out which characteristics have agreement

## 145 & 248 (attention checks)
## maybe % match


data$rh1[data$item118 > 3 & data$item203 > 3 & data$item22 >  1] <- 1        ## characteristic also both
data$rh1[data$item22 == 1] <- NA                                             ## Not a characteristic
data$rh1[(data$item118 < 4 | data$item203 < 4) & data$item22 >  1] <- 0      ## characteristic but not both

data$rh2[ data$item119 > 3 & data$item204 > 3 &  data$item23 >  1] <- 1        
data$rh2[(data$item119 < 4 | data$item204 < 4) & data$item23 >  1] <- 0
data$rh2[                                        data$item23 == 1] <- NA

data$rh3[ data$item120 > 3 & data$item205 > 3 &  data$item24 >  1] <- 1        
data$rh3[(data$item120 < 4 | data$item205 < 4) & data$item24 >  1] <- 0
data$rh3[                                        data$item24 == 1] <- NA

data$rh4[ data$item121 > 3 & data$item206 > 3 &  data$item25 >  1] <- 1        
data$rh4[(data$item121 < 4 | data$item206 < 4) & data$item25 >  1] <- 0
data$rh4[                                        data$item25 == 1] <- NA

data$rh5[ data$item122 > 3 & data$item207 > 3 &  data$item26 >  1] <- 1        
data$rh5[(data$item122 < 4 | data$item207 < 4) & data$item26 >  1] <- 0
data$rh5[                                        data$item26 == 1] <- NA


data$rh6[ data$item123 > 3 & data$item208 > 3 &  data$item27 >  1] <- 1        
data$rh6[(data$item123 < 4 | data$item208 < 4) & data$item27 >  1] <- 0
data$rh6[                                        data$item27 == 1] <- NA

data$rh7[ data$item124 > 3 & data$item209 > 3 &  data$item28 >  1] <- 1        
data$rh7[(data$item124 < 4 | data$item209 < 4) & data$item28 >  1] <- 0
data$rh7[                                        data$item28 == 1] <- NA

data$rh8[ data$item125 > 3 & data$item210 > 3 &  data$item29 >  1] <- 1        
data$rh8[(data$item125 < 4 | data$item210 < 4) & data$item29 >  1] <- 0
data$rh8[                                        data$item29 == 1] <- NA

data$rh9[ data$item126 > 3 & data$item211 > 3 &  data$item30 >  1] <- 1        
data$rh9[(data$item126 < 4 | data$item211 < 4) & data$item30 >  1] <- 0
data$rh9[                                        data$item30 == 1] <- NA

data$rh10[ data$item127 > 3 & data$item212 > 3 &  data$item31 >  1] <- 1        
data$rh10[(data$item127 < 4 | data$item212 < 4) & data$item31 >  1] <- 0
data$rh10[                                        data$item31 == 1] <- NA

data$rh11[ data$item128 > 3 & data$item213 > 3 &  data$item32 >  1] <- 1        
data$rh11[(data$item128 < 4 | data$item213 < 4) & data$item32 >  1] <- 0
data$rh11[                                        data$item32 == 1] <- NA

data$rh12[ data$item129 > 3 & data$item214 > 3 &  data$item42 >  1] <- 1        
data$rh12[(data$item129 < 4 | data$item214 < 4) & data$item42 >  1] <- 0
data$rh12[                                        data$item42 == 1] <- NA

data$rh13[ data$item130 > 3 & data$item215 > 3 &  data$item43 >  1] <- 1        
data$rh13[(data$item130 < 4 | data$item215 < 4) & data$item43 >  1] <- 0
data$rh13[                                        data$item43 == 1] <- NA

data$rh14[ data$item131 > 3 & data$item216 > 3 &  data$item44 >  1] <- 1        
data$rh14[(data$item131 < 4 | data$item216 < 4) & data$item44 >  1] <- 0
data$rh14[                                        data$item44 == 1] <- NA

data$rh15[ data$item132 > 3 & data$item217 > 3 &  data$item45 >  1] <- 1        
data$rh15[(data$item132 < 4 | data$item217 < 4) & data$item45 >  1] <- 0
data$rh15[                                        data$item45 == 1] <- NA

data$rh16[ data$item133 > 3 & data$item218 > 3 &  data$item46 >  1] <- 1        
data$rh16[(data$item133 < 4 | data$item218 < 4) & data$item46 >  1] <- 0
data$rh16[                                        data$item46 == 1] <- NA

data$rh17[ data$item134 > 3 & data$item219 > 3 &  data$item47 >  1] <- 1        
data$rh17[(data$item134 < 4 | data$item219 < 4) & data$item47 >  1] <- 0
data$rh17[                                        data$item47 == 1] <- NA

data$rh18[ data$item135 > 3 & data$item220 > 3 &  data$item48 >  1] <- 1        
data$rh18[(data$item135 < 4 | data$item220 < 4) & data$item48 >  1] <- 0
data$rh18[                                        data$item48 == 1] <- NA

data$rh19[ data$item136 > 3 & data$item221 > 3 &  data$item49 >  1] <- 1        
data$rh19[(data$item136 < 4 | data$item221 < 4) & data$item49 >  1] <- 0
data$rh19[                                        data$item49 == 1] <- NA

data$rh20[ data$item137 > 3 & data$item222 > 3 &  data$item50 >  1] <- 1        
data$rh20[(data$item137 < 4 | data$item222 < 4) & data$item50 >  1] <- 0
data$rh20[                                        data$item50 == 1] <- NA

data$rh21[ data$item138 > 3 & data$item223 > 3 &  data$item52 >  1] <- 1        
data$rh21[(data$item138 < 4 | data$item223 < 4) & data$item52 >  1] <- 0
data$rh21[                                        data$item52 == 1] <- NA

data$rh22[ data$item139 > 3 & data$item224 > 3 &  data$item53 >  1] <- 1        
data$rh22[(data$item139 < 4 | data$item224 < 4) & data$item53 >  1] <- 0
data$rh22[                                        data$item53 == 1] <- NA

data$rh23[ data$item140 > 3 & data$item225 > 3 &  data$item54 >  1] <- 1        
data$rh23[(data$item140 < 4 | data$item225 < 4) & data$item54 >  1] <- 0
data$rh23[                                        data$item54 == 1] <- NA

data$rh24[ data$item141 > 3 & data$item226 > 3 &  data$item55 >  1] <- 1        
data$rh24[(data$item141 < 4 | data$item226 < 4) & data$item55 >  1] <- 0
data$rh24[                                        data$item55 == 1] <- NA

data$rh25[ data$item142 > 3 & data$item227 > 3 &  data$item56 >  1] <- 1        
data$rh25[(data$item142 < 4 | data$item227 < 4) & data$item56 >  1] <- 0
data$rh25[                                        data$item56 == 1] <- NA

data$rh26[ data$item143 > 3 & data$item228 > 3 &  data$item57 >  1] <- 1        
data$rh26[(data$item143 < 4 | data$item228 < 4) & data$item57 >  1] <- 0
data$rh26[                                        data$item57 == 1] <- NA

data$rh27[ data$item144 > 3 & data$item229 > 3 &  data$item58 >  1] <- 1        
data$rh27[(data$item144 < 4 | data$item229 < 4) & data$item58 >  1] <- 0
data$rh27[                                        data$item58 == 1] <- NA

data$rh28[ data$item146 > 3 & data$item230 > 3 &  data$item59 >  1] <- 1        
data$rh28[(data$item146 < 4 | data$item230 < 4) & data$item59 >  1] <- 0
data$rh28[                                        data$item59 == 1] <- NA

data$rh29[ data$item147 > 3 & data$item231 > 3 &  data$item60 >  1] <- 1        
data$rh29[(data$item147 < 4 | data$item231 < 4) & data$item60 >  1] <- 0
data$rh29[                                        data$item60 == 1] <- NA

data$rh30[ data$item148 > 3 & data$item232 > 3 &  data$item62 >  1] <- 1        
data$rh30[(data$item148 < 4 | data$item232 < 4) & data$item62 >  1] <- 0
data$rh30[                                        data$item62 == 1] <- NA

data$rh31[ data$item149 > 3 & data$item233 > 3 &  data$item63 >  1] <- 1        
data$rh31[(data$item149 < 4 | data$item233 < 4) & data$item63 >  1] <- 0
data$rh31[                                        data$item63 == 1] <- NA

data$rh32[ data$item150 > 3 & data$item234 > 3 &  data$item64 >  1] <- 1        
data$rh32[(data$item150 < 4 | data$item234 < 4) & data$item64 >  1] <- 0
data$rh32[                                        data$item64 == 1] <- NA

data$rh33[ data$item151 > 3 & data$item235 > 3 &  data$item65 >  1] <- 1        
data$rh33[(data$item151 < 4 | data$item235 < 4) & data$item65 >  1] <- 0
data$rh33[                                        data$item65 == 1] <- NA

data$rh34[ data$item152 > 3 & data$item236 > 3 &  data$item67 >  1] <- 1        
data$rh34[(data$item152 < 4 | data$item236 < 4) & data$item67 >  1] <- 0
data$rh34[                                        data$item67 == 1] <- NA

data$rh35[ data$item153 > 3 & data$item237 > 3 &  data$item68 >  1] <- 1        
data$rh35[(data$item153 < 4 | data$item237 < 4) & data$item68 >  1] <- 0
data$rh35[                                        data$item68 == 1] <- NA

data$rh36[ data$item154 > 3 & data$item238 > 3 &  data$item69 >  1] <- 1        
data$rh36[(data$item154 < 4 | data$item238 < 4) & data$item69 >  1] <- 0
data$rh36[                                        data$item69 == 1] <- NA

data$rh37[ data$item155 > 3 & data$item239 > 3 &  data$item70 >  1] <- 1        
data$rh37[(data$item155 < 4 | data$item239 < 4) & data$item70 >  1] <- 0
data$rh37[                                        data$item70 == 1] <- NA

data$rh38[ data$item156 > 3 & data$item240 > 3 &  data$item71 >  1] <- 1        
data$rh38[(data$item156 < 4 | data$item240 < 4) & data$item71 >  1] <- 0
data$rh38[                                        data$item71 == 1] <- NA

data$rh39[ data$item157 > 3 & data$item241 > 3 &  data$item72 >  1] <- 1        
data$rh39[(data$item157 < 4 | data$item241 < 4) & data$item72 >  1] <- 0
data$rh39[                                        data$item72 == 1] <- NA

data$rh40[ data$item158 > 3 & data$item242 > 3 &  data$item73 >  1] <- 1        
data$rh40[(data$item158 < 4 | data$item242 < 4) & data$item73 >  1] <- 0
data$rh40[                                        data$item73 == 1] <- NA

data$rh41[ data$item159 > 3 & data$item243 > 3 &  data$item74 >  1] <- 1        
data$rh41[(data$item159 < 4 | data$item243 < 4) & data$item74 >  1] <- 0
data$rh41[                                        data$item74 == 1] <- NA

data$rh42[ data$item160 > 3 & data$item244 > 3 &  data$item75 >  1] <- 1        
data$rh42[(data$item160 < 4 | data$item244 < 4) & data$item75 >  1] <- 0
data$rh42[                                        data$item75 == 1] <- NA

data$rh43[ data$item161 > 3 & data$item245 > 3 &  data$item76 >  1] <- 1        
data$rh43[(data$item161 < 4 | data$item245 < 4) & data$item76 >  1] <- 0
data$rh43[                                        data$item76 == 1] <- NA

data$rh44[ data$item162 > 3 & data$item246 > 3 &  data$item77 >  1] <- 1        
data$rh44[(data$item162 < 4 | data$item246 < 4) & data$item77 >  1] <- 0
data$rh44[                                        data$item77 == 1] <- NA

data$rh45[ data$item163 > 3 & data$item247 > 3 &  data$item78 >  1] <- 1        
data$rh45[(data$item163 < 4 | data$item247 < 4) & data$item78 >  1] <- 0
data$rh45[                                        data$item78 == 1] <- NA

data$rh46[ data$item164 > 3 & data$item249 > 3 &  data$item79 >  1] <- 1        
data$rh46[(data$item164 < 4 | data$item249 < 4) & data$item79 >  1] <- 0
data$rh46[                                        data$item79 == 1] <- NA

data$rh47[ data$item165 > 3 & data$item250 > 3 &  data$item80 >  1] <- 1        
data$rh47[(data$item165 < 4 | data$item250 < 4) & data$item80 >  1] <- 0
data$rh47[                                        data$item80 == 1] <- NA

data$rh48[ data$item166 > 3 & data$item251 > 3 &  data$item81 >  1] <- 1        
data$rh48[(data$item166 < 4 | data$item251 < 4) & data$item81 >  1] <- 0
data$rh48[                                        data$item81 == 1] <- NA

data$rh49[ data$item167 > 3 & data$item252 > 3 &  data$item82 >  1] <- 1        
data$rh49[(data$item167 < 4 | data$item252 < 4) & data$item82 >  1] <- 0
data$rh49[                                        data$item82 == 1] <- NA

data$rh50[ data$item168 > 3 & data$item253 > 3 &  data$item83 >  1] <- 1        
data$rh50[(data$item168 < 4 | data$item253 < 4) & data$item83 >  1] <- 0
data$rh50[                                        data$item83 == 1] <- NA

data$rh51[ data$item169 > 3 & data$item254 > 3 &  data$item84 >  1] <- 1        
data$rh51[(data$item169 < 4 | data$item254 < 4) & data$item84 >  1] <- 0
data$rh51[                                        data$item84 == 1] <- NA

data$rh52[ data$item170 > 3 & data$item255 > 3 &  data$item85 >  1] <- 1        
data$rh52[(data$item170 < 4 | data$item255 < 4) & data$item85 >  1] <- 0
data$rh52[                                        data$item85 == 1] <- NA

data$rh53[ data$item171 > 3 & data$item256 > 3 &  data$item86 >  1] <- 1        
data$rh53[(data$item171 < 4 | data$item256 < 4) & data$item86 >  1] <- 0
data$rh53[                                        data$item86 == 1] <- NA

data$rh54[ data$item172 > 3 & data$item257 > 3 &  data$item87 >  1] <- 1        
data$rh54[(data$item172 < 4 | data$item257 < 4) & data$item87 >  1] <- 0
data$rh54[                                        data$item87 == 1] <- NA

data$rh55[ data$item173 > 3 & data$item258 > 3 &  data$item88 >  1] <- 1        
data$rh55[(data$item173 < 4 | data$item258 < 4) & data$item88 >  1] <- 0
data$rh55[                                        data$item88 == 1] <- NA

data$rh56[ data$item174 > 3 & data$item259 > 3 &  data$item89 >  1] <- 1        
data$rh56[(data$item174 < 4 | data$item259 < 4) & data$item89 >  1] <- 0
data$rh56[                                        data$item89 == 1] <- NA

data$rh57[ data$item175 > 3 & data$item260 > 3 &  data$item90 >  1] <- 1        
data$rh57[(data$item175 < 4 | data$item260 < 4) & data$item90 >  1] <- 0
data$rh57[                                        data$item90 == 1] <- NA

data$rh58[ data$item176 > 3 & data$item261 > 3 &  data$item91 >  1] <- 1        
data$rh58[(data$item176 < 4 | data$item261 < 4) & data$item91 >  1] <- 0
data$rh58[                                        data$item91 == 1] <- NA

data$rh59[ data$item177 > 3 & data$item262 > 3 &  data$item92 >  1] <- 1        
data$rh59[(data$item177 < 4 | data$item262 < 4) & data$item92 >  1] <- 0
data$rh59[                                        data$item92 == 1] <- NA

data$rh60[ data$item178 > 3 & data$item263 > 3 &  data$item93 >  1] <- 1        
data$rh60[(data$item178 < 4 | data$item263 < 4) & data$item93 >  1] <- 0
data$rh60[                                        data$item93 == 1] <- NA

data$rh61[ data$item179 > 3 & data$item264 > 3 &  data$item94 >  1] <- 1        
data$rh61[(data$item179 < 4 | data$item264 < 4) & data$item94 >  1] <- 0
data$rh61[                                        data$item94 == 1] <- NA

data$rh62[ data$item180 > 3 & data$item265 > 3 &  data$item95 >  1] <- 1        
data$rh62[(data$item180 < 4 | data$item265 < 4) & data$item95 >  1] <- 0
data$rh62[                                        data$item95 == 1] <- NA

data$rh63[ data$item181 > 3 & data$item266 > 3 &  data$item96 >  1] <- 1        
data$rh63[(data$item181 < 4 | data$item266 < 4) & data$item96 >  1] <- 0
data$rh63[                                        data$item96 == 1] <- NA

data$rh64[ data$item182 > 3 & data$item267 > 3 &  data$item97 >  1] <- 1        
data$rh64[(data$item182 < 4 | data$item267 < 4) & data$item97 >  1] <- 0
data$rh64[                                        data$item97 == 1] <- NA

data$rh65[ data$item183 > 3 & data$item268 > 3 &  data$item98 >  1] <- 1        
data$rh65[(data$item183 < 4 | data$item268 < 4) & data$item98 >  1] <- 0
data$rh65[                                        data$item98 == 1] <- NA

data$rh66[ data$item184 > 3 & data$item269 > 3 &  data$item99 >  1] <- 1        
data$rh66[(data$item184 < 4 | data$item269 < 4) & data$item99 >  1] <- 0
data$rh66[                                        data$item99 == 1] <- NA

data$rh67[ data$item185 > 3 & data$item270 > 3 &  data$item100 >  1] <- 1        
data$rh67[(data$item185 < 4 | data$item270 < 4) & data$item100 >  1] <- 0
data$rh67[                                        data$item100 == 1] <- NA

data$rh68[ data$item186 > 3 & data$item271 > 3 &  data$item101 >  1] <- 1        
data$rh68[(data$item186 < 4 | data$item271 < 4) & data$item101 >  1] <- 0
data$rh68[                                        data$item101 == 1] <- NA

data$rh69[ data$item187 > 3 & data$item272 > 3 &  data$item102 >  1] <- 1        
data$rh69[(data$item187 < 4 | data$item272 < 4) & data$item102 >  1] <- 0
data$rh69[                                        data$item102 == 1] <- NA

data$rh70[ data$item188 > 3 & data$item273 > 3 &  data$item103 >  1] <- 1        
data$rh70[(data$item188 < 4 | data$item273 < 4) & data$item103 >  1] <- 0
data$rh70[                                        data$item103 == 1] <- NA

data$rh71[ data$item189 > 3 & data$item274 > 3 &  data$item104 >  1] <- 1        
data$rh71[(data$item189 < 4 | data$item274 < 4) & data$item104 >  1] <- 0
data$rh71[                                        data$item104 == 1] <- NA

data$rh72[ data$item190 > 3 & data$item275 > 3 &  data$item105 >  1] <- 1        
data$rh72[(data$item190 < 4 | data$item275 < 4) & data$item105 >  1] <- 0
data$rh72[                                        data$item105 == 1] <- NA

data$rh73[ data$item191 > 3 & data$item276 > 3 &  data$item106 >  1] <- 1        
data$rh73[(data$item191 < 4 | data$item276 < 4) & data$item106 >  1] <- 0
data$rh73[                                        data$item106 == 1] <- NA

data$rh74[ data$item192 > 3 & data$item277 > 3 &  data$item107 >  1] <- 1        
data$rh74[(data$item192 < 4 | data$item277 < 4) & data$item107 >  1] <- 0
data$rh74[                                        data$item107 == 1] <- NA

data$rh75[ data$item193 > 3 & data$item278 > 3 &  data$item108 >  1] <- 1        
data$rh75[(data$item193 < 4 | data$item278 < 4) & data$item108 >  1] <- 0
data$rh75[                                        data$item108 == 1] <- NA

data$rh76[ data$item194 > 3 & data$item279 > 3 &  data$item109 >  1] <- 1        
data$rh76[(data$item194 < 4 | data$item279 < 4) & data$item109 >  1] <- 0
data$rh76[                                        data$item109 == 1] <- NA

data$rh77[ data$item195 > 3 & data$item280 > 3 &  data$item110 >  1] <- 1        
data$rh77[(data$item195 < 4 | data$item280 < 4) & data$item110 >  1] <- 0
data$rh77[                                        data$item110 == 1] <- NA

data$rh78[ data$item196 > 3 & data$item281 > 3 &  data$item111 >  1] <- 1        
data$rh78[(data$item196 < 4 | data$item281 < 4) & data$item111 >  1] <- 0
data$rh78[                                        data$item111 == 1] <- NA

data$rh79[ data$item197 > 3 & data$item282 > 3 &  data$item112 >  1] <- 1        
data$rh79[(data$item197 < 4 | data$item282 < 4) & data$item112 >  1] <- 0
data$rh79[                                        data$item112 == 1] <- NA

data$rh80[ data$item198 > 3 & data$item283 > 3 &  data$item113 >  1] <- 1        
data$rh80[(data$item198 < 4 | data$item283 < 4) & data$item113 >  1] <- 0
data$rh80[                                        data$item113 == 1] <- NA

data$rh81[ data$item199 > 3 & data$item284 > 3 &  data$item114 >  1] <- 1        
data$rh81[(data$item199 < 4 | data$item284 < 4) & data$item114 >  1] <- 0
data$rh81[                                        data$item114 == 1] <- NA

data$rh82[ data$item200 > 3 & data$item285 > 3 &  data$item115 >  1] <- 1        
data$rh82[(data$item200 < 4 | data$item285 < 4) & data$item115 >  1] <- 0
data$rh82[                                        data$item115 == 1] <- NA

data$rh83[ data$item201 > 3 & data$item286 > 3 &  data$item116 >  1] <- 1        
data$rh83[(data$item201 < 4 | data$item286 < 4) & data$item116 >  1] <- 0
data$rh83[                                        data$item116 == 1] <- NA

data$rh84[ data$item202 > 3 & data$item287 > 3 &  data$item117 >  1] <- 1        
data$rh84[(data$item202 < 4 | data$item287 < 4) & data$item117 >  1] <- 0
data$rh84[                                        data$item117 == 1] <- NA

###### Resource-Challenge:

data$rc1[ data$item118 > 3 & data$item288 > 3 &  data$item22 >  1] <- 1        
data$rc1[(data$item118 < 4 | data$item288 < 4) & data$item22 >  1] <- 0
data$rc1[                                        data$item22 == 1] <- NA

data$rc2[ data$item119 > 3 & data$item289 > 3 &  data$item23 >  1] <- 1        
data$rc2[(data$item119 < 4 | data$item289 < 4) & data$item23 >  1] <- 0
data$rc2[                                        data$item23 == 1] <- NA

data$rc3[ data$item120 > 3 & data$item290 > 3 &  data$item24 >  1] <- 1        
data$rc3[(data$item120 < 4 | data$item290 < 4) & data$item24 >  1] <- 0
data$rc3[                                        data$item24 == 1] <- NA

data$rc4[ data$item121 > 3 & data$item291 > 3 &  data$item25 >  1] <- 1        
data$rc4[(data$item121 < 4 | data$item291 < 4) & data$item25 >  1] <- 0
data$rc4[                                        data$item25 == 1] <- NA

data$rc5[ data$item122 > 3 & data$item292 > 3 &  data$item26 >  1] <- 1        
data$rc5[(data$item122 < 4 | data$item292 < 4) & data$item26 >  1] <- 0
data$rc5[                                        data$item26 == 1] <- NA

data$rc6[ data$item123 > 3 & data$item293 > 3 &  data$item27 >  1] <- 1        
data$rc6[(data$item123 < 4 | data$item293 < 4) & data$item27 >  1] <- 0
data$rc6[                                        data$item27 == 1] <- NA

data$rc7[ data$item124 > 3 & data$item294 > 3 &  data$item28 >  1] <- 1        
data$rc7[(data$item124 < 4 | data$item294 < 4) & data$item28 >  1] <- 0
data$rc7[                                        data$item28 == 1] <- NA

data$rc8[ data$item125 > 3 & data$item295 > 3 &  data$item29 >  1] <- 1        
data$rc8[(data$item125 < 4 | data$item295 < 4) & data$item29 >  1] <- 0
data$rc8[                                        data$item29 == 1] <- NA

data$rc9[ data$item126 > 3 & data$item296 > 3 &  data$item30 >  1] <- 1        
data$rc9[(data$item126 < 4 | data$item296 < 4) & data$item30 >  1] <- 0
data$rc9[                                        data$item30 == 1] <- NA

data$rc10[ data$item127 > 3 & data$item297 > 3 &  data$item31 >  1] <- 1        
data$rc10[(data$item127 < 4 | data$item297 < 4) & data$item31 >  1] <- 0
data$rc10[                                        data$item31 == 1] <- NA

data$rc11[ data$item128 > 3 & data$item298 > 3 &  data$item32 >  1] <- 1        
data$rc11[(data$item128 < 4 | data$item298 < 4) & data$item32 >  1] <- 0
data$rc11[                                        data$item32 == 1] <- NA

data$rc12[ data$item129 > 3 & data$item299 > 3 &  data$item42 >  1] <- 1        
data$rc12[(data$item129 < 4 | data$item299 < 4) & data$item42 >  1] <- 0
data$rc12[                                        data$item42 == 1] <- NA

data$rc13[ data$item130 > 3 & data$item300 > 3 &  data$item43 >  1] <- 1        
data$rc13[(data$item130 < 4 | data$item300 < 4) & data$item43 >  1] <- 0
data$rc13[                                        data$item43 == 1] <- NA

data$rc14[ data$item131 > 3 & data$item301 > 3 &  data$item44 >  1] <- 1        
data$rc14[(data$item131 < 4 | data$item301 < 4) & data$item44 >  1] <- 0
data$rc14[                                        data$item44 == 1] <- NA

data$rc15[ data$item132 > 3 & data$item302 > 3 &  data$item45 >  1] <- 1        
data$rc15[(data$item132 < 4 | data$item302 < 4) & data$item45 >  1] <- 0
data$rc15[                                        data$item45 == 1] <- NA

data$rc16[ data$item133 > 3 & data$item303 > 3 &  data$item46 >  1] <- 1        
data$rc16[(data$item133 < 4 | data$item303 < 4) & data$item46 >  1] <- 0
data$rc16[                                        data$item46 == 1] <- NA

data$rc17[ data$item134 > 3 & data$item304 > 3 &  data$item47 >  1] <- 1        
data$rc17[(data$item134 < 4 | data$item304 < 4) & data$item47 >  1] <- 0
data$rc17[                                        data$item47 == 1] <- NA

data$rc18[ data$item135 > 3 & data$item305 > 3 &  data$item48 >  1] <- 1        
data$rc18[(data$item135 < 4 | data$item305 < 4) & data$item48 >  1] <- 0
data$rc18[                                        data$item48 == 1] <- NA

data$rc19[ data$item136 > 3 & data$item306 > 3 &  data$item49 >  1] <- 1        
data$rc19[(data$item136 < 4 | data$item306 < 4) & data$item49 >  1] <- 0
data$rc19[                                        data$item49 == 1] <- NA

data$rc20[ data$item137 > 3 & data$item307 > 3 &  data$item50 >  1] <- 1        
data$rc20[(data$item137 < 4 | data$item307 < 4) & data$item50 >  1] <- 0
data$rc20[                                        data$item50 == 1] <- NA

data$rc21[ data$item138 > 3 & data$item309 > 3 &  data$item52 >  1] <- 1        
data$rc21[(data$item138 < 4 | data$item309 < 4) & data$item52 >  1] <- 0
data$rc21[                                        data$item52 == 1] <- NA

data$rc22[ data$item139 > 3 & data$item310 > 3 &  data$item53 >  1] <- 1        
data$rc22[(data$item139 < 4 | data$item310 < 4) & data$item53 >  1] <- 0
data$rc22[                                        data$item53 == 1] <- NA

data$rc23[ data$item140 > 3 & data$item311 > 3 &  data$item54 >  1] <- 1        
data$rc23[(data$item140 < 4 | data$item311 < 4) & data$item54 >  1] <- 0
data$rc23[                                        data$item54 == 1] <- NA

data$rc24[ data$item141 > 3 & data$item312 > 3 &  data$item55 >  1] <- 1        
data$rc24[(data$item141 < 4 | data$item312 < 4) & data$item55 >  1] <- 0
data$rc24[                                        data$item55 == 1] <- NA

data$rc25[ data$item142 > 3 & data$item313 > 3 &  data$item56 >  1] <- 1        
data$rc25[(data$item142 < 4 | data$item313 < 4) & data$item56 >  1] <- 0
data$rc25[                                        data$item56 == 1] <- NA

data$rc26[ data$item143 > 3 & data$item314 > 3 &  data$item57 >  1] <- 1        
data$rc26[(data$item143 < 4 | data$item314 < 4) & data$item57 >  1] <- 0
data$rc26[                                        data$item57 == 1] <- NA

data$rc27[ data$item144 > 3 & data$item315 > 3 &  data$item58 >  1] <- 1        
data$rc27[(data$item144 < 4 | data$item315 < 4) & data$item58 >  1] <- 0
data$rc27[                                        data$item58 == 1] <- NA

data$rc28[ data$item146 > 3 & data$item316 > 3 &  data$item59 >  1] <- 1        
data$rc28[(data$item146 < 4 | data$item316 < 4) & data$item59 >  1] <- 0
data$rc28[                                        data$item59 == 1] <- NA

data$rc29[ data$item147 > 3 & data$item317 > 3 &  data$item60 >  1] <- 1        
data$rc29[(data$item147 < 4 | data$item317 < 4) & data$item60 >  1] <- 0
data$rc29[                                        data$item60 == 1] <- NA

data$rc30[ data$item148 > 3 & data$item318 > 3 &  data$item62 >  1] <- 1        
data$rc30[(data$item148 < 4 | data$item318 < 4) & data$item62 >  1] <- 0
data$rc30[                                        data$item62 == 1] <- NA

data$rc31[ data$item149 > 3 & data$item319 > 3 &  data$item63 >  1] <- 1        
data$rc31[(data$item149 < 4 | data$item319 < 4) & data$item63 >  1] <- 0
data$rc31[                                        data$item63 == 1] <- NA

data$rc32[ data$item150 > 3 & data$item320 > 3 &  data$item64 >  1] <- 1        
data$rc32[(data$item150 < 4 | data$item320 < 4) & data$item64 >  1] <- 0
data$rc32[                                        data$item64 == 1] <- NA

data$rc33[ data$item151 > 3 & data$item321 > 3 &  data$item65 >  1] <- 1        
data$rc33[(data$item151 < 4 | data$item321 < 4) & data$item65 >  1] <- 0
data$rc33[                                        data$item65 == 1] <- NA

data$rc34[ data$item152 > 3 & data$item322 > 3 &  data$item67 >  1] <- 1        
data$rc34[(data$item152 < 4 | data$item322 < 4) & data$item67 >  1] <- 0
data$rc34[                                        data$item67 == 1] <- NA

data$rc35[ data$item153 > 3 & data$item323 > 3 &  data$item68 >  1] <- 1        
data$rc35[(data$item153 < 4 | data$item323 < 4) & data$item68 >  1] <- 0
data$rc35[                                        data$item68 == 1] <- NA

data$rc36[ data$item154 > 3 & data$item324 > 3 &  data$item69 >  1] <- 1        
data$rc36[(data$item154 < 4 | data$item324 < 4) & data$item69 >  1] <- 0
data$rc36[                                        data$item69 == 1] <- NA

data$rc37[ data$item155 > 3 & data$item325 > 3 &  data$item70 >  1] <- 1        
data$rc37[(data$item155 < 4 | data$item325 < 4) & data$item70 >  1] <- 0
data$rc37[                                        data$item70 == 1] <- NA

data$rc38[ data$item156 > 3 & data$item326 > 3 &  data$item71 >  1] <- 1        
data$rc38[(data$item156 < 4 | data$item326 < 4) & data$item71 >  1] <- 0
data$rc38[                                        data$item71 == 1] <- NA

data$rc39[ data$item157 > 3 & data$item327 > 3 &  data$item72 >  1] <- 1        
data$rc39[(data$item157 < 4 | data$item327 < 4) & data$item72 >  1] <- 0
data$rc39[                                        data$item72 == 1] <- NA

data$rc40[ data$item158 > 3 & data$item328 > 3 &  data$item73 >  1] <- 1        
data$rc40[(data$item158 < 4 | data$item328 < 4) & data$item73 >  1] <- 0
data$rc40[                                        data$item73 == 1] <- NA

data$rc41[ data$item159 > 3 & data$item329 > 3 &  data$item74 >  1] <- 1        
data$rc41[(data$item159 < 4 | data$item329 < 4) & data$item74 >  1] <- 0
data$rc41[                                        data$item74 == 1] <- NA

data$rc42[ data$item160 > 3 & data$item330 > 3 &  data$item75 >  1] <- 1        
data$rc42[(data$item160 < 4 | data$item330 < 4) & data$item75 >  1] <- 0
data$rc42[                                        data$item75 == 1] <- NA

data$rc43[ data$item161 > 3 & data$item331 > 3 &  data$item76 >  1] <- 1        
data$rc43[(data$item161 < 4 | data$item331 < 4) & data$item76 >  1] <- 0
data$rc43[                                        data$item76 == 1] <- NA

data$rc44[ data$item162 > 3 & data$item332 > 3 &  data$item77 >  1] <- 1        
data$rc44[(data$item162 < 4 | data$item332 < 4) & data$item77 >  1] <- 0
data$rc44[                                        data$item77 == 1] <- NA

data$rc45[ data$item163 > 3 & data$item333 > 3 &  data$item78 >  1] <- 1        
data$rc45[(data$item163 < 4 | data$item333 < 4) & data$item78 >  1] <- 0
data$rc45[                                        data$item78 == 1] <- NA

data$rc46[ data$item164 > 3 & data$item334 > 3 &  data$item79 >  1] <- 1        
data$rc46[(data$item164 < 4 | data$item334 < 4) & data$item79 >  1] <- 0
data$rc46[                                        data$item79 == 1] <- NA

data$rc47[ data$item165 > 3 & data$item335 > 3 &  data$item80 >  1] <- 1        
data$rc47[(data$item165 < 4 | data$item335 < 4) & data$item80 >  1] <- 0
data$rc47[                                        data$item80 == 1] <- NA

data$rc48[ data$item166 > 3 & data$item336 > 3 &  data$item81 >  1] <- 1        
data$rc48[(data$item166 < 4 | data$item336 < 4) & data$item81 >  1] <- 0
data$rc48[                                        data$item81 == 1] <- NA

data$rc49[ data$item167 > 3 & data$item337 > 3 &  data$item82 >  1] <- 1        
data$rc49[(data$item167 < 4 | data$item337 < 4) & data$item82 >  1] <- 0
data$rc49[                                        data$item82 == 1] <- NA

data$rc50[ data$item168 > 3 & data$item338 > 3 &  data$item83 >  1] <- 1        
data$rc50[(data$item168 < 4 | data$item338 < 4) & data$item83 >  1] <- 0
data$rc50[                                        data$item83 == 1] <- NA

data$rc51[ data$item169 > 3 & data$item339 > 3 &  data$item84 >  1] <- 1        
data$rc51[(data$item169 < 4 | data$item339 < 4) & data$item84 >  1] <- 0
data$rc51[                                        data$item84 == 1] <- NA

data$rc52[ data$item170 > 3 & data$item340 > 3 &  data$item85 >  1] <- 1        
data$rc52[(data$item170 < 4 | data$item340 < 4) & data$item85 >  1] <- 0
data$rc52[                                        data$item85 == 1] <- NA

data$rc53[ data$item171 > 3 & data$item341 > 3 &  data$item86 >  1] <- 1        
data$rc53[(data$item171 < 4 | data$item341 < 4) & data$item86 >  1] <- 0
data$rc53[                                        data$item86 == 1] <- NA

data$rc54[ data$item172 > 3 & data$item342 > 3 &  data$item87 >  1] <- 1        
data$rc54[(data$item172 < 4 | data$item342 < 4) & data$item87 >  1] <- 0
data$rc54[                                        data$item87 == 1] <- NA

data$rc55[ data$item173 > 3 & data$item343 > 3 &  data$item88 >  1] <- 1        
data$rc55[(data$item173 < 4 | data$item343 < 4) & data$item88 >  1] <- 0
data$rc55[                                        data$item88 == 1] <- NA

data$rc56[ data$item174 > 3 & data$item344 > 3 &  data$item89 >  1] <- 1        
data$rc56[(data$item174 < 4 | data$item344 < 4) & data$item89 >  1] <- 0
data$rc56[                                        data$item89 == 1] <- NA

data$rc57[ data$item175 > 3 & data$item345 > 3 &  data$item90 >  1] <- 1        
data$rc57[(data$item175 < 4 | data$item345 < 4) & data$item90 >  1] <- 0
data$rc57[                                        data$item90 == 1] <- NA

data$rc58[ data$item176 > 3 & data$item346 > 3 &  data$item91 >  1] <- 1        
data$rc58[(data$item176 < 4 | data$item346 < 4) & data$item91 >  1] <- 0
data$rc58[                                        data$item91 == 1] <- NA

data$rc59[ data$item177 > 3 & data$item347 > 3 &  data$item92 >  1] <- 1        
data$rc59[(data$item177 < 4 | data$item347 < 4) & data$item92 >  1] <- 0
data$rc59[                                        data$item92 == 1] <- NA

data$rc60[ data$item178 > 3 & data$item348 > 3 &  data$item93 >  1] <- 1        
data$rc60[(data$item178 < 4 | data$item348 < 4) & data$item93 >  1] <- 0
data$rc60[                                        data$item93 == 1] <- NA

data$rc61[ data$item179 > 3 & data$item349 > 3 &  data$item94 >  1] <- 1        
data$rc61[(data$item179 < 4 | data$item349 < 4) & data$item94 >  1] <- 0
data$rc61[                                        data$item94 == 1] <- NA

data$rc62[ data$item180 > 3 & data$item350 > 3 &  data$item95 >  1] <- 1        
data$rc62[(data$item180 < 4 | data$item350 < 4) & data$item95 >  1] <- 0
data$rc62[                                        data$item95 == 1] <- NA

data$rc63[ data$item181 > 3 & data$item351 > 3 &  data$item96 >  1] <- 1        
data$rc63[(data$item181 < 4 | data$item351 < 4) & data$item96 >  1] <- 0
data$rc63[                                        data$item96 == 1] <- NA

data$rc64[ data$item182 > 3 & data$item352 > 3 &  data$item97 >  1] <- 1        
data$rc64[(data$item182 < 4 | data$item352 < 4) & data$item97 >  1] <- 0
data$rc64[                                        data$item97 == 1] <- NA

data$rc65[ data$item183 > 3 & data$item353 > 3 &  data$item98 >  1] <- 1        
data$rc65[(data$item183 < 4 | data$item353 < 4) & data$item98 >  1] <- 0
data$rc65[                                        data$item98 == 1] <- NA

data$rc66[ data$item184 > 3 & data$item354 > 3 &  data$item99 >  1] <- 1        
data$rc66[(data$item184 < 4 | data$item354 < 4) & data$item99 >  1] <- 0
data$rc66[                                        data$item99 == 1] <- NA

data$rc67[ data$item185 > 3 & data$item355 > 3 &  data$item100 >  1] <- 1        
data$rc67[(data$item185 < 4 | data$item355 < 4) & data$item100 >  1] <- 0
data$rc67[                                        data$item100 == 1] <- NA

data$rc68[ data$item186 > 3 & data$item356 > 3 &  data$item101 >  1] <- 1        
data$rc68[(data$item186 < 4 | data$item356 < 4) & data$item101 >  1] <- 0
data$rc68[                                        data$item101 == 1] <- NA

data$rc69[ data$item187 > 3 & data$item357 > 3 &  data$item102 >  1] <- 1        
data$rc69[(data$item187 < 4 | data$item357 < 4) & data$item102 >  1] <- 0
data$rc69[                                        data$item102 == 1] <- NA

data$rc70[ data$item188 > 3 & data$item358 > 3 &  data$item103 >  1] <- 1        
data$rc70[(data$item188 < 4 | data$item358 < 4) & data$item103 >  1] <- 0
data$rc70[                                        data$item103 == 1] <- NA

data$rc71[ data$item189 > 3 & data$item359 > 3 &  data$item104 >  1] <- 1        
data$rc71[(data$item189 < 4 | data$item359 < 4) & data$item104 >  1] <- 0
data$rc71[                                        data$item104 == 1] <- NA

data$rc72[ data$item190 > 3 & data$item360 > 3 &  data$item105 >  1] <- 1        
data$rc72[(data$item190 < 4 | data$item360 < 4) & data$item105 >  1] <- 0
data$rc72[                                        data$item105 == 1] <- NA

data$rc73[ data$item191 > 3 & data$item361 > 3 &  data$item106 >  1] <- 1        
data$rc73[(data$item191 < 4 | data$item361 < 4) & data$item106 >  1] <- 0
data$rc73[                                        data$item106 == 1] <- NA

data$rc74[ data$item192 > 3 & data$item362 > 3 &  data$item107 >  1] <- 1        
data$rc74[(data$item192 < 4 | data$item362 < 4) & data$item107 >  1] <- 0
data$rc74[                                        data$item107 == 1] <- NA

data$rc75[ data$item193 > 3 & data$item363 > 3 &  data$item108 >  1] <- 1        
data$rc75[(data$item193 < 4 | data$item363 < 4) & data$item108 >  1] <- 0
data$rc75[                                        data$item108 == 1] <- NA

data$rc76[ data$item194 > 3 & data$item364 > 3 &  data$item109 >  1] <- 1        
data$rc76[(data$item194 < 4 | data$item364 < 4) & data$item109 >  1] <- 0
data$rc76[                                        data$item109 == 1] <- NA

data$rc77[ data$item195 > 3 & data$item365 > 3 &  data$item110 >  1] <- 1        
data$rc77[(data$item195 < 4 | data$item365 < 4) & data$item110 >  1] <- 0
data$rc77[                                        data$item110 == 1] <- NA

data$rc78[ data$item196 > 3 & data$item366 > 3 &  data$item111 >  1] <- 1        
data$rc78[(data$item196 < 4 | data$item366 < 4) & data$item111 >  1] <- 0
data$rc78[                                        data$item111 == 1] <- NA

data$rc79[ data$item197 > 3 & data$item367 > 3 &  data$item112 >  1] <- 1        
data$rc79[(data$item197 < 4 | data$item367 < 4) & data$item112 >  1] <- 0
data$rc79[                                        data$item112 == 1] <- NA

data$rc80[ data$item198 > 3 & data$item368 > 3 &  data$item113 >  1] <- 1        
data$rc80[(data$item198 < 4 | data$item368 < 4) & data$item113 >  1] <- 0
data$rc80[                                        data$item113 == 1] <- NA

data$rc81[ data$item199 > 3 & data$item369 > 3 &  data$item114 >  1] <- 1        
data$rc81[(data$item199 < 4 | data$item369 < 4) & data$item114 >  1] <- 0
data$rc81[                                        data$item114 == 1] <- NA

data$rc82[ data$item200 > 3 & data$item370 > 3 &  data$item115 >  1] <- 1        
data$rc82[(data$item200 < 4 | data$item370 < 4) & data$item115 >  1] <- 0
data$rc82[                                        data$item115 == 1] <- NA

data$rc83[ data$item201 > 3 & data$item371 > 3 &  data$item116 >  1] <- 1        
data$rc83[(data$item201 < 4 | data$item371 < 4) & data$item116 >  1] <- 0
data$rc83[                                        data$item116 == 1] <- NA

data$rc84[ data$item202 > 3 & data$item372 > 3 &  data$item117 >  1] <- 1        
data$rc84[(data$item202 < 4 | data$item372 < 4) & data$item117 >  1] <- 0
data$rc84[                                        data$item117 == 1] <- NA

####### Hindrance-Challenge

data$hc1[ data$item203 > 3 & data$item288 > 3 &  data$item22 >  1] <- 1        
data$hc1[(data$item203 < 4 | data$item288 < 4) & data$item22 >  1] <- 0
data$hc1[                                        data$item22 == 1] <- NA

data$hc2[ data$item204 > 3 & data$item289 > 3 &  data$item23 >  1] <- 1        
data$hc2[(data$item204 < 4 | data$item289 < 4) & data$item23 >  1] <- 0
data$hc2[                                        data$item23 == 1] <- NA

data$hc3[ data$item205 > 3 & data$item290 > 3 &  data$item24 >  1] <- 1        
data$hc3[(data$item205 < 4 | data$item290 < 4) & data$item24 >  1] <- 0
data$hc3[                                        data$item24 == 1] <- NA

data$hc4[ data$item206 > 3 & data$item291 > 3 &  data$item25 >  1] <- 1        
data$hc4[(data$item206 < 4 | data$item291 < 4) & data$item25 >  1] <- 0
data$hc4[                                        data$item25 == 1] <- NA

data$hc5[ data$item207 > 3 & data$item292 > 3 &  data$item26 >  1] <- 1        
data$hc5[(data$item207 < 4 | data$item292 < 4) & data$item26 >  1] <- 0
data$hc5[                                        data$item26 == 1] <- NA

data$hc6[ data$item208 > 3 & data$item293 > 3 &  data$item27 >  1] <- 1        
data$hc6[(data$item208 < 4 | data$item293 < 4) & data$item27 >  1] <- 0
data$hc6[                                        data$item27 == 1] <- NA

data$hc7[ data$item209 > 3 & data$item294 > 3 &  data$item28 >  1] <- 1        
data$hc7[(data$item209 < 4 | data$item294 < 4) & data$item28 >  1] <- 0
data$hc7[                                        data$item28 == 1] <- NA

data$hc8[ data$item210 > 3 & data$item295 > 3 &  data$item29 >  1] <- 1        
data$hc8[(data$item210 < 4 | data$item295 < 4) & data$item29 >  1] <- 0
data$hc8[                                        data$item29 == 1] <- NA

data$hc9[ data$item211 > 3 & data$item296 > 3 &  data$item30 >  1] <- 1        
data$hc9[(data$item211 < 4 | data$item296 < 4) & data$item30 >  1] <- 0
data$hc9[                                        data$item30 == 1] <- NA

data$hc10[ data$item212 > 3 & data$item297 > 3 &  data$item31 >  1] <- 1        
data$hc10[(data$item212 < 4 | data$item297 < 4) & data$item31 >  1] <- 0
data$hc10[                                        data$item31 == 1] <- NA

data$hc11[ data$item213 > 3 & data$item298 > 3 &  data$item32 >  1] <- 1        
data$hc11[(data$item213 < 4 | data$item298 < 4) & data$item32 >  1] <- 0
data$hc11[                                        data$item32 == 1] <- NA

data$hc12[ data$item214 > 3 & data$item299 > 3 &  data$item42 >  1] <- 1        
data$hc12[(data$item214 < 4 | data$item299 < 4) & data$item42 >  1] <- 0
data$hc12[                                        data$item42 == 1] <- NA

data$hc13[ data$item215 > 3 & data$item300 > 3 &  data$item43 >  1] <- 1        
data$hc13[(data$item215 < 4 | data$item300 < 4) & data$item43 >  1] <- 0
data$hc13[                                        data$item43 == 1] <- NA

data$hc14[ data$item216 > 3 & data$item301 > 3 &  data$item44 >  1] <- 1        
data$hc14[(data$item216 < 4 | data$item301 < 4) & data$item44 >  1] <- 0
data$hc14[                                        data$item44 == 1] <- NA

data$hc15[ data$item217 > 3 & data$item302 > 3 &  data$item45 >  1] <- 1        
data$hc15[(data$item217 < 4 | data$item302 < 4) & data$item45 >  1] <- 0
data$hc15[                                        data$item45 == 1] <- NA

data$hc16[ data$item218 > 3 & data$item303 > 3 &  data$item46 >  1] <- 1        
data$hc16[(data$item218 < 4 | data$item303 < 4) & data$item46 >  1] <- 0
data$hc16[                                        data$item46 == 1] <- NA

data$hc17[ data$item219 > 3 & data$item304 > 3 &  data$item47 >  1] <- 1        
data$hc17[(data$item219 < 4 | data$item304 < 4) & data$item47 >  1] <- 0
data$hc17[                                        data$item47 == 1] <- NA

data$hc18[ data$item220 > 3 & data$item305 > 3 &  data$item48 >  1] <- 1        
data$hc18[(data$item220 < 4 | data$item305 < 4) & data$item48 >  1] <- 0
data$hc18[                                        data$item48 == 1] <- NA

data$hc19[ data$item221 > 3 & data$item306 > 3 &  data$item49 >  1] <- 1        
data$hc19[(data$item221 < 4 | data$item306 < 4) & data$item49 >  1] <- 0
data$hc19[                                        data$item49 == 1] <- NA

data$hc20[ data$item222 > 3 & data$item307 > 3 &  data$item50 >  1] <- 1        
data$hc20[(data$item222 < 4 | data$item307 < 4) & data$item50 >  1] <- 0
data$hc20[                                        data$item50 == 1] <- NA

data$hc21[ data$item223 > 3 & data$item309 > 3 &  data$item52 >  1] <- 1        
data$hc21[(data$item223 < 4 | data$item309 < 4) & data$item52 >  1] <- 0
data$hc21[                                        data$item52 == 1] <- NA

data$hc22[ data$item224 > 3 & data$item310 > 3 &  data$item53 >  1] <- 1        
data$hc22[(data$item224 < 4 | data$item310 < 4) & data$item53 >  1] <- 0
data$hc22[                                        data$item53 == 1] <- NA

data$hc23[ data$item225 > 3 & data$item311 > 3 &  data$item54 >  1] <- 1        
data$hc23[(data$item225 < 4 | data$item311 < 4) & data$item54 >  1] <- 0
data$hc23[                                        data$item54 == 1] <- NA

data$hc24[ data$item226 > 3 & data$item312 > 3 &  data$item55 >  1] <- 1        
data$hc24[(data$item226 < 4 | data$item312 < 4) & data$item55 >  1] <- 0
data$hc24[                                        data$item55 == 1] <- NA

data$hc25[ data$item227 > 3 & data$item313 > 3 &  data$item56 >  1] <- 1        
data$hc25[(data$item227 < 4 | data$item313 < 4) & data$item56 >  1] <- 0
data$hc25[                                        data$item56 == 1] <- NA

data$hc26[ data$item228 > 3 & data$item314 > 3 &  data$item57 >  1] <- 1        
data$hc26[(data$item228 < 4 | data$item314 < 4) & data$item57 >  1] <- 0
data$hc26[                                        data$item57 == 1] <- NA

data$hc27[ data$item229 > 3 & data$item315 > 3 &  data$item58 >  1] <- 1        
data$hc27[(data$item229 < 4 | data$item315 < 4) & data$item58 >  1] <- 0
data$hc27[                                        data$item58 == 1] <- NA

data$hc28[ data$item230 > 3 & data$item316 > 3 &  data$item59 >  1] <- 1        
data$hc28[(data$item230 < 4 | data$item316 < 4) & data$item59 >  1] <- 0
data$hc28[                                        data$item59 == 1] <- NA

data$hc29[ data$item231 > 3 & data$item317 > 3 &  data$item60 >  1] <- 1        
data$hc29[(data$item231 < 4 | data$item317 < 4) & data$item60 >  1] <- 0
data$hc29[                                        data$item60 == 1] <- NA

data$hc30[ data$item232 > 3 & data$item318 > 3 &  data$item62 >  1] <- 1        
data$hc30[(data$item232 < 4 | data$item318 < 4) & data$item62 >  1] <- 0
data$hc30[                                        data$item62 == 1] <- NA

data$hc31[ data$item233 > 3 & data$item319 > 3 &  data$item63 >  1] <- 1        
data$hc31[(data$item233 < 4 | data$item319 < 4) & data$item63 >  1] <- 0
data$hc31[                                        data$item63 == 1] <- NA

data$hc32[ data$item234 > 3 & data$item320 > 3 &  data$item64 >  1] <- 1        
data$hc32[(data$item234 < 4 | data$item320 < 4) & data$item64 >  1] <- 0
data$hc32[                                        data$item64 == 1] <- NA

data$hc33[ data$item235 > 3 & data$item321 > 3 &  data$item65 >  1] <- 1        
data$hc33[(data$item235 < 4 | data$item321 < 4) & data$item65 >  1] <- 0
data$hc33[                                        data$item65 == 1] <- NA

data$hc34[ data$item236 > 3 & data$item322 > 3 &  data$item67 >  1] <- 1        
data$hc34[(data$item236 < 4 | data$item322 < 4) & data$item67 >  1] <- 0
data$hc34[                                        data$item67 == 1] <- NA

data$hc35[ data$item237 > 3 & data$item323 > 3 &  data$item68 >  1] <- 1        
data$hc35[(data$item237 < 4 | data$item323 < 4) & data$item68 >  1] <- 0
data$hc35[                                        data$item68 == 1] <- NA

data$hc36[ data$item238 > 3 & data$item324 > 3 &  data$item69 >  1] <- 1        
data$hc36[(data$item238 < 4 | data$item324 < 4) & data$item69 >  1] <- 0
data$hc36[                                        data$item69 == 1] <- NA

data$hc37[ data$item239 > 3 & data$item325 > 3 &  data$item70 >  1] <- 1        
data$hc37[(data$item239 < 4 | data$item325 < 4) & data$item70 >  1] <- 0
data$hc37[                                        data$item70 == 1] <- NA

data$hc38[ data$item240 > 3 & data$item326 > 3 &  data$item71 >  1] <- 1        
data$hc38[(data$item240 < 4 | data$item326 < 4) & data$item71 >  1] <- 0
data$hc38[                                        data$item71 == 1] <- NA

data$hc39[ data$item241 > 3 & data$item327 > 3 &  data$item72 >  1] <- 1        
data$hc39[(data$item241 < 4 | data$item327 < 4) & data$item72 >  1] <- 0
data$hc39[                                        data$item72 == 1] <- NA

data$hc40[ data$item242 > 3 & data$item328 > 3 &  data$item73 >  1] <- 1        
data$hc40[(data$item242 < 4 | data$item328 < 4) & data$item73 >  1] <- 0
data$hc40[                                        data$item73 == 1] <- NA

data$hc41[ data$item243 > 3 & data$item329 > 3 &  data$item74 >  1] <- 1        
data$hc41[(data$item243 < 4 | data$item329 < 4) & data$item74 >  1] <- 0
data$hc41[                                        data$item74 == 1] <- NA

data$hc42[ data$item244 > 3 & data$item330 > 3 &  data$item75 >  1] <- 1        
data$hc42[(data$item244 < 4 | data$item330 < 4) & data$item75 >  1] <- 0
data$hc42[                                        data$item75 == 1] <- NA

data$hc43[ data$item245 > 3 & data$item331 > 3 &  data$item76 >  1] <- 1        
data$hc43[(data$item245 < 4 | data$item331 < 4) & data$item76 >  1] <- 0
data$hc43[                                        data$item76 == 1] <- NA

data$hc44[ data$item246 > 3 & data$item332 > 3 &  data$item77 >  1] <- 1        
data$hc44[(data$item246 < 4 | data$item332 < 4) & data$item77 >  1] <- 0
data$hc44[                                        data$item77 == 1] <- NA

data$hc45[ data$item247 > 3 & data$item333 > 3 &  data$item78 >  1] <- 1        
data$hc45[(data$item247 < 4 | data$item333 < 4) & data$item78 >  1] <- 0
data$hc45[                                        data$item78 == 1] <- NA

data$hc46[ data$item249 > 3 & data$item334 > 3 &  data$item79 >  1] <- 1        
data$hc46[(data$item249 < 4 | data$item334 < 4) & data$item79 >  1] <- 0
data$hc46[                                        data$item79 == 1] <- NA

data$hc47[ data$item250 > 3 & data$item335 > 3 &  data$item80 >  1] <- 1        
data$hc47[(data$item250 < 4 | data$item335 < 4) & data$item80 >  1] <- 0
data$hc47[                                        data$item80 == 1] <- NA

data$hc48[ data$item251 > 3 & data$item336 > 3 &  data$item81 >  1] <- 1        
data$hc48[(data$item251 < 4 | data$item336 < 4) & data$item81 >  1] <- 0
data$hc48[                                        data$item81 == 1] <- NA

data$hc49[ data$item252 > 3 & data$item337 > 3 &  data$item82 >  1] <- 1        
data$hc49[(data$item252 < 4 | data$item337 < 4) & data$item82 >  1] <- 0
data$hc49[                                        data$item82 == 1] <- NA

data$hc50[ data$item253 > 3 & data$item338 > 3 &  data$item83 >  1] <- 1        
data$hc50[(data$item253 < 4 | data$item338 < 4) & data$item83 >  1] <- 0
data$hc50[                                        data$item83 == 1] <- NA

data$hc51[ data$item254 > 3 & data$item339 > 3 &  data$item84 >  1] <- 1        
data$hc51[(data$item254 < 4 | data$item339 < 4) & data$item84 >  1] <- 0
data$hc51[                                        data$item84 == 1] <- NA

data$hc52[ data$item255 > 3 & data$item340 > 3 &  data$item85 >  1] <- 1        
data$hc52[(data$item255 < 4 | data$item340 < 4) & data$item85 >  1] <- 0
data$hc52[                                        data$item85 == 1] <- NA

data$hc53[ data$item256 > 3 & data$item341 > 3 &  data$item86 >  1] <- 1        
data$hc53[(data$item256 < 4 | data$item341 < 4) & data$item86 >  1] <- 0
data$hc53[                                        data$item86 == 1] <- NA

data$hc54[ data$item257 > 3 & data$item342 > 3 &  data$item87 >  1] <- 1        
data$hc54[(data$item257 < 4 | data$item342 < 4) & data$item87 >  1] <- 0
data$hc54[                                        data$item87 == 1] <- NA

data$hc55[ data$item258 > 3 & data$item343 > 3 &  data$item88 >  1] <- 1        
data$hc55[(data$item258 < 4 | data$item343 < 4) & data$item88 >  1] <- 0
data$hc55[                                        data$item88 == 1] <- NA

data$hc56[ data$item259 > 3 & data$item344 > 3 &  data$item89 >  1] <- 1        
data$hc56[(data$item259 < 4 | data$item344 < 4) & data$item89 >  1] <- 0
data$hc56[                                        data$item89 == 1] <- NA

data$hc57[ data$item260 > 3 & data$item345 > 3 &  data$item90 >  1] <- 1        
data$hc57[(data$item260 < 4 | data$item345 < 4) & data$item90 >  1] <- 0
data$hc57[                                        data$item90 == 1] <- NA

data$hc58[ data$item261 > 3 & data$item346 > 3 &  data$item91 >  1] <- 1        
data$hc58[(data$item261 < 4 | data$item346 < 4) & data$item91 >  1] <- 0
data$hc58[                                        data$item91 == 1] <- NA

data$hc59[ data$item262 > 3 & data$item347 > 3 &  data$item92 >  1] <- 1        
data$hc59[(data$item262 < 4 | data$item347 < 4) & data$item92 >  1] <- 0
data$hc59[                                        data$item92 == 1] <- NA

data$hc60[ data$item263 > 3 & data$item348 > 3 &  data$item93 >  1] <- 1        
data$hc60[(data$item263 < 4 | data$item348 < 4) & data$item93 >  1] <- 0
data$hc60[                                        data$item93 == 1] <- NA

data$hc61[ data$item264 > 3 & data$item349 > 3 &  data$item94 >  1] <- 1        
data$hc61[(data$item264 < 4 | data$item349 < 4) & data$item94 >  1] <- 0
data$hc61[                                        data$item94 == 1] <- NA

data$hc62[ data$item265 > 3 & data$item350 > 3 &  data$item95 >  1] <- 1        
data$hc62[(data$item265 < 4 | data$item350 < 4) & data$item95 >  1] <- 0
data$hc62[                                        data$item95 == 1] <- NA

data$hc63[ data$item266 > 3 & data$item351 > 3 &  data$item96 >  1] <- 1        
data$hc63[(data$item266 < 4 | data$item351 < 4) & data$item96 >  1] <- 0
data$hc63[                                        data$item96 == 1] <- NA

data$hc64[ data$item267 > 3 & data$item352 > 3 &  data$item97 >  1] <- 1        
data$hc64[(data$item267 < 4 | data$item352 < 4) & data$item97 >  1] <- 0
data$hc64[                                        data$item97 == 1] <- NA

data$hc65[ data$item268 > 3 & data$item353 > 3 &  data$item98 >  1] <- 1        
data$hc65[(data$item268 < 4 | data$item353 < 4) & data$item98 >  1] <- 0
data$hc65[                                        data$item98 == 1] <- NA

data$hc66[ data$item269 > 3 & data$item354 > 3 &  data$item99 >  1] <- 1        
data$hc66[(data$item269 < 4 | data$item354 < 4) & data$item99 >  1] <- 0
data$hc66[                                        data$item99 == 1] <- NA

data$hc67[ data$item270 > 3 & data$item355 > 3 &  data$item100 >  1] <- 1        
data$hc67[(data$item270 < 4 | data$item355 < 4) & data$item100 >  1] <- 0
data$hc67[                                        data$item100 == 1] <- NA

data$hc68[ data$item271 > 3 & data$item356 > 3 &  data$item101 >  1] <- 1        
data$hc68[(data$item271 < 4 | data$item356 < 4) & data$item101 >  1] <- 0
data$hc68[                                        data$item101 == 1] <- NA

data$hc69[ data$item272 > 3 & data$item357 > 3 &  data$item102 >  1] <- 1        
data$hc69[(data$item272 < 4 | data$item357 < 4) & data$item102 >  1] <- 0
data$hc69[                                        data$item102 == 1] <- NA

data$hc70[ data$item273 > 3 & data$item358 > 3 &  data$item103 >  1] <- 1        
data$hc70[(data$item273 < 4 | data$item358 < 4) & data$item103 >  1] <- 0
data$hc70[                                        data$item103 == 1] <- NA

data$hc71[ data$item274 > 3 & data$item359 > 3 &  data$item104 >  1] <- 1        
data$hc71[(data$item274 < 4 | data$item359 < 4) & data$item104 >  1] <- 0
data$hc71[                                        data$item104 == 1] <- NA

data$hc72[ data$item275 > 3 & data$item360 > 3 &  data$item105 >  1] <- 1        
data$hc72[(data$item275 < 4 | data$item360 < 4) & data$item105 >  1] <- 0
data$hc72[                                        data$item105 == 1] <- NA

data$hc73[ data$item276 > 3 & data$item361 > 3 &  data$item106 >  1] <- 1        
data$hc73[(data$item276 < 4 | data$item361 < 4) & data$item106 >  1] <- 0
data$hc73[                                        data$item106 == 1] <- NA

data$hc74[ data$item277 > 3 & data$item362 > 3 &  data$item107 >  1] <- 1        
data$hc74[(data$item277 < 4 | data$item362 < 4) & data$item107 >  1] <- 0
data$hc74[                                        data$item107 == 1] <- NA

data$hc75[ data$item278 > 3 & data$item363 > 3 &  data$item108 >  1] <- 1        
data$hc75[(data$item278 < 4 | data$item363 < 4) & data$item108 >  1] <- 0
data$hc75[                                        data$item108 == 1] <- NA

data$hc76[ data$item279 > 3 & data$item364 > 3 &  data$item109 >  1] <- 1        
data$hc76[(data$item279 < 4 | data$item364 < 4) & data$item109 >  1] <- 0
data$hc76[                                        data$item109 == 1] <- NA

data$hc77[ data$item280 > 3 & data$item365 > 3 &  data$item110 >  1] <- 1        
data$hc77[(data$item280 < 4 | data$item365 < 4) & data$item110 >  1] <- 0
data$hc77[                                        data$item110 == 1] <- NA

data$hc78[ data$item281 > 3 & data$item366 > 3 &  data$item111 >  1] <- 1        
data$hc78[(data$item281 < 4 | data$item366 < 4) & data$item111 >  1] <- 0
data$hc78[                                        data$item111 == 1] <- NA

data$hc79[ data$item282 > 3 & data$item367 > 3 &  data$item112 >  1] <- 1        
data$hc79[(data$item282 < 4 | data$item367 < 4) & data$item112 >  1] <- 0
data$hc79[                                        data$item112 == 1] <- NA

data$hc80[ data$item283 > 3 & data$item368 > 3 &  data$item113 >  1] <- 1        
data$hc80[(data$item283 < 4 | data$item368 < 4) & data$item113 >  1] <- 0
data$hc80[                                        data$item113 == 1] <- NA

data$hc81[ data$item284 > 3 & data$item369 > 3 &  data$item114 >  1] <- 1        
data$hc81[(data$item284 < 4 | data$item369 < 4) & data$item114 >  1] <- 0
data$hc81[                                        data$item114 == 1] <- NA

data$hc82[ data$item285 > 3 & data$item370 > 3 &  data$item115 >  1] <- 1        
data$hc82[(data$item285 < 4 | data$item370 < 4) & data$item115 >  1] <- 0
data$hc82[                                        data$item115 == 1] <- NA

data$hc83[ data$item286 > 3 & data$item371 > 3 &  data$item116 >  1] <- 1        
data$hc83[(data$item286 < 4 | data$item371 < 4) & data$item116 >  1] <- 0
data$hc83[                                        data$item116 == 1] <- NA

data$hc84[ data$item287 > 3 & data$item372 > 3 &  data$item117 >  1] <- 1        
data$hc84[(data$item287 < 4 | data$item372 < 4) & data$item117 >  1] <- 0
data$hc84[                                        data$item117 == 1] <- NA

#isolated <- data[,c(22:32, 42:50, 52:60, 62:65, 67:117,411:662)]  ## characteristic ratings scattered because we didn't ask for resource/demand ratings for characteristics such as "exposure to radiation" - 9/12/22