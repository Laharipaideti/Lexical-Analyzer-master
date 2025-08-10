@echo off
javac -d target/classes --module-path "C:\Program Files\Java\javafx-sdk-21\lib" --add-modules javafx.controls,javafx.fxml,javafx.graphics,javafx.base -cp "lib/*" src/main/java/br/ufop/tomaz/Main.java src/main/java/br/ufop/tomaz/controller/FXMLMain.java src/main/java/br/ufop/tomaz/model/*.java
xcopy /Y /S "src\main\resources\*" "target\classes\"
java --module-path "C:\Program Files\Java\javafx-sdk-21\lib" --add-modules javafx.controls,javafx.fxml,javafx.graphics,javafx.base -cp "target/classes;lib/*" br.ufop.tomaz.Main


# This script compiles the Java source files and runs the application.