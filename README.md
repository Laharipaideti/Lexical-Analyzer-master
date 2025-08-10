# Lexical Analyzer

The task of translating high level code, i.e., programming languages, into
a format that can be understood by a computer - binary code - is the
main job of a compiler. Speaking in a simple way, the compiler can be
splited in 3 parts:
- Lexical Analyzer (LA)
- Syntax Analyzer (SA)
- Semantic Analyzer (SMA)

The Lexical Analyzer is responsible for separating the source code into
lexemes, which are the words that compose the code. After separating all
lexemes, the LA classifies them using Token classification. **Keywords**,
**Special Symbols**, **Identifiers** and **Operators**, are examples of
tokens. Removing white spaces and comments from the compiled code is also a
role played by the Lexical Analyzer. The output of this process is a
table containing the lexemes and their token classification. Lexical
errors as invalid constructions of lexemes, *e.g. '12variableName'*,
*'na;;me'*, are also captured by the LA.

This project is an implementation of a **simple** Lexical Analyzer made in Java.
It provides a GUI where the user can type the code and get the tokens of it.
It is also possible to load the code from a file and make the analysis.

### Recognized Tokens
The Lexical Analyzer of this project recognizes the following classes
of tokens:
- **IDENTIFIER** - Variable names;
- **STRING** - Words between double quotes "";
- **INTEGER** - Number with no dot ( . );
- **FLOAT** - Float point numbers;
- **PLUS** - ( + );
- **MINUS** - ( - );
- **TIMES** - ( * ),
- **DIVIDE** - ( / );
- **KEYWORD** - for, while, do, if, else, print, switch, case, default and
  null;
- **INVALID**;
- **ASSIGN_OP** - Assignment operator ( = );
- **SEMICOLON** - ( ; )
- **LEFT_PARENTHESIS** - '(';
- **RIGHT_PARENTHESIS** - ')';
- **LEFT_BRACE** - ( { );
- **RIGHT_BRACE** - ( } );
- **COMMA** - ( , );
- **DOT** - ( . );
- **DOTDOT** - ( .. );
- **COLON** - ( : );
- **EQUAL** - ( == );
- **LOWER_OR_EQUALS** - ( <= );
- **GREATER_OR_EQUALS** - ( >= );
- **NOT_EQUALS** - ( <> );
- **GREATER_THAN** - ( > );
- **LOWER_THAN** - ( < );
- **AT_SIGN** - ( @ ).


***P.S. 1**: Sentences initiated by // or chunks of sentences between /* */
are considered comments and are not mentioned in the output.*

***P.S. 2**: The lexemes must be separated by at least one white space(' ')
to be recognized as separated things.*

### Screenshot
<img src="https://user-images.githubusercontent.com/36672867/76977097-9eef4f00-6913-11ea-886a-8eae70a68ecc.jpeg" alt="drawing" width="600"/>

### Setup and Running Instructions

#### Prerequisites
1. Java Development Kit (JDK) 17 or later
2. JavaFX SDK 21 or later

#### Setting Up JavaFX
1. Download JavaFX SDK from: https://gluonhq.com/products/javafx/
2. Extract it to a location (e.g., `C:\Program Files\Java\javafx-sdk-21`)

#### Running the Application (Simple Method)
1. Navigate to the project directory:
```powershell
cd "path\to\Lexical-Analyzer-master"
```

2. Run the application using the provided batch script:
```powershell
.\run.bat
```

This script will automatically:
- Compile all necessary files
- Copy required resources
- Launch the Lexical Analyzer application

#### Alternative Methods

##### Method 1: Using Gradle
```powershell
.\gradlew run
```

##### Method 2: Manual Java Commands
First, set the JavaFX path:
```powershell
$env:PATH_TO_FX="C:\Program Files\Java\javafx-sdk-21\lib"
```

3. Compile the source files:
```powershell
javac -d target/classes -cp "lib/*" --module-path "$env:PATH_TO_FX" --add-modules javafx.controls,javafx.fxml src/main/java/br/ufop/tomaz/Main.java src/main/java/br/ufop/tomaz/controller/FXMLMain.java src/main/java/br/ufop/tomaz/model/Automaton.java src/main/java/br/ufop/tomaz/model/Lexeme.java src/main/java/br/ufop/tomaz/model/Lexical_Analyzer.java src/main/java/br/ufop/tomaz/model/State.java src/main/java/br/ufop/tomaz/model/Token.java
```

4. Copy resource files:
```powershell
mkdir -Force target/classes/br/ufop/tomaz/fxml
Copy-Item "src/main/resources/br/ufop/tomaz/fxml/*" -Destination "target/classes/br/ufop/tomaz/fxml/"
```

5. Run the application:
```powershell
java -cp "target/classes;lib/*" --module-path "$env:PATH_TO_FX" --add-modules javafx.controls,javafx.fxml br.ufop.tomaz.Main
```

#### Using the Application
1. Once running, you'll see the GUI interface
2. You can either:
   - Type code directly into the text area
   - Load code from a file using the interface
3. Click the "Analyze" button to perform lexical analysis
4. The results will show the tokens identified in the code

### Conclusion
This is a very simple example that demonstrates how a Lexical Analyzer
can be implemented. This project is also a usage example of
Finite-State Automata, a very powerful and useful tool.
