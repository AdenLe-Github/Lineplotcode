def gsm_code():
    """
    Function to collect GSM codes or ranges from the user.
    Returns a concatenated string of all the GSM codes entered by the user.
    """
    collecting = True
    gsm_string = ""

    while collecting:
        print("Type the GSM code, Range (r), or (q) if done:")
        decision = input().strip().lower()

        if decision == "q":
            return gsm_string

        elif decision == "r":
            print("\nEnter the range between the Codes")
            print("Enter the lower bound and upper bound separated by a space: ")
            lowerbound, upperbound = map(int, input().split())
            for i in range(lowerbound, upperbound + 1):
                gsm_string += f'"GSM{i}", '
            print(f"Current GSM string: {gsm_string}")

        else:
            gsm_string += f'"GSM{decision}", '
            print(f"Current GSM string: {gsm_string}")

def control_not_control(gsm_string):
    """
    Function to classify GSM codes as control or not control.
    Takes a string of GSM codes and returns a string of classifications.
    """
    control_string = ""
    gsm_codes = gsm_string.split(", ")
    gsm_codes = gsm_codes[0:len(gsm_codes) - 1]
    
    for code in gsm_codes:
        switch = True
        while switch == True:
            print(f"\nIs {code} control (c) or not control (f)?")
            classification = input().strip().lower()

            if classification == "c":
                switch = False
                control_string += '"control", '
            elif classification == "f":
                control_string += '"notcontrol", '
                switch = False
            else:
                print("Invalid input, please enter 'c' for control or 'f' for not control.")
    
    return control_string

def chooser():
    """
    Main function to choose between collecting GSM codes and classifying them.
    """
    decision = input("What do you want to do? Control (c), GSMCode (g): ").strip().lower()
    
    if decision == "g":
        gsm_string = gsm_code()
        control_classification = control_not_control(gsm_string)
        print(f"\nFinal Control Classification String: {control_classification}")

    elif decision == "c":
        gsm_string = input("Enter GSM codes separated by commas: ")
        control_classification = control_not_control(gsm_string)
        print(f"\nFinal Control Classification String: {control_classification}")

    else:
        print("Invalid input, please enter 'c' for Control or 'g' for GSMCode.")

# Run the chooser function to start the process
chooser()
