# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end

ActiveSupport::Inflector.inflections do |inflect|
  # RAE
  # PLURAL. 1. Reglas de formación del plural.
  # a) Sustantivos y adjetivos terminados en vocal átona o en -e tónica. Forman el plural con -s: casas
  inflect.plural /([aeioué])$/i, '\1s'
  inflect.singular /([aeioué])s$/i, '\1'

  # b) Sustantivos y adjetivos terminados en -a o en -o tónicas. Aunque durante algún tiempo vacilaron entre el plural en -s y el plural en -es, en la actualidad forman el plural únicamente con -s: papás, sofás, bajás, burós, rococós, dominós
  inflect.plural   /([áó])$/i,  '\1s'
  inflect.singular /([áó])s$/i, '\1'
  # Son excepción a esta regla los sustantivos:
  inflect.irregular('faralá', 'faralaes')
  inflect.irregular('albalá', 'albaláes')
  inflect.plural   /^no$/i, 'noes'
  inflect.singular /^noes$/i, 'no'
  inflect.plural   /^yo$/i, 'yoes'
  inflect.singular /^yoes$/i, 'yo'

  # c) Sustantivos y adjetivos terminados en -i o en -u tónicas. Admiten generalmente dos formas de plural, una con -es y otra con -s, aunque en la lengua culta suele preferirse la primera: bisturíes o bisturís, carmesíes o carmesís, tisúes o tisús, tabúes o tabús.
  inflect.plural   /([íú])$/i, '\1es'
  inflect.singular /([íú])es$/i, '\1'
  # Por otra parte, hay voces, generalmente las procedentes de otras lenguas o las que pertenecen a registros coloquiales o populares, que solo forman el plural con -s: gachís, pirulís, popurrís, champús, menús, tutús, vermús.
  inflect.irregular('gachí', 'gachís')
  inflect.irregular('pirulí', 'pirulís')
  inflect.irregular('popurrí', 'popurrís')
  inflect.irregular('champú', 'champús')
  inflect.irregular('menú', 'menús')
  inflect.irregular('tutú', 'tutús')
  inflect.irregular('vermú', 'vermús')

  # d) Sustantivos y adjetivos terminados en -y precedida de vocal. Forman tradicionalmente su plural con -es: rey, pl. reyes; ley, pl. leyes; buey, pl. bueyes; ay, pl. ayes; convoy, pl. convoyes; bocoy, pl. bocoyes.
  inflect.plural   /([aeiou])y$/i,  '\1yes'
  inflect.singular /([aeiou])yes$/i, '\1y'
  # Sin embargo, los sustantivos y adjetivos con esta misma configuración que se han incorporado al uso más recientemente —en su mayoría palabras tomadas de otras lenguas— hacen su plural en -s. En ese caso, la y del singular mantiene en plural su carácter vocálico y, por lo tanto, debe pasar a escribirse i (→ i, 5b): gay, pl. gais; jersey, pl. jerséis; espray, pl. espráis; yóquey, pl. yoqueis.
  inflect.irregular('gay',    'gais')
  inflect.irregular('jersey', 'jerséis')
  inflect.irregular('espray', 'espráis')
  inflect.irregular('yóquey', 'yoqueis')
  # Pertenecen a la etapa de transición entre ambas normas y admiten,
  # por ello, ambos plurales las palabras coy, pl. coyes o cois;
  # estay, pl. estayes o estáis; noray, pl. norayes o noráis;
  # guirigay, pl. guirigayes o guirigáis,
  # con preferencia hoy por las formas con -s.
  inflect.plural   /^coy$/i, 'cois'
  inflect.singular /^cois$/i, 'coy'
  inflect.irregular('estay',    'estáis')
  inflect.irregular('noray',    'noráis')
  inflect.irregular('guirigay', 'guirigáis')

  # e) Voces extranjeras terminadas en -y precedida de consonante. Deben adaptarse gráficamente al español sustituyendo la -y por -i: dandi (del ingl. dandy); panti (del ingl. panty); ferri (del ingl. ferry). Su plural se forma, como el de las palabras españolas con esta terminación (→ a), añadiendo una -s: dandis, pantis, ferris. No son admisibles, por tanto, los plurales que conservan la -y del singular etimológico: dandys, pantys, ferrys.
  inflect.plural   /([^aeiou])(y)$/i, '\1is'

  # f) Sustantivos y adjetivos terminados en -s o en -x. Si son monosílabos o polisílabos agudos, forman el plural añadiendo -es: tos, pl. toses; vals, pl. valses, fax, pl. faxes; compás, pl. compases; francés, pl. franceses. En el resto de los casos, permanecen invariables: crisis, pl. crisis; tórax, pl. tórax; fórceps, pl. fórceps. Es excepción a esta regla la palabra dux, que, aun siendo monosílaba, es invariable en plural: los dux. También permanecen invariables los polisílabos agudos cuando se trata de voces compuestas cuyo segundo elemento es ya un plural: ciempiés, pl. ciempiés (no ciempieses); buscapiés, pl. buscapiés (no buscapieses), pasapurés, pl. pasapurés (no pasapureses).
  inflect.plural   /([á])s$/i,  'ases'
  inflect.plural   /([é])s$/i,  'eses'
  inflect.plural   /([í])s$/i,  'ises'
  inflect.plural   /([ó])s$/i,  'oses'
  inflect.plural   /([ú])s$/i,  'uses'
  inflect.plural   /^([^aeiouáéíóúü]+)([aeiou]*)([^aeiouáéíóúü]*)([sx])$/i,   '\1\2\3\4es'
  inflect.singular /^([^aeiouáéíóúü]+)([aeiou]*)([^aeiouáéíóúü]*)([sx])es$/i, '\1\2\3\4'

  # g) Sustantivos y adjetivos terminados en -l, -r, -n, -d, -z, -j. Si no van precedidas de otra consonante (→ j), forman el plural con -es: dócil, pl. dóciles; color, pl. colores; pan, pl. panes; césped, pl. céspedes; cáliz, pl. cálices; reloj, pl. relojes. Los extranjerismos que terminen en estas consonantes deben seguir esta misma regla: píxel, pl. píxeles; máster, pl. másteres; pin, pl. pines; interfaz, pl. interfaces; sij, pl. sijes. Son excepción las palabras esdrújulas, que permanecen invariables en plural: polisíndeton, pl. (los) polisíndeton; trávelin, pl. (los) trávelin; cáterin, pl. (los) cáterin. Excepcionalmente, el plural de hipérbaton es hipérbatos.
  inflect.plural   /([aeiouáéíóúü]+)([lrndzj])$/i, '\1\2es'
  inflect.singular /([aeiouáéíóúü]+)([lrndzj])es$/i, '\1\2'
  inflect.irregular('hipérbaton', 'hipérbatos')

  # h) Sustantivos y adjetivos terminados en consonantes distintas de -l, -r, -n, -d, -z, -j, -s, -x, -ch. Se trate de onomatopeyas o de voces procedentes de otras lenguas, hacen el plural en -s: crac, pl. cracs; zigzag, pl. zigzags; esnob, pl. esnobs; chip, pl. chips; mamut, pl. mamuts; cómic, pl. cómics. Se exceptúa de esta regla la palabra club, que admite dos plurales, clubs y clubes (→ club). También son excepciones el arabismo imam (→ imán), cuyo plural asentado es imames, y el latinismo álbum (→ álbum), cuyo plural asentado es álbumes.
  inflect.plural   /([bcfgkmpqtvw])$/i,  '\1s'
  inflect.singular /([bcfgkmpqtvw])s$/i, '\1'
  inflect.irregular('imam',  'imames')
  inflect.irregular('álbum', 'álbumes')
  inflect.irregular('club', 'clubes')

  # i) Sustantivos y adjetivos terminados en -ch. Procedentes todos ellos de otras lenguas, o bien se mantienen invariables en plural: (los) crómlech, (los) zarévich, (los) pech, o bien hacen el plural en -es: sándwich, pl. sándwiches; maquech, pl. maqueches.
  inflect.plural   /(ch)$/i, '\1es'
  inflect.singular /(ch)es$/i, '\1'

  # j) Sustantivos y adjetivos terminados en grupo consonántico. Procedentes todos ellos de otras lenguas, forman el plural con -s (salvo aquellos que terminan ya en -s, que siguen la regla general; → f): gong, pl. gongs; iceberg, pl. icebergs; récord, pl. récords. Se exceptúan de esta norma las voces compost, karst, test, trust y kibutz, que permanecen invariables en plural, pues la adición de una -s en estos casos daría lugar a una secuencia de difícil articulación en español. También son excepción los anglicismos lord y milord, cuyo plural asentado en español es lores y milores, respectivamente.
  inflect.plural   /([^aeiouáéíóúü])([bcdfghjklmnñpqrtvwxz])$/i, '\1\2s'
  inflect.singular /([^aeiouáéíóúü])([bcdfghjklmnñpqrtvwxz])s$/i, '\1\2'
  inflect.irregular('lord',   'lores')
  inflect.irregular('milord', 'milores')
  inflect.irregular('pais', 'paises')
  inflect.irregular('mensaje', 'mensajes')

  # 2. Otras cuestiones relativas al plural.
  # 2.1. Cambio de la vocal tónica. La vocal tónica es la misma en el singular y en el plural, salvo en las palabras espécimen, régimen y carácter, en las que el acento cambia de lugar en el plural: especímenes, regímenes y caracteres [karaktéres].
  inflect.irregular('espécimen', 'especímenes')
  inflect.irregular('régimen',   'regímenes')
  inflect.irregular('carácter',  'caracteres')
  inflect.irregular('upload',  'uploads')

  inflect.uncountable %w(fe te parentesis viernes virus crisis biceps dux ciempiés
                         torax climax este oeste norte sur sed cariz tez caos
                         salud grima fenix nupcias viveres hielo equipaje heces
                         buscapiés pasapurés polisíndeton trávelin cáterin
                         crómlech zarévich pech compost karst test trust kibutz
                         lapsus cónfer confíteor exequátur imprimátur)
end
