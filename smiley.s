
.section .data # alustaa/säilyttää datan

msg: # muuttuja
        # haluttu kuva
        .ascii "\n"
        .ascii "                            oooo$$$$$$$$$$$$oooo\n"
        .ascii "                        oo$$$$$$$$$$$$$$$$$$$$$$$$o\n"
        .ascii "                     oo$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$o         o$ $$ o$\n"
        .ascii "     o $ oo        o$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$o       $$ $$ $$o$\n"
        .ascii "  oo $ $ \"$      o$$$$$$$$$    $$$$$$$$$$$$$    $$$$$$$$$o       $$$o$$o$\n"
        .ascii "  \"$$$$$$o$     o$$$$$$$$$      $$$$$$$$$$$      $$$$$$$$$$o    $$$$$$$$\n"
        .ascii "    $$$$$$$    $$$$$$$$$$$      $$$$$$$$$$$      $$$$$$$$$$$$$$$$$$$$$$$\n"
        .ascii "    $$$$$$$$$$$$$$$$$$$$$$$    $$$$$$$$$$$$$    $$$$$$$$$$$$$$  \"\"\"$$$\n"
        .ascii "     \"$$$\"\"\"\"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$     \"$$$\n"    
        .ascii "      $$$   o$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$    \"$$$o\n"
        .ascii "     o$$\"   $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$      $$$o\n"
        .ascii "     $$$    $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\" \"$$$$$$ooooo$$$$o\n"
        .ascii "    o$$$oooo$$$$$  $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$   o$$$$$$$$$$$$$$$$$\n"
        .ascii "    $$$$$$$$\"$$$$   $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$     $$$$\"\"\"\"\"\"\"\"\n"
        .ascii "   \"\"\"\"       $$$$   \"$$$$$$$$$$$$$$$$$$$$$$$$$$$$\"       o$$$\n"
        .ascii "              \"$$$o     \"\"\"$$$$$$$$$$$$$$$$$$\"$$\"         $$$\n"
        .ascii "               $$$o           \"$$\"\"$$$$$$\"\"\"\"           o$$$\n"
        .ascii "                $$$$o                  oo             o$$$\"\n"
        .ascii "                 \"$$$$o       o$$$$$$o\"$$$$o        o$$$$\n"
        .ascii "                   \"$$$$$oo      \"\"$$$$o$$$$$o   o$$$$\"\"\n"  
        .ascii "                      \"\"$$$$$oooo   \"$$$o$$$$$$$$$\"\"\"\n"
        .ascii "                         \"\"$$$$$$$oo $$$$$$$$$$\n"       
        .ascii "                                 \"\"\"\"$$$$$$$$$$$\n"    
        .ascii "                                     $$$$$$$$$$$$\n"       
        .ascii "                                      $$$$$$$$$$\"\n"      
        .ascii "                                       \"$$$\"\"\"\"\n"

            len = . - msg                  # jonon pituus 

.section .text # sisältää suoritettavan koodin

    .global _start # globaali piste suorituksen aloittamiselle

_start: # suorituspiste
        
        # argumentteja
        mov     $len,%rdx        # viestin pituus.
        lea     msg(%rip),%rsi   # osoitin kirjoitettavaan viestiin
        mov     $1,%rdi          # asettaa rekisterin arvoksi 1
        mov     $1,%rax          # asettaa arvoksi 1
        syscall                  # kutsu ohjelman suorittamiseen

        mov     $0,%rdi          # poistumiskoodi
        mov     $60,%rax         # asettaa rekisterin arvoksi 60
        syscall                  # kutsu ohjelman lopettamiseksi
