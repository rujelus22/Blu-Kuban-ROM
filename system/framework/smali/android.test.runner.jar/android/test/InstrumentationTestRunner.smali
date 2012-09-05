.class public Landroid/test/InstrumentationTestRunner;
.super Landroid/app/Instrumentation;
.source "InstrumentationTestRunner.java"

# interfaces
.implements Landroid/test/TestSuiteProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;,
        Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;,
        Landroid/test/InstrumentationTestRunner$StringResultPrinter;
    }
.end annotation


# static fields
.field static final ARGUMENT_ANNOTATION:Ljava/lang/String; = "annotation"

.field public static final ARGUMENT_DELAY_MSEC:Ljava/lang/String; = "delay_msec"

.field private static final ARGUMENT_LOG_ONLY:Ljava/lang/String; = "log"

.field static final ARGUMENT_NOT_ANNOTATION:Ljava/lang/String; = "notAnnotation"

.field public static final ARGUMENT_TEST_CLASS:Ljava/lang/String; = "class"

.field public static final ARGUMENT_TEST_PACKAGE:Ljava/lang/String; = "package"

.field public static final ARGUMENT_TEST_SIZE_PREDICATE:Ljava/lang/String; = "size"

.field private static final DEFAULT_COVERAGE_FILE_NAME:Ljava/lang/String; = "coverage.ec"

.field private static final LARGE_SUITE:Ljava/lang/String; = "large"

.field private static final LOG_TAG:Ljava/lang/String; = "InstrumentationTestRunner"

.field private static final MEDIUM_SUITE:Ljava/lang/String; = "medium"

.field private static final MEDIUM_SUITE_MAX_RUNTIME:F = 1000.0f

.field private static final REPORT_KEY_COVERAGE_PATH:Ljava/lang/String; = "coverageFilePath"

.field public static final REPORT_KEY_NAME_CLASS:Ljava/lang/String; = "class"

.field public static final REPORT_KEY_NAME_TEST:Ljava/lang/String; = "test"

.field public static final REPORT_KEY_NUM_CURRENT:Ljava/lang/String; = "current"

.field private static final REPORT_KEY_NUM_ITERATIONS:Ljava/lang/String; = "numiterations"

.field public static final REPORT_KEY_NUM_TOTAL:Ljava/lang/String; = "numtests"

.field private static final REPORT_KEY_RUN_TIME:Ljava/lang/String; = "runtime"

.field public static final REPORT_KEY_STACK:Ljava/lang/String; = "stack"

.field private static final REPORT_KEY_SUITE_ASSIGNMENT:Ljava/lang/String; = "suiteassignment"

.field public static final REPORT_VALUE_ID:Ljava/lang/String; = "InstrumentationTestRunner"

.field public static final REPORT_VALUE_RESULT_ERROR:I = -0x1

.field public static final REPORT_VALUE_RESULT_FAILURE:I = -0x2

.field public static final REPORT_VALUE_RESULT_OK:I = 0x0

.field public static final REPORT_VALUE_RESULT_START:I = 0x1

.field private static final SMALL_SUITE:Ljava/lang/String; = "small"

.field private static final SMALL_SUITE_MAX_RUNTIME:F = 100.0f


# instance fields
.field private mArguments:Landroid/os/Bundle;

.field private mCoverage:Z

.field private mCoverageFilePath:Ljava/lang/String;

.field private mDebug:Z

.field private mDelayMsec:I

.field private mJustCount:Z

.field private mPackageOfTests:Ljava/lang/String;

.field private final mResults:Landroid/os/Bundle;

.field private mSuiteAssignmentMode:Z

.field private mTestCount:I

.field private mTestRunner:Landroid/test/AndroidTestRunner;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 172
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 289
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    .line 731
    return-void
.end method

.method static synthetic access$000(Landroid/test/InstrumentationTestRunner;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 172
    iget v0, p0, Landroid/test/InstrumentationTestRunner;->mDelayMsec:I

    return v0
.end method

.method static synthetic access$100(Landroid/test/InstrumentationTestRunner;)Landroid/os/Bundle;
    .registers 2
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    return-object v0
.end method

.method private generateCoverageReport()V
    .registers 12

    .prologue
    .line 591
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->getCoverageFilePath()Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, coverageFilePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 594
    .local v0, coverageFile:Ljava/io/File;
    :try_start_9
    const-string v6, "com.vladium.emma.rt.RT"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 595
    .local v5, emmaRTClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v6, "dumpCoverageData"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 598
    .local v3, dumpCoverageMethod:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v7, "coverageFilePath"

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v7, "stream"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 605
    .local v2, currentStream:Ljava/lang/String;
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v7, "stream"

    const-string v8, "%s\nGenerated code coverage data to %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_68} :catch_69
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_68} :catch_70
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_68} :catch_75
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_68} :catch_7a
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_68} :catch_7f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_68} :catch_84

    .line 621
    .end local v2           #currentStream:Ljava/lang/String;
    .end local v3           #dumpCoverageMethod:Ljava/lang/reflect/Method;
    .end local v5           #emmaRTClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_68
    return-void

    .line 608
    :catch_69
    move-exception v4

    .line 609
    .local v4, e:Ljava/lang/ClassNotFoundException;
    const-string v6, "Is emma jar on classpath?"

    invoke-direct {p0, v6, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_68

    .line 610
    .end local v4           #e:Ljava/lang/ClassNotFoundException;
    :catch_70
    move-exception v4

    .line 611
    .local v4, e:Ljava/lang/SecurityException;
    invoke-direct {p0, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_68

    .line 612
    .end local v4           #e:Ljava/lang/SecurityException;
    :catch_75
    move-exception v4

    .line 613
    .local v4, e:Ljava/lang/NoSuchMethodException;
    invoke-direct {p0, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_68

    .line 614
    .end local v4           #e:Ljava/lang/NoSuchMethodException;
    :catch_7a
    move-exception v4

    .line 615
    .local v4, e:Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_68

    .line 616
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_7f
    move-exception v4

    .line 617
    .local v4, e:Ljava/lang/IllegalAccessException;
    invoke-direct {p0, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_68

    .line 618
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    :catch_84
    move-exception v4

    .line 619
    .local v4, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-direct {p0, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_68
.end method

.method private getAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 11
    .parameter "annotationClassName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 497
    if-nez p1, :cond_7

    move-object v0, v2

    .line 512
    :cond_6
    :goto_6
    return-object v0

    .line 501
    :cond_7
    :try_start_7
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 502
    .local v0, annotationClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v3

    if-nez v3, :cond_6

    .line 505
    const-string v3, "InstrumentationTestRunner"

    const-string v4, "Provided annotation value %s is not an Annotation"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_22} :catch_24

    .end local v0           #annotationClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_22
    move-object v0, v2

    .line 512
    goto :goto_6

    .line 508
    :catch_24
    move-exception v1

    .line 509
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v3, "InstrumentationTestRunner"

    const-string v4, "Could not find class for specified annotation %s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method private getAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;
    .registers 4
    .parameter "annotationClassName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    invoke-direct {p0, p1}, Landroid/test/InstrumentationTestRunner;->getAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 470
    .local v0, annotationClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz v0, :cond_c

    .line 471
    new-instance v1, Landroid/test/suitebuilder/annotation/HasAnnotation;

    invoke-direct {v1, v0}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    .line 473
    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 5
    .parameter "arguments"
    .parameter "tag"

    .prologue
    .line 442
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, tagString:Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private getCoverageFilePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 624
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mCoverageFilePath:Ljava/lang/String;

    if-nez v0, :cond_2a

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "coverage.ec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 628
    :goto_29
    return-object v0

    :cond_2a
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mCoverageFilePath:Ljava/lang/String;

    goto :goto_29
.end method

.method private getNotAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;
    .registers 4
    .parameter "annotationClassName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    invoke-direct {p0, p1}, Landroid/test/InstrumentationTestRunner;->getAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 484
    .local v0, annotationClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz v0, :cond_10

    .line 485
    new-instance v1, Landroid/test/suitebuilder/annotation/HasAnnotation;

    invoke-direct {v1, v0}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/android/internal/util/Predicates;->not(Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;

    move-result-object v1

    .line 487
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private getSizePredicateFromArg(Ljava/lang/String;)Lcom/android/internal/util/Predicate;
    .registers 3
    .parameter "sizeArg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    const-string v0, "small"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 452
    sget-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_SMALL:Lcom/android/internal/util/Predicate;

    .line 458
    :goto_a
    return-object v0

    .line 453
    :cond_b
    const-string v0, "medium"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 454
    sget-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_MEDIUM:Lcom/android/internal/util/Predicate;

    goto :goto_a

    .line 455
    :cond_16
    const-string v0, "large"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 456
    sget-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_LARGE:Lcom/android/internal/util/Predicate;

    goto :goto_a

    .line 458
    :cond_21
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private parseTestClass(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V
    .registers 6
    .parameter "testClassName"
    .parameter "testSuiteBuilder"

    .prologue
    .line 427
    const/16 v2, 0x23

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 428
    .local v0, methodSeparatorIndex:I
    const/4 v1, 0x0

    .line 430
    .local v1, testMethodName:Ljava/lang/String;
    if-lez v0, :cond_14

    .line 431
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 432
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 434
    :cond_14
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, p1, v1, v2}, Landroid/test/suitebuilder/TestSuiteBuilder;->addTestClassByName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 435
    return-void
.end method

.method private parseTestClasses(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V
    .registers 9
    .parameter "testClassArg"
    .parameter "testSuiteBuilder"

    .prologue
    .line 413
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 414
    .local v4, testClasses:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 415
    .local v3, testClass:Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Landroid/test/InstrumentationTestRunner;->parseTestClass(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 417
    .end local v3           #testClass:Ljava/lang/String;
    :cond_13
    return-void
.end method

.method private reportEmmaError(Ljava/lang/Exception;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 633
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 634
    return-void
.end method

.method private reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 8
    .parameter "hint"
    .parameter "e"

    .prologue
    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to generate emma coverage. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, msg:Ljava/lang/String;
    const-string v1, "InstrumentationTestRunner"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 639
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v2, "stream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    return-void
.end method


# virtual methods
.method public getAllTests()Ljunit/framework/TestSuite;
    .registers 2

    .prologue
    .line 578
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAndroidTestRunner()Landroid/test/AndroidTestRunner;
    .registers 2

    .prologue
    .line 438
    new-instance v0, Landroid/test/AndroidTestRunner;

    invoke-direct {v0}, Landroid/test/AndroidTestRunner;-><init>()V

    return-object v0
.end method

.method getBuilderRequirements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 585
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTestSuite()Ljunit/framework/TestSuite;
    .registers 2

    .prologue
    .line 571
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getAllTests()Ljunit/framework/TestSuite;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 19
    .parameter "arguments"

    .prologue
    .line 303
    invoke-super/range {p0 .. p1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V

    .line 304
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/test/InstrumentationTestRunner;->mArguments:Landroid/os/Bundle;

    .line 307
    const/4 v13, 0x2

    new-array v2, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v13

    const/4 v13, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v13

    .line 309
    .local v2, apkPaths:[Ljava/lang/String;
    invoke-static {v2}, Landroid/test/ClassPathPackageInfoSource;->setApkPaths([Ljava/lang/String;)V

    .line 311
    const/4 v10, 0x0

    .line 312
    .local v10, testSizePredicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    const/4 v7, 0x0

    .line 313
    .local v7, testAnnotationPredicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    const/4 v9, 0x0

    .line 314
    .local v9, testNotAnnotationPredicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    const/4 v8, 0x0

    .line 315
    .local v8, testClassesArg:Ljava/lang/String;
    const/4 v5, 0x0

    .line 317
    .local v5, logOnly:Z
    if-eqz p1, :cond_ce

    .line 319
    const-string v13, "class"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 320
    const-string v13, "debug"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/test/InstrumentationTestRunner;->mDebug:Z

    .line 321
    const-string v13, "count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/test/InstrumentationTestRunner;->mJustCount:Z

    .line 322
    const-string v13, "suiteAssignment"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/test/InstrumentationTestRunner;->mSuiteAssignmentMode:Z

    .line 323
    const-string v13, "package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/test/InstrumentationTestRunner;->mPackageOfTests:Ljava/lang/String;

    .line 324
    const-string v13, "size"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/test/InstrumentationTestRunner;->getSizePredicateFromArg(Ljava/lang/String;)Lcom/android/internal/util/Predicate;

    move-result-object v10

    .line 326
    const-string v13, "annotation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/test/InstrumentationTestRunner;->getAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;

    move-result-object v7

    .line 328
    const-string v13, "notAnnotation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/test/InstrumentationTestRunner;->getNotAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;

    move-result-object v9

    .line 331
    const-string v13, "log"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v5

    .line 332
    const-string v13, "coverage"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    .line 333
    const-string v13, "coverageFile"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/test/InstrumentationTestRunner;->mCoverageFilePath:Ljava/lang/String;

    .line 336
    :try_start_b8
    const-string v13, "delay_msec"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 337
    .local v3, delay:Ljava/lang/Object;
    if-eqz v3, :cond_ce

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/test/InstrumentationTestRunner;->mDelayMsec:I
    :try_end_ce
    .catch Ljava/lang/NumberFormatException; {:try_start_b8 .. :try_end_ce} :catch_176

    .line 343
    .end local v3           #delay:Ljava/lang/Object;
    :cond_ce
    :goto_ce
    new-instance v12, Landroid/test/suitebuilder/TestSuiteBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/test/suitebuilder/TestSuiteBuilder;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 346
    .local v12, testSuiteBuilder:Landroid/test/suitebuilder/TestSuiteBuilder;
    if-eqz v10, :cond_ee

    .line 347
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/android/internal/util/Predicate;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 349
    :cond_ee
    if-eqz v7, :cond_f9

    .line 350
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/android/internal/util/Predicate;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 352
    :cond_f9
    if-eqz v9, :cond_104

    .line 353
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/android/internal/util/Predicate;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 356
    :cond_104
    if-nez v8, :cond_196

    .line 357
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mPackageOfTests:Ljava/lang/String;

    if-eqz v13, :cond_180

    .line 358
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/test/InstrumentationTestRunner;->mPackageOfTests:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->includePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 373
    :goto_119
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getBuilderRequirements()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements(Ljava/util/List;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 375
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getAndroidTestRunner()Landroid/test/AndroidTestRunner;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    .line 376
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/test/AndroidTestRunner;->setContext(Landroid/content/Context;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/test/AndroidTestRunner;->setInstrumentation(Landroid/app/Instrumentation;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13, v5}, Landroid/test/AndroidTestRunner;->setSkipExecution(Z)V

    .line 379
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v12}, Landroid/test/suitebuilder/TestSuiteBuilder;->build()Ljunit/framework/TestSuite;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/test/AndroidTestRunner;->setTest(Ljunit/framework/Test;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13}, Landroid/test/AndroidTestRunner;->getTestCases()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/test/InstrumentationTestRunner;->mTestCount:I

    .line 381
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/test/InstrumentationTestRunner;->mSuiteAssignmentMode:Z

    if-eqz v13, :cond_19d

    .line 382
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    new-instance v14, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;-><init>(Landroid/test/InstrumentationTestRunner;)V

    invoke-virtual {v13, v14}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 389
    :goto_172
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->start()V

    .line 390
    return-void

    .line 338
    .end local v12           #testSuiteBuilder:Landroid/test/suitebuilder/TestSuiteBuilder;
    :catch_176
    move-exception v4

    .line 339
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v13, "InstrumentationTestRunner"

    const-string v14, "Invalid delay_msec parameter"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_ce

    .line 360
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .restart local v12       #testSuiteBuilder:Landroid/test/suitebuilder/TestSuiteBuilder;
    :cond_180
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getTestSuite()Ljunit/framework/TestSuite;

    move-result-object v11

    .line 361
    .local v11, testSuite:Ljunit/framework/TestSuite;
    if-eqz v11, :cond_18a

    .line 362
    invoke-virtual {v12, v11}, Landroid/test/suitebuilder/TestSuiteBuilder;->addTestSuite(Ljunit/framework/TestSuite;)Landroid/test/suitebuilder/TestSuiteBuilder;

    goto :goto_119

    .line 366
    :cond_18a
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, ""

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->includePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;

    goto :goto_119

    .line 370
    .end local v11           #testSuite:Ljunit/framework/TestSuite;
    :cond_196
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12}, Landroid/test/InstrumentationTestRunner;->parseTestClasses(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V

    goto/16 :goto_119

    .line 384
    :cond_19d
    new-instance v6, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/test/InstrumentationTestRunner;->mTestCount:I

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v13}, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;-><init>(Landroid/test/InstrumentationTestRunner;I)V

    .line 385
    .local v6, resultPrinter:Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    new-instance v14, Landroid/test/TestPrinter;

    const-string v15, "TestRunner"

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Landroid/test/TestPrinter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v13, v14}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13, v6}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13, v6}, Landroid/test/AndroidTestRunner;->setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V

    goto :goto_172
.end method

.method public onStart()V
    .registers 16

    .prologue
    .line 526
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->prepareLooper()V

    .line 528
    iget-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mJustCount:Z

    if-eqz v8, :cond_20

    .line 529
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v9, "id"

    const-string v10, "InstrumentationTestRunner"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v9, "numtests"

    iget v10, p0, Landroid/test/InstrumentationTestRunner;->mTestCount:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 531
    const/4 v8, -0x1

    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v9}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    .line 568
    :goto_1f
    return-void

    .line 533
    :cond_20
    iget-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mDebug:Z

    if-eqz v8, :cond_27

    .line 534
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 537
    :cond_27
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 538
    .local v0, byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/PrintStream;

    invoke-direct {v7, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 540
    .local v7, writer:Ljava/io/PrintStream;
    :try_start_31
    new-instance v1, Landroid/test/InstrumentationTestRunner$StringResultPrinter;

    invoke-direct {v1, p0, v7}, Landroid/test/InstrumentationTestRunner$StringResultPrinter;-><init>(Landroid/test/InstrumentationTestRunner;Ljava/io/PrintStream;)V

    .line 542
    .local v1, resultPrinter:Landroid/test/InstrumentationTestRunner$StringResultPrinter;
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v8, v1}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 545
    .local v4, startTime:J
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v8}, Landroid/test/AndroidTestRunner;->runTest()V

    .line 546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v4

    .line 548
    .local v2, runTime:J
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v8}, Landroid/test/AndroidTestRunner;->getTestResult()Ljunit/framework/TestResult;

    move-result-object v8

    invoke-virtual {v1, v8, v2, v3}, Landroid/test/InstrumentationTestRunner$StringResultPrinter;->print(Ljunit/framework/TestResult;J)V
    :try_end_53
    .catchall {:try_start_31 .. :try_end_53} :catchall_cd
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_53} :catch_84

    .line 555
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v9, "stream"

    const-string v10, "\nTest results for %s=%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13}, Landroid/test/AndroidTestRunner;->getTestClassName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    if-eqz v8, :cond_7a

    .line 561
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->generateCoverageReport()V

    .line 563
    :cond_7a
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V

    .line 565
    const/4 v8, -0x1

    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v9}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    goto :goto_1f

    .line 549
    .end local v1           #resultPrinter:Landroid/test/InstrumentationTestRunner$StringResultPrinter;
    .end local v2           #runTime:J
    .end local v4           #startTime:J
    :catch_84
    move-exception v6

    .line 551
    .local v6, t:Ljava/lang/Throwable;
    :try_start_85
    const-string v8, "Test run aborted due to unexpected exception: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_9b
    .catchall {:try_start_85 .. :try_end_9b} :catchall_cd

    .line 555
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v9, "stream"

    const-string v10, "\nTest results for %s=%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13}, Landroid/test/AndroidTestRunner;->getTestClassName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    if-eqz v8, :cond_c2

    .line 561
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->generateCoverageReport()V

    .line 563
    :cond_c2
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V

    .line 565
    const/4 v8, -0x1

    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v9}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    goto/16 :goto_1f

    .line 555
    .end local v6           #t:Ljava/lang/Throwable;
    :catchall_cd
    move-exception v8

    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v10, "stream"

    const-string v11, "\nTest results for %s=%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v14}, Landroid/test/AndroidTestRunner;->getTestClassName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-boolean v9, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    if-eqz v9, :cond_f5

    .line 561
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->generateCoverageReport()V

    .line 563
    :cond_f5
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V

    .line 565
    const/4 v9, -0x1

    iget-object v10, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v9, v10}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    throw v8
.end method

.method prepareLooper()V
    .registers 1

    .prologue
    .line 521
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 522
    return-void
.end method
