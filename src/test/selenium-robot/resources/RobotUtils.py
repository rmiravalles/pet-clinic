class RobotUtils():

    def convertFloatToString(self, myFloat):
        return str(myFloat)

    def getDynamicXpath(self, xpath, var1):
        #pdb.Pdb(stdout=sys.__stdout__).set_trace()
        return xpath % var1
