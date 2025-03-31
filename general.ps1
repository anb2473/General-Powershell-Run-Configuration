param(
    [string]$f
)

Write-Output ""
Write-Output "Executing '$f'"
Write-Output ""

$e=[System.IO.Path]::GetExtension($f)

switch ($e){
    '.py'{
        python $f
    }
    '.cpp'{
        g++ $f -o a.exe -lgdi32
        ./a.exe
    }
    '.c'{
        gcc $f
        ./a.exe
    }
    '.html'{
        Start-Process chrome $f
    }
    '.java'{
        javac $f
        java App
    }
    '.kt'{
        & "C:\Users\austi\Downloads\kotlin-compiler-2.1.10 (1)\kotlinc\bin\kotlinc.bat" $f -include-runtime -d k.jar
        java -jar k.jar
    }
    '.ll'{
        & "C:\Program Files\LLVM\bin\clang.exe" $f
    }
    '.rs'{
        rustc $f
        $exe = $f -replace ".rs", ".exe"
        ./ $exe
    }
    '.go'{
        go run $f
    }
    '.kts'{
        kotlinc -script $f
    }
    '.cs'{
        csc$f
        $exe=$f-replace".cs",".exe"
        ./$exe
    }  
    '.ruby'{
        ruby $f
    }
    '.exe'{
        ./$f
    }
    '.php'{
        php $f
    }
    '.swift'{
        swift $f
    }
    '.lua'{
        lua $f
    }
    '.bat'{
        cmd /c $f
    }
    '.sh'{
        bash $f
    }
    '.js'{
        node $f
    }
    '.rb'{
        ruby $f
    }
    '.R'{
        Rscript $f
    }
    '.ts'{
        tsc $f
    }
    '.scala'{
        scala $f
    }
    '.ps1'{
        ./$f
    }
}
