SOLUTIONS = [{language: Language.find_by_name('Basic'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "10 PRINT \"SWAG\"\n20 PAUSE 15000\n30 GOTO 10\n"},

                    {language: Language.find_by_name('Boo'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "while true:\n\tprint 'Swag'\n\tSystem.Threading.Thread.Sleep(15s)\n"},

                    {language: Language.find_by_name('C'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "\n#include <stdio.h>\n#include <unistd.h>\n\nint main(int argc, const char** arg) {\n\twhile (1) {\n\t\tprintf(\"Swag\\n\");\n\t\tsleep(15);\n\t}\n\treturn 0;\n}\n"},

                    {language: Language.find_by_name('Common Lisp'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "(loop\n\t(write-line \"Swag\")\n\t(sleep 15))"},

                    {language: Language.find_by_name('Clojure'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "(while true \n  (do (println \"Swag\")\n      (Thread/sleep 15000)))\n\n"},

                    {language: Language.find_by_name('CoffeeScript'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "setInterval ->\n\talert(\"Swag\")\n, 15000\n"},

                    {language: Language.find_by_name('C++'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "#include <stdio.h>\n#include <unistd.h>\n\nint main(){\n    while (true) {\n\t    std::cout << \"Swag\" << std::endl;\n\t    sleep(15);\n    }\n    return 0;\n}\n"},

                    {language: Language.find_by_name('C#'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "using Console;\n\npublic class Swag {\n\tpublic static void main() {\n\t\twhile(true) {\n\t\t\tConsole.writeLine(\"Swag\");\n\t\t\tSystem.Threading.Thread.Sleep(15000);\n\t\t}\n\t}\n}"},

                    {language: Language.find_by_name('Dart'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "import 'dart:async';\n\nvoid main() {\n  new Timer.repeating(15 * 1000,\n    (Timer t) =>\n      print(\"Swag\"));\n}\n"},

                    {language: Language.find_by_name('Emacs Lisp'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: ";; Run with emacs --script swag.el\n\n(while t\n  (message \"Swag\")\n  (sleep-for 15))\n"},

                    {language: Language.find_by_name('Erlang'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "#!/usr/bin/escript\n\n\n% Author: Lee Avital\n% Description: Swag\n\n\n-module(swag).\n\nthe_timer() ->\n   io:format(\"hello world\\n\"),\n   timer:sleep(15000),\n   the_timer().\n    \n\nmain( _ ) ->\n   the_timer().\n\n\n\n\n\n\n\n"},

                    {language: Language.find_by_name('F#'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "open System.Threading\n\n[<EntryPoint>]\nlet main argv = \n    while true do \n        printfn \"Swag\"\n        Thread.Sleep 15000\n    0"},

                    {language: Language.find_by_name('Go'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "package main\n\nimport (\n    \"fmt\"\n    \"time\"\n)\n\nfunc main() {\n   for ;; {\n\tfmt.Println(\"Swag\")\n\ttime.Sleep(15 * time.Second)\n    }\n}\n"},

                    {language: Language.find_by_name('Groovy'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "while(true){\n\tprintln \"Swag\"\n\tThread.sleep(15000)\n}"},

                    {language: Language.find_by_name('J'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "f =: 3 : 0\n  while. 1 do.\n    'Swag' (1!:2) 2 \n    usleep 15000000\n  end.\n)\nf ''\nexit 0\n"},

                    {language: Language.find_by_name('Arduino'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "void setup() {\n  Serial.begin(9600); \n}\n\nvoid loop() {\n  Serial.println(\"swag\");\n  delay(15000); \n}\n"},

                    {language: Language.find_by_name('Java'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "public class Swag {\n\tpublic static void main(String[] args) throws InterruptedException {\n\t\twhile(true) {\n\t\t\tSystem.out.println(\"Swag\");\n\t\t\tThread.sleep(15000);\n\t\t}\n\t}\n}\n"},

                    {language: Language.find_by_name('Julia'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "while true\n  println(\"Swag\")\n  sleep(15)\nend\n"},

                    {language: Language.find_by_name('JavaScript'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "setInterval(function() {\n\talert(\"Swag\");\n}, 15000);\n"},

                    {language: Language.find_by_name('Lua'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "local clock = os.clock\n\nfunction sleep(n)\n\tlocal time = clock()\n\twhile clock() - time <= n do end\nend\n\nwhile true do\n\tprint('Swag')\n\tsleep(15)\nend\n"},

                    {language: Language.find_by_name('Objective-C'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "//\n//  swag.m\n//  swag\n//\n//  Created by Kristen Mills on 1/22/13.\n//  Copyright (c) 2013 Kristen Mills. All rights reserved.\n//\n\n#import <Cocoa/Cocoa.h>\n\nint main(int argc, char *argv[])\n{\n    while (true) {\n        NSAlert *alert = [NSAlert alertWithMessageText: @\"Swag!\"\n                                         defaultButton: @\"Swag\"\n                                       alternateButton: nil\n                                           otherButton: nil\n                             informativeTextWithFormat: @\"\"];\n        [[NSRunningApplication currentApplication] activateWithOptions:NSApplicationActivateIgnoringOtherApps];\n        [alert runModal];\n        [NSThread sleepForTimeInterval:15];\n    }\n    return 0;\n}\n"},

                    {language: Language.find_by_name('Text'),  # moonscript
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "clock = os.clock\n\nsleep = (n) ->\n\ttime = clock()\n\twhile clock() - time <= n do nil\n\nwhile true\n\tprint 'Swag'\n\tsleep 15\n"},

                    {language: Language.find_by_name('Pure Data'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "#N canvas 1602 50 956 1028 10;\n#X obj 68 149 print;\n#X msg 96 114 Swag;\n#X obj 149 42 loadbang;\n#X obj 120 78 metro 15000;\n#X connect 1 0 0 0;\n#X connect 2 0 3 0;\n#X connect 3 0 1 0;\n"},

                    {language: Language.find_by_name('PHP'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "<?php\nwhile(true) {\n\tprint(\"Swag\\n\");\n\tsleep(15);\n}\n?>\n"},

                    {language: Language.find_by_name('Perl'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "while() {\n\tprint \"Swag\\n\";\n\tsleep 15;\n}\n"},

                    {language: Language.find_by_name('Python'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "import time\n\nwhile True:\n\tprint('Swag')\n\ttime.sleep(15)\n"},

                    {language: Language.find_by_name('R'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "repeat {\n  print(\"Swag\")\n  Sys.sleep(15)\n}\n"},

                    {language: Language.find_by_name('Ruby'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "loop do\n\tputs 'Swag'\n\tsleep 15\nend\n"},

                    {language: Language.find_by_name('Scala'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "object swag{\n  def main(args: Array[String]){\n    while (true) { println(\"Swag\"); Thread sleep 15000 }\n  }\n}"},

                    {language: Language.find_by_name('Scheme'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "(let ((wait (make-time 'time-duration 0 15)))\n  (let recur ()\n    (printf \"Swag\\n\") (sleep wait) (recur)))\n"},

                    {language: Language.find_by_name('Shell'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "#!/bin/bash\nwhile true\ndo\n\techo Swag;\n\tsleep 15;\ndone\n"},

                    {language: Language.find_by_name('Standard ML'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "\n(* Man I don't miss this language *)\n\nval pause_length = Time.fromReal(15.0);\nwhile true do\n  (fn _ => (\n    print \"Swag\\n\";\n    OS.Process.sleep(pause_length)))();"},

                    {language: Language.find_by_name('Visual Basic'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "\xEF\xBB\xBFModule Swag\n    Sub Main()\n        Do\n            Console.WriteLine(\"Swag\")\n\n            System.Threading.Thread.Sleep(15 * 1000)\n        Loop\n    End Sub\nEnd Module\n"},

                    {language: Language.find_by_name('VimL'),
                     problem: Problem.find_by_shortname('swag'),
                     profile: User.find_by_username('codeflash').profile,
                     code: "while 1\n\techom \"Swag\"\n\tsleep 15\nendwhile\n"}]