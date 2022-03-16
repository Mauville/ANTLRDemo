from collections import deque

from gen.marzoListener import marzoListener
from gen.marzoParser import marzoParser



class GenCode(marzoListener):
    debug = True
    data = deque()
    text = deque()

    def enterProgram(self, ctx: marzoParser.ProgramContext):
        self.debugPrint("Entering program")
        self.text.append(".text")
        self.data.append(".data")

    def exitPrimaria(self, ctx: marzoParser.PrimariaContext):
        print("load $1, " + ctx.Numero().getText())

    def exitSuma(self, ctx: marzoParser.SumaContext):
        print("ADD")

    def debugPrint(self, s: str):
        if self.debug:
            print(f"DEBUG: {s}")
