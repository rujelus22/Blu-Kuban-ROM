.class Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;
.super Ljava/lang/Object;
.source "InstrumentationTestRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;
.implements Landroid/os/PerformanceCollector$PerformanceResultsWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/InstrumentationTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatcherResultPrinter"
.end annotation


# instance fields
.field mIncludeDetailedStats:Z

.field mIsTimedTest:Z

.field mPerfCollector:Landroid/os/PerformanceCollector;

.field private final mResultTemplate:Landroid/os/Bundle;

.field mTestClass:Ljava/lang/String;

.field mTestNum:I

.field mTestResult:Landroid/os/Bundle;

.field mTestResultCode:I

.field final synthetic this$0:Landroid/test/InstrumentationTestRunner;


# direct methods
.method public constructor <init>(Landroid/test/InstrumentationTestRunner;I)V
    .registers 6
    .parameter
    .parameter "numTests"

    .prologue
    const/4 v1, 0x0

    .line 741
    iput-object p1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 734
    iput v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    .line 735
    iput v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 736
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    .line 737
    new-instance v0, Landroid/os/PerformanceCollector;

    invoke-direct {v0}, Landroid/os/PerformanceCollector;-><init>()V

    iput-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mPerfCollector:Landroid/os/PerformanceCollector;

    .line 738
    iput-boolean v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    .line 739
    iput-boolean v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z

    .line 742
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    .line 743
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    const-string v1, "id"

    const-string v2, "InstrumentationTestRunner"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    const-string v1, "numtests"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 745
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 9
    .parameter "test"
    .parameter "t"

    .prologue
    .line 824
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stack"

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const/4 v0, -0x1

    iput v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 827
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stream"

    const-string v2, "\nError in %s:\n%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast p1, Ljunit/framework/TestCase;

    .end local p1
    invoke-virtual {p1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .registers 9
    .parameter "test"
    .parameter "t"

    .prologue
    .line 836
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stack"

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const/4 v0, -0x2

    iput v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 839
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stream"

    const-string v2, "\nFailure in %s:\n%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast p1, Ljunit/framework/TestCase;

    .end local p1
    invoke-virtual {p1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .registers 6
    .parameter "test"

    .prologue
    .line 848
    iget-boolean v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    if-eqz v1, :cond_34

    iget-boolean v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z

    if-eqz v1, :cond_34

    .line 849
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mPerfCollector:Landroid/os/PerformanceCollector;

    invoke-virtual {v2}, Landroid/os/PerformanceCollector;->endSnapshot()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 854
    :cond_13
    :goto_13
    iget v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    if-nez v1, :cond_20

    .line 855
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v2, "stream"

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :cond_20
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    iget v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    iget-object v3, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/test/InstrumentationTestRunner;->sendStatus(ILandroid/os/Bundle;)V

    .line 860
    :try_start_29
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    #getter for: Landroid/test/InstrumentationTestRunner;->mDelayMsec:I
    invoke-static {v1}, Landroid/test/InstrumentationTestRunner;->access$000(Landroid/test/InstrumentationTestRunner;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_33} :catch_44

    .line 864
    return-void

    .line 850
    :cond_34
    iget-boolean v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    if-eqz v1, :cond_13

    .line 851
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mPerfCollector:Landroid/os/PerformanceCollector;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/os/PerformanceCollector;->stopTiming(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->writeStopTiming(Landroid/os/Bundle;)V

    goto :goto_13

    .line 861
    :catch_44
    move-exception v0

    .line 862
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startTest(Ljunit/framework/Test;)V
    .registers 13
    .parameter "test"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 752
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, testClass:Ljava/lang/String;
    move-object v5, p1

    .line 753
    check-cast v5, Ljunit/framework/TestCase;

    invoke-virtual {v5}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v4

    .line 754
    .local v4, testName:Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    iget-object v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    .line 755
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v6, "class"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v6, "test"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v6, "current"

    iget v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 759
    if-eqz v2, :cond_bf

    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bf

    .line 760
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v6, "stream"

    const-string v7, "\n%s:"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iput-object v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    .line 767
    :goto_52
    const/4 v3, 0x0

    .line 769
    .local v3, testMethod:Ljava/lang/reflect/Method;
    :try_start_53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 771
    const-class v5, Landroid/test/RepetitiveTest;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 772
    const-class v5, Landroid/test/RepetitiveTest;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landroid/test/RepetitiveTest;

    invoke-interface {v5}, Landroid/test/RepetitiveTest;->numIterations()I

    move-result v1

    .line 774
    .local v1, numIterations:I
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v6, "numiterations"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_79
    .catch Ljava/lang/NoSuchMethodException; {:try_start_53 .. :try_end_79} :catch_100

    .line 787
    .end local v1           #numIterations:I
    :cond_79
    :goto_79
    :try_start_79
    iget v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    if-ne v5, v10, :cond_87

    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    #getter for: Landroid/test/InstrumentationTestRunner;->mDelayMsec:I
    invoke-static {v5}, Landroid/test/InstrumentationTestRunner;->access$000(Landroid/test/InstrumentationTestRunner;)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_87
    .catch Ljava/lang/InterruptedException; {:try_start_79 .. :try_end_87} :catch_c9

    .line 792
    :cond_87
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    iget-object v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v5, v10, v6}, Landroid/test/InstrumentationTestRunner;->sendStatus(ILandroid/os/Bundle;)V

    .line 793
    iput v9, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 795
    iput-boolean v9, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    .line 796
    iput-boolean v9, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z

    .line 799
    if-eqz v3, :cond_d0

    :try_start_96
    const-class v5, Landroid/test/TimedTest;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 800
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    .line 801
    const-class v5, Landroid/test/TimedTest;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landroid/test/TimedTest;

    invoke-interface {v5}, Landroid/test/TimedTest;->includeDetailedStats()Z

    move-result v5

    iput-boolean v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z
    :try_end_af
    .catch Ljava/lang/SecurityException; {:try_start_96 .. :try_end_af} :catch_f2

    .line 813
    :cond_af
    :goto_af
    iget-boolean v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    if-eqz v5, :cond_f4

    iget-boolean v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z

    if-eqz v5, :cond_f4

    .line 814
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mPerfCollector:Landroid/os/PerformanceCollector;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/os/PerformanceCollector;->beginSnapshot(Ljava/lang/String;)V

    .line 818
    :cond_be
    :goto_be
    return-void

    .line 764
    .end local v3           #testMethod:Ljava/lang/reflect/Method;
    :cond_bf
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v6, "stream"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    .line 788
    .restart local v3       #testMethod:Ljava/lang/reflect/Method;
    :catch_c9
    move-exception v0

    .line 789
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 803
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_d0
    :try_start_d0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/test/TimedTest;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_af

    .line 804
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    .line 805
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/test/TimedTest;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landroid/test/TimedTest;

    invoke-interface {v5}, Landroid/test/TimedTest;->includeDetailedStats()Z

    move-result v5

    iput-boolean v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z
    :try_end_f1
    .catch Ljava/lang/SecurityException; {:try_start_d0 .. :try_end_f1} :catch_f2

    goto :goto_af

    .line 808
    :catch_f2
    move-exception v5

    goto :goto_af

    .line 815
    :cond_f4
    iget-boolean v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    if-eqz v5, :cond_be

    .line 816
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mPerfCollector:Landroid/os/PerformanceCollector;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/os/PerformanceCollector;->startTiming(Ljava/lang/String;)V

    goto :goto_be

    .line 776
    :catch_100
    move-exception v5

    goto/16 :goto_79
.end method

.method public writeBeginSnapshot(Ljava/lang/String;)V
    .registers 2
    .parameter "label"

    .prologue
    .line 868
    return-void
.end method

.method public writeEndSnapshot(Landroid/os/Bundle;)V
    .registers 3
    .parameter "results"

    .prologue
    .line 873
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    #getter for: Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/test/InstrumentationTestRunner;->access$100(Landroid/test/InstrumentationTestRunner;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 874
    return-void
.end method

.method public writeMeasurement(Ljava/lang/String;F)V
    .registers 4
    .parameter "label"
    .parameter "value"

    .prologue
    .line 903
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 904
    return-void
.end method

.method public writeMeasurement(Ljava/lang/String;J)V
    .registers 5
    .parameter "label"
    .parameter "value"

    .prologue
    .line 899
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 900
    return-void
.end method

.method public writeMeasurement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "label"
    .parameter "value"

    .prologue
    .line 907
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    return-void
.end method

.method public writeStartTiming(Ljava/lang/String;)V
    .registers 2
    .parameter "label"

    .prologue
    .line 878
    return-void
.end method

.method public writeStopTiming(Landroid/os/Bundle;)V
    .registers 11
    .parameter "results"

    .prologue
    .line 883
    const/4 v0, 0x0

    .line 885
    .local v0, i:I
    const-string v5, "iterations"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_91

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .local v4, p:Landroid/os/Parcelable;
    move-object v3, v4

    .line 886
    check-cast v3, Landroid/os/Bundle;

    .line 887
    .local v3, iteration:Landroid/os/Bundle;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iteration"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 888
    .local v2, index:Ljava/lang/String;
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "label"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "label"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cpu_time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cpu_time"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 892
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "execution_time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "execution_time"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 894
    add-int/lit8 v0, v0, 0x1

    .line 895
    goto/16 :goto_b

    .line 896
    .end local v2           #index:Ljava/lang/String;
    .end local v3           #iteration:Landroid/os/Bundle;
    .end local v4           #p:Landroid/os/Parcelable;
    :cond_91
    return-void
.end method
