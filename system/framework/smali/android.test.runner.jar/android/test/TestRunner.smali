.class public Landroid/test/TestRunner;
.super Ljava/lang/Object;
.source "TestRunner.java"

# interfaces
.implements Landroid/test/PerformanceTestCase$Intermediates;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/TestRunner$Listener;,
        Landroid/test/TestRunner$IntermediateTime;,
        Landroid/test/TestRunner$JunitTestSuite;
    }
.end annotation


# static fields
.field public static final CLEARSCREEN:I = 0x0

.field public static final PERFORMANCE:I = 0x1

.field public static final PROFILING:I = 0x2

.field public static final REGRESSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TestHarness"

.field private static mJUnitClass:Ljava/lang/Class;

.field private static mRunnableClass:Ljava/lang/Class;


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEndTime:J

.field private mFailed:I

.field mIntermediates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/test/TestRunner$IntermediateTime;",
            ">;"
        }
    .end annotation
.end field

.field private mInternalIterations:I

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/test/TestRunner$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mPassed:I

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 73
    :try_start_0
    const-string v1, "java.lang.Runnable"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/test/TestRunner;->mRunnableClass:Ljava/lang/Class;

    .line 74
    const-string v1, "junit.framework.TestCase"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_14} :catch_15

    .line 78
    return-void

    .line 75
    :catch_15
    move-exception v0

    .line 76
    .local v0, ex:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 161
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Landroid/test/TestRunner;->mMode:I

    .line 56
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/TestRunner;->mIntermediates:Ljava/util/List;

    .line 162
    iput-object p1, p0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    .line 163
    return-void
.end method

.method static synthetic access$000(Landroid/test/TestRunner;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/test/TestRunner;->started(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/test/TestRunner;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/test/TestRunner;->finished(Ljava/lang/String;)V

    return-void
.end method

.method public static countJunitTests(Ljava/lang/Class;)I
    .registers 3
    .parameter "clazz"

    .prologue
    .line 646
    invoke-static {p0}, Landroid/test/TestRunner;->getAllTestMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 647
    .local v0, allTestMethods:[Ljava/lang/reflect/Method;
    array-length v1, v0

    .line 649
    .local v1, numberofMethods:I
    return v1
.end method

.method public static countTests(Landroid/content/Context;Ljava/lang/String;)I
    .registers 13
    .parameter "c"
    .parameter "className"

    .prologue
    const/4 v9, 0x1

    .line 688
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 689
    .local v3, clazz:Ljava/lang/Class;
    invoke-static {v3}, Landroid/test/TestRunner;->getChildrenMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 690
    .local v7, method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_23

    .line 692
    invoke-static {v7}, Landroid/test/TestRunner;->getChildren(Ljava/lang/reflect/Method;)[Ljava/lang/String;

    move-result-object v2

    .line 693
    .local v2, children:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 694
    .local v8, rv:I
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_17
    if-ge v5, v6, :cond_2c

    aget-object v1, v0, v5

    .line 695
    .local v1, child:Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/test/TestRunner;->countTests(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    add-int/2addr v8, v10

    .line 694
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 698
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #child:Ljava/lang/String;
    .end local v2           #children:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v8           #rv:I
    :cond_23
    sget-object v10, Landroid/test/TestRunner;->mRunnableClass:Ljava/lang/Class;

    invoke-virtual {v10, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_2d

    move v8, v9

    .line 707
    .end local v3           #clazz:Ljava/lang/Class;
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_2c
    :goto_2c
    return v8

    .line 700
    .restart local v3       #clazz:Ljava/lang/Class;
    .restart local v7       #method:Ljava/lang/reflect/Method;
    :cond_2d
    sget-object v10, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    invoke-virtual {v10, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 701
    invoke-static {v3}, Landroid/test/TestRunner;->countJunitTests(Ljava/lang/Class;)I
    :try_end_38
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_38} :catch_3a

    move-result v8

    goto :goto_2c

    .line 703
    .end local v3           #clazz:Ljava/lang/Class;
    .end local v7           #method:Ljava/lang/reflect/Method;
    :catch_3a
    move-exception v4

    .local v4, e:Ljava/lang/ClassNotFoundException;
    move v8, v9

    .line 704
    goto :goto_2c

    .line 707
    .end local v4           #e:Ljava/lang/ClassNotFoundException;
    .restart local v3       #clazz:Ljava/lang/Class;
    .restart local v7       #method:Ljava/lang/reflect/Method;
    :cond_3d
    const/4 v8, 0x0

    goto :goto_2c
.end method

.method private finished(Ljava/lang/String;)V
    .registers 5
    .parameter "className"

    .prologue
    .line 189
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 190
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 191
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/test/TestRunner$Listener;

    invoke-interface {v2, p1}, Landroid/test/TestRunner$Listener;->finished(Ljava/lang/String;)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 193
    :cond_17
    return-void
.end method

.method public static getAllTestMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .registers 10
    .parameter "clazz"

    .prologue
    .line 619
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 620
    .local v0, allMethods:[Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    .line 621
    .local v7, numOfMethods:I
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/reflect/Method;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v4, :cond_17

    aget-object v5, v1, v2

    .line 622
    .local v5, m:Ljava/lang/reflect/Method;
    invoke-static {v5}, Landroid/test/TestRunner;->isTestMethod(Ljava/lang/reflect/Method;)Z

    move-result v6

    .line 623
    .local v6, mTrue:Z
    if-eqz v6, :cond_14

    .line 624
    add-int/lit8 v7, v7, 0x1

    .line 621
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 627
    .end local v5           #m:Ljava/lang/reflect/Method;
    .end local v6           #mTrue:Z
    :cond_17
    const/4 v3, 0x0

    .line 628
    .local v3, index:I
    new-array v8, v7, [Ljava/lang/reflect/Method;

    .line 629
    .local v8, testMethods:[Ljava/lang/reflect/Method;
    move-object v1, v0

    array-length v4, v1

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v4, :cond_2e

    aget-object v5, v1, v2

    .line 630
    .restart local v5       #m:Ljava/lang/reflect/Method;
    invoke-static {v5}, Landroid/test/TestRunner;->isTestMethod(Ljava/lang/reflect/Method;)Z

    move-result v6

    .line 631
    .restart local v6       #mTrue:Z
    if-eqz v6, :cond_2b

    .line 632
    aput-object v5, v8, v3

    .line 633
    add-int/lit8 v3, v3, 0x1

    .line 629
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 636
    .end local v5           #m:Ljava/lang/reflect/Method;
    .end local v6           #mTrue:Z
    :cond_2e
    return-object v8
.end method

.method public static getChildren(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .parameter "c"
    .parameter "className"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 557
    invoke-static {p0, p1}, Landroid/test/TestRunner;->getChildrenMethod(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 558
    .local v2, m:Ljava/lang/reflect/Method;
    invoke-static {p0, p1}, Landroid/test/TestRunner;->getTestChildren(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 559
    .local v3, testChildren:[Ljava/lang/String;
    if-nez v2, :cond_2b

    move v6, v4

    :goto_d
    if-nez v3, :cond_2d

    :goto_f
    and-int/2addr v4, v6

    if-eqz v4, :cond_2f

    .line 560
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t get children method for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2b
    move v6, v5

    .line 559
    goto :goto_d

    :cond_2d
    move v4, v5

    goto :goto_f

    .line 563
    :cond_2f
    if-eqz v2, :cond_48

    .line 564
    invoke-static {v2}, Landroid/test/TestRunner;->getChildren(Ljava/lang/reflect/Method;)[Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, children:[Ljava/lang/String;
    if-eqz v3, :cond_46

    .line 566
    array-length v4, v3

    array-length v6, v1

    add-int/2addr v4, v6

    new-array v0, v4, [Ljava/lang/String;

    .line 567
    .local v0, allChildren:[Ljava/lang/String;
    array-length v4, v1

    invoke-static {v1, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 568
    array-length v4, v1

    array-length v6, v3

    invoke-static {v3, v5, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    .end local v0           #allChildren:[Ljava/lang/String;
    .end local v1           #children:[Ljava/lang/String;
    :goto_45
    return-object v0

    .restart local v1       #children:[Ljava/lang/String;
    :cond_46
    move-object v0, v1

    .line 571
    goto :goto_45

    .line 574
    .end local v1           #children:[Ljava/lang/String;
    :cond_48
    if-eqz v3, :cond_4c

    move-object v0, v3

    .line 575
    goto :goto_45

    .line 578
    :cond_4c
    const/4 v0, 0x0

    goto :goto_45
.end method

.method public static getChildren(Ljava/lang/reflect/Method;)[Ljava/lang/String;
    .registers 3
    .parameter "m"

    .prologue
    .line 583
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 584
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "children method is not static"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_12} :catch_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_12} :catch_24

    .line 587
    :catch_12
    move-exception v0

    .line 590
    :goto_13
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_16
    return-object v0

    .line 586
    :cond_17
    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_19
    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_23} :catch_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_19 .. :try_end_23} :catch_24

    goto :goto_16

    .line 588
    :catch_24
    move-exception v0

    goto :goto_13
.end method

.method public static getChildrenMethod(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 3
    .parameter "c"
    .parameter "className"

    .prologue
    .line 550
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroid/test/TestRunner;->getChildrenMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    .line 553
    :goto_c
    return-object v0

    .line 551
    :catch_d
    move-exception v0

    .line 553
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static getChildrenMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .parameter "clazz"

    .prologue
    const/4 v1, 0x0

    .line 541
    :try_start_1
    const-string v2, "children"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_9} :catch_b

    move-result-object v0

    .line 545
    :goto_a
    return-object v0

    .line 542
    :catch_b
    move-exception v0

    move-object v0, v1

    .line 545
    goto :goto_a
.end method

.method public static getTestChildren(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter "c"
    .parameter "className"

    .prologue
    .line 595
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 597
    .local v0, clazz:Ljava/lang/Class;
    sget-object v2, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 598
    invoke-static {v0}, Landroid/test/TestRunner;->getTestChildren(Ljava/lang/Class;)[Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v2

    .line 603
    .end local v0           #clazz:Ljava/lang/Class;
    :goto_14
    return-object v2

    .line 600
    :catch_15
    move-exception v1

    .line 601
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v2, "TestHarness"

    const-string v3, "No class found"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :cond_1d
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public static getTestChildren(Ljava/lang/Class;)[Ljava/lang/String;
    .registers 10
    .parameter "clazz"

    .prologue
    .line 607
    invoke-static {p0}, Landroid/test/TestRunner;->getAllTestMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 609
    .local v5, methods:[Ljava/lang/reflect/Method;
    array-length v7, v5

    new-array v6, v7, [Ljava/lang/String;

    .line 610
    .local v6, onScreenTestNames:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 611
    .local v2, index:I
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_b
    if-ge v1, v3, :cond_35

    aget-object v4, v0, v1

    .line 612
    .local v4, m:Ljava/lang/reflect/Method;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 613
    add-int/lit8 v2, v2, 0x1

    .line 611
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 615
    .end local v4           #m:Ljava/lang/reflect/Method;
    :cond_35
    return-object v6
.end method

.method public static getTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "className"

    .prologue
    .line 717
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 718
    .local v2, indexDot:I
    const/16 v3, 0x24

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 719
    .local v1, indexDollar:I
    if-le v2, v1, :cond_18

    move v0, v2

    .line 720
    .local v0, index:I
    :goto_f
    if-ltz v0, :cond_17

    .line 721
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 723
    :cond_17
    return-object p0

    .end local v0           #index:I
    :cond_18
    move v0, v1

    .line 719
    goto :goto_f
.end method

.method private static isTestMethod(Ljava/lang/reflect/Method;)Z
    .registers 3
    .parameter "m"

    .prologue
    .line 640
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static isTestSuite(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .parameter "c"
    .parameter "className"

    .prologue
    .line 653
    invoke-static {p0, p1}, Landroid/test/TestRunner;->getChildrenMethod(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_1f

    const/4 v0, 0x1

    .line 656
    .local v0, childrenMethods:Z
    :goto_7
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 657
    .local v1, clazz:Ljava/lang/Class;
    sget-object v3, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 658
    invoke-static {v1}, Landroid/test/TestRunner;->countJunitTests(Ljava/lang/Class;)I
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_1a} :catch_21

    move-result v2

    .line 659
    .local v2, numTests:I
    if-lez v2, :cond_1e

    .line 660
    const/4 v0, 0x1

    .line 664
    .end local v1           #clazz:Ljava/lang/Class;
    .end local v2           #numTests:I
    :cond_1e
    :goto_1e
    return v0

    .line 653
    .end local v0           #childrenMethods:Z
    :cond_1f
    const/4 v0, 0x0

    goto :goto_7

    .line 662
    .restart local v0       #childrenMethods:Z
    :catch_21
    move-exception v3

    goto :goto_1e
.end method

.method private missingTest(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "className"
    .parameter "e"

    .prologue
    .line 271
    invoke-direct {p0, p1}, Landroid/test/TestRunner;->started(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, p1}, Landroid/test/TestRunner;->finished(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, p1, p2}, Landroid/test/TestRunner;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    return-void
.end method

.method private performance(Ljava/lang/String;JILjava/util/List;)V
    .registers 14
    .parameter "className"
    .parameter "itemTimeNS"
    .parameter "iterations"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/List",
            "<",
            "Landroid/test/TestRunner$IntermediateTime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p5, intermediates:Ljava/util/List;,"Ljava/util/List<Landroid/test/TestRunner$IntermediateTime;>;"
    iget-object v0, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 200
    .local v6, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_7
    if-ge v7, v6, :cond_1b

    .line 201
    iget-object v0, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/test/TestRunner$Listener;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/test/TestRunner$Listener;->performance(Ljava/lang/String;JILjava/util/List;)V

    .line 200
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 206
    :cond_1b
    return-void
.end method

.method private started(Ljava/lang/String;)V
    .registers 5
    .parameter "className"

    .prologue
    .line 182
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 183
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 184
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/test/TestRunner$Listener;

    invoke-interface {v2, p1}, Landroid/test/TestRunner$Listener;->started(Ljava/lang/String;)V

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 186
    :cond_17
    return-void
.end method


# virtual methods
.method public addIntermediate(Ljava/lang/String;)V
    .registers 6
    .parameter "name"

    .prologue
    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/test/TestRunner;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/test/TestRunner;->addIntermediate(Ljava/lang/String;J)V

    .line 252
    return-void
.end method

.method public addIntermediate(Ljava/lang/String;J)V
    .registers 6
    .parameter "name"
    .parameter "timeInNS"

    .prologue
    .line 255
    iget-object v0, p0, Landroid/test/TestRunner;->mIntermediates:Ljava/util/List;

    new-instance v1, Landroid/test/TestRunner$IntermediateTime;

    invoke-direct {v1, p1, p2, p3}, Landroid/test/TestRunner$IntermediateTime;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method public addListener(Landroid/test/TestRunner$Listener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 166
    iget-object v0, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public failed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "className"
    .parameter "exception"

    .prologue
    .line 217
    iget v2, p0, Landroid/test/TestRunner;->mFailed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/test/TestRunner;->mFailed:I

    .line 218
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 219
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v0, :cond_1d

    .line 220
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/test/TestRunner$Listener;

    invoke-interface {v2, p1, p2}, Landroid/test/TestRunner$Listener;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 222
    :cond_1d
    return-void
.end method

.method public failedCount()I
    .registers 2

    .prologue
    .line 229
    iget v0, p0, Landroid/test/TestRunner;->mFailed:I

    return v0
.end method

.method public finishProfiling()V
    .registers 1

    .prologue
    .line 177
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 178
    return-void
.end method

.method public finishTiming(Z)V
    .registers 4
    .parameter "realTime"

    .prologue
    .line 259
    if-eqz p1, :cond_9

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/test/TestRunner;->mEndTime:J

    .line 264
    :goto_8
    return-void

    .line 262
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/test/TestRunner;->mEndTime:J

    goto :goto_8
.end method

.method public isJunitTest(Ljava/lang/String;)Z
    .registers 6
    .parameter "className"

    .prologue
    const/4 v2, 0x0

    .line 669
    const/16 v3, 0x24

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 670
    .local v1, index:I
    if-ltz v1, :cond_d

    .line 671
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 674
    :cond_d
    :try_start_d
    iget-object v3, p0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 675
    .local v0, clazz:Ljava/lang/Class;
    sget-object v3, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_1c} :catch_21

    move-result v3

    if-eqz v3, :cond_20

    .line 676
    const/4 v2, 0x1

    .line 680
    .end local v0           #clazz:Ljava/lang/Class;
    :cond_20
    :goto_20
    return v2

    .line 678
    :catch_21
    move-exception v3

    goto :goto_20
.end method

.method public passed(Ljava/lang/String;)V
    .registers 5
    .parameter "className"

    .prologue
    .line 209
    iget v2, p0, Landroid/test/TestRunner;->mPassed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/test/TestRunner;->mPassed:I

    .line 210
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 211
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v0, :cond_1d

    .line 212
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/test/TestRunner$Listener;

    invoke-interface {v2, p1}, Landroid/test/TestRunner$Listener;->passed(Ljava/lang/String;)V

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 214
    :cond_1d
    return-void
.end method

.method public passedCount()I
    .registers 2

    .prologue
    .line 225
    iget v0, p0, Landroid/test/TestRunner;->mPassed:I

    return v0
.end method

.method public run(Ljava/lang/String;)V
    .registers 26
    .parameter "className"

    .prologue
    .line 282
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/test/TestRunner;->mClassName:Ljava/lang/String;

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 284
    .local v7, clazz:Ljava/lang/Class;
    invoke-static {v7}, Landroid/test/TestRunner;->getChildrenMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 285
    .local v15, method:Ljava/lang/reflect/Method;
    if-eqz v15, :cond_28

    .line 286
    invoke-static {v15}, Landroid/test/TestRunner;->getChildren(Ljava/lang/reflect/Method;)[Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v6, children:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/test/TestRunner;->run([Ljava/lang/String;)V

    .line 392
    .end local v6           #children:[Ljava/lang/String;
    .end local v7           #clazz:Ljava/lang/Class;
    .end local v15           #method:Ljava/lang/reflect/Method;
    :cond_27
    :goto_27
    return-void

    .line 288
    .restart local v7       #clazz:Ljava/lang/Class;
    .restart local v15       #method:Ljava/lang/reflect/Method;
    :cond_28
    sget-object v21, Landroid/test/TestRunner;->mRunnableClass:Ljava/lang/Class;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_127

    .line 289
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Runnable;

    .line 290
    .local v18, test:Ljava/lang/Runnable;
    const/16 v20, 0x0

    .line 291
    .local v20, testcase:Landroid/test/TestCase;
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/test/TestCase;

    move/from16 v21, v0

    if-eqz v21, :cond_48

    .line 292
    move-object/from16 v0, v18

    check-cast v0, Landroid/test/TestCase;

    move-object/from16 v20, v0

    .line 294
    :cond_48
    const/4 v9, 0x0

    .line 295
    .local v9, e:Ljava/lang/Throwable;
    const/4 v8, 0x0

    .line 296
    .local v8, didSetup:Z
    invoke-direct/range {p0 .. p1}, Landroid/test/TestRunner;->started(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4d} :catch_86
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_4d} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4d} :catch_101

    .line 298
    if-eqz v20, :cond_59

    .line 299
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Landroid/test/TestCase;->setUp(Landroid/content/Context;)V

    .line 300
    const/4 v8, 0x1

    .line 302
    :cond_59
    move-object/from16 v0, p0

    iget v0, v0, Landroid/test/TestRunner;->mMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b0

    .line 303
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v3, v21

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/test/TestRunner;->runInPerformanceMode(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_76} :catch_c8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4f .. :try_end_76} :catch_86
    .catch Ljava/lang/InstantiationException; {:try_start_4f .. :try_end_76} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_4f .. :try_end_76} :catch_101

    .line 315
    :goto_76
    if-eqz v20, :cond_7d

    if-eqz v8, :cond_7d

    .line 317
    :try_start_7a
    invoke-interface/range {v20 .. v20}, Landroid/test/TestCase;->tearDown()V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7d} :catch_f5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7a .. :try_end_7d} :catch_86
    .catch Ljava/lang/InstantiationException; {:try_start_7a .. :try_end_7d} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_7a .. :try_end_7d} :catch_101

    .line 322
    :cond_7d
    :goto_7d
    :try_start_7d
    invoke-direct/range {p0 .. p1}, Landroid/test/TestRunner;->finished(Ljava/lang/String;)V

    .line 323
    if-nez v9, :cond_f8

    .line 324
    invoke-virtual/range {p0 .. p1}, Landroid/test/TestRunner;->passed(Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7d .. :try_end_85} :catch_86
    .catch Ljava/lang/InstantiationException; {:try_start_7d .. :try_end_85} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_7d .. :try_end_85} :catch_101

    goto :goto_27

    .line 378
    .end local v7           #clazz:Ljava/lang/Class;
    .end local v8           #didSetup:Z
    .end local v9           #e:Ljava/lang/Throwable;
    .end local v15           #method:Ljava/lang/reflect/Method;
    .end local v18           #test:Ljava/lang/Runnable;
    .end local v20           #testcase:Landroid/test/TestCase;
    :catch_86
    move-exception v9

    .line 379
    .local v9, e:Ljava/lang/ClassNotFoundException;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ClassNotFoundException for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v9}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual/range {p0 .. p1}, Landroid/test/TestRunner;->isJunitTest(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_22a

    .line 381
    invoke-virtual/range {p0 .. p1}, Landroid/test/TestRunner;->runSingleJunitTest(Ljava/lang/String;)V

    goto/16 :goto_27

    .line 304
    .restart local v7       #clazz:Ljava/lang/Class;
    .restart local v8       #didSetup:Z
    .local v9, e:Ljava/lang/Throwable;
    .restart local v15       #method:Ljava/lang/reflect/Method;
    .restart local v18       #test:Ljava/lang/Runnable;
    .restart local v20       #testcase:Landroid/test/TestCase;
    :cond_b0
    :try_start_b0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/test/TestRunner;->mMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_cb

    .line 306
    invoke-virtual/range {p0 .. p0}, Landroid/test/TestRunner;->startProfiling()V

    .line 307
    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    .line 308
    invoke-virtual/range {p0 .. p0}, Landroid/test/TestRunner;->finishProfiling()V

    goto :goto_76

    .line 312
    :catch_c8
    move-exception v10

    .line 313
    .local v10, ex:Ljava/lang/Throwable;
    move-object v9, v10

    goto :goto_76

    .line 310
    .end local v10           #ex:Ljava/lang/Throwable;
    :cond_cb
    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_ce} :catch_c8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b0 .. :try_end_ce} :catch_86
    .catch Ljava/lang/InstantiationException; {:try_start_b0 .. :try_end_ce} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_b0 .. :try_end_ce} :catch_101

    goto :goto_76

    .line 385
    .end local v7           #clazz:Ljava/lang/Class;
    .end local v8           #didSetup:Z
    .end local v9           #e:Ljava/lang/Throwable;
    .end local v15           #method:Ljava/lang/reflect/Method;
    .end local v18           #test:Ljava/lang/Runnable;
    .end local v20           #testcase:Landroid/test/TestCase;
    :catch_cf
    move-exception v9

    .line 386
    .local v9, e:Ljava/lang/InstantiationException;
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "InstantiationException for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 387
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Landroid/test/TestRunner;->missingTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 318
    .restart local v7       #clazz:Ljava/lang/Class;
    .restart local v8       #didSetup:Z
    .local v9, e:Ljava/lang/Throwable;
    .restart local v15       #method:Ljava/lang/reflect/Method;
    .restart local v18       #test:Ljava/lang/Runnable;
    .restart local v20       #testcase:Landroid/test/TestCase;
    :catch_f5
    move-exception v10

    .line 319
    .restart local v10       #ex:Ljava/lang/Throwable;
    move-object v9, v10

    goto :goto_7d

    .line 326
    .end local v10           #ex:Ljava/lang/Throwable;
    :cond_f8
    :try_start_f8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Landroid/test/TestRunner;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ff
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f8 .. :try_end_ff} :catch_86
    .catch Ljava/lang/InstantiationException; {:try_start_f8 .. :try_end_ff} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_f8 .. :try_end_ff} :catch_101

    goto/16 :goto_27

    .line 388
    .end local v7           #clazz:Ljava/lang/Class;
    .end local v8           #didSetup:Z
    .end local v9           #e:Ljava/lang/Throwable;
    .end local v15           #method:Ljava/lang/reflect/Method;
    .end local v18           #test:Ljava/lang/Runnable;
    .end local v20           #testcase:Landroid/test/TestCase;
    :catch_101
    move-exception v9

    .line 389
    .local v9, e:Ljava/lang/IllegalAccessException;
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IllegalAccessException for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 390
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Landroid/test/TestRunner;->missingTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 328
    .end local v9           #e:Ljava/lang/IllegalAccessException;
    .restart local v7       #clazz:Ljava/lang/Class;
    .restart local v15       #method:Ljava/lang/reflect/Method;
    :cond_127
    :try_start_127
    sget-object v21, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_20c

    .line 329
    const/4 v9, 0x0

    .line 331
    .local v9, e:Ljava/lang/Throwable;
    new-instance v17, Landroid/test/TestRunner$JunitTestSuite;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/test/TestRunner$JunitTestSuite;-><init>(Landroid/test/TestRunner;)V

    .line 332
    .local v17, suite:Landroid/test/TestRunner$JunitTestSuite;
    invoke-static {v7}, Landroid/test/TestRunner;->getAllTestMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v16

    .line 333
    .local v16, methods:[Ljava/lang/reflect/Method;
    move-object/from16 v5, v16

    .local v5, arr$:[Ljava/lang/reflect/Method;
    array-length v13, v5

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_143
    if-ge v11, v13, :cond_189

    aget-object v14, v5, v11

    .line 334
    .local v14, m:Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljunit/framework/TestCase;

    .line 335
    .local v18, test:Ljunit/framework/TestCase;
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/test/AndroidTestCase;

    move/from16 v21, v0

    if-eqz v21, :cond_178

    .line 338
    move-object/from16 v0, v18

    check-cast v0, Landroid/test/AndroidTestCase;

    move-object/from16 v20, v0
    :try_end_166
    .catch Ljava/lang/ClassNotFoundException; {:try_start_127 .. :try_end_166} :catch_86
    .catch Ljava/lang/InstantiationException; {:try_start_127 .. :try_end_166} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_127 .. :try_end_166} :catch_101

    .line 340
    .local v20, testcase:Landroid/test/AndroidTestCase;
    :try_start_166
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/test/AndroidTestCase;->setContext(Landroid/content/Context;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/test/AndroidTestCase;->setTestContext(Landroid/content/Context;)V
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_178} :catch_17e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_166 .. :try_end_178} :catch_86
    .catch Ljava/lang/InstantiationException; {:try_start_166 .. :try_end_178} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_166 .. :try_end_178} :catch_101

    .line 346
    .end local v20           #testcase:Landroid/test/AndroidTestCase;
    :cond_178
    :goto_178
    :try_start_178
    invoke-virtual/range {v17 .. v18}, Landroid/test/TestRunner$JunitTestSuite;->addTest(Ljunit/framework/Test;)V

    .line 333
    add-int/lit8 v11, v11, 0x1

    goto :goto_143

    .line 342
    .restart local v20       #testcase:Landroid/test/AndroidTestCase;
    :catch_17e
    move-exception v10

    .line 343
    .local v10, ex:Ljava/lang/Exception;
    const-string v21, "TestHarness"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_178

    .line 348
    .end local v10           #ex:Ljava/lang/Exception;
    .end local v14           #m:Ljava/lang/reflect/Method;
    .end local v18           #test:Ljunit/framework/TestCase;
    .end local v20           #testcase:Landroid/test/AndroidTestCase;
    :cond_189
    move-object/from16 v0, p0

    iget v0, v0, Landroid/test/TestRunner;->mMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1ee

    .line 349
    invoke-virtual/range {v17 .. v17}, Landroid/test/TestRunner$JunitTestSuite;->testCount()I

    move-result v19

    .line 351
    .local v19, testCount:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_19c
    move/from16 v0, v19

    if-ge v12, v0, :cond_27

    .line 352
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/test/TestRunner$JunitTestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v18

    .line 353
    .local v18, test:Ljunit/framework/Test;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/test/TestRunner;->started(Ljava/lang/String;)V
    :try_end_1b1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_178 .. :try_end_1b1} :catch_86
    .catch Ljava/lang/InstantiationException; {:try_start_178 .. :try_end_1b1} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_178 .. :try_end_1b1} :catch_101

    .line 355
    const/16 v21, 0x1

    :try_start_1b3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/test/TestRunner;->runInPerformanceMode(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1c4
    .catch Ljava/lang/Throwable; {:try_start_1b3 .. :try_end_1c4} :catch_1df
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b3 .. :try_end_1c4} :catch_86
    .catch Ljava/lang/InstantiationException; {:try_start_1b3 .. :try_end_1c4} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b3 .. :try_end_1c4} :catch_101

    .line 359
    :goto_1c4
    :try_start_1c4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/test/TestRunner;->finished(Ljava/lang/String;)V

    .line 360
    if-nez v9, :cond_1e2

    .line 361
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/test/TestRunner;->passed(Ljava/lang/String;)V

    .line 351
    :goto_1dc
    add-int/lit8 v12, v12, 0x1

    goto :goto_19c

    .line 356
    :catch_1df
    move-exception v10

    .line 357
    .local v10, ex:Ljava/lang/Throwable;
    move-object v9, v10

    goto :goto_1c4

    .line 363
    .end local v10           #ex:Ljava/lang/Throwable;
    :cond_1e2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Landroid/test/TestRunner;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1dc

    .line 366
    .end local v12           #j:I
    .end local v18           #test:Ljunit/framework/Test;
    .end local v19           #testCount:I
    :cond_1ee
    move-object/from16 v0, p0

    iget v0, v0, Landroid/test/TestRunner;->mMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_207

    .line 368
    invoke-virtual/range {p0 .. p0}, Landroid/test/TestRunner;->startProfiling()V

    .line 369
    invoke-static/range {v17 .. v17}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    .line 370
    invoke-virtual/range {p0 .. p0}, Landroid/test/TestRunner;->finishProfiling()V

    goto/16 :goto_27

    .line 372
    :cond_207
    invoke-static/range {v17 .. v17}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    goto/16 :goto_27

    .line 375
    .end local v5           #arr$:[Ljava/lang/reflect/Method;
    .end local v9           #e:Ljava/lang/Throwable;
    .end local v11           #i$:I
    .end local v13           #len$:I
    .end local v16           #methods:[Ljava/lang/reflect/Method;
    .end local v17           #suite:Landroid/test/TestRunner$JunitTestSuite;
    :cond_20c
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Test wasn\'t Runnable and didn\'t have a children method: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_228
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c4 .. :try_end_228} :catch_86
    .catch Ljava/lang/InstantiationException; {:try_start_1c4 .. :try_end_228} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c4 .. :try_end_228} :catch_101

    goto/16 :goto_27

    .line 383
    .end local v7           #clazz:Ljava/lang/Class;
    .end local v15           #method:Ljava/lang/reflect/Method;
    .local v9, e:Ljava/lang/ClassNotFoundException;
    :cond_22a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Landroid/test/TestRunner;->missingTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27
.end method

.method public run([Ljava/lang/String;)V
    .registers 6
    .parameter "classes"

    .prologue
    .line 233
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 234
    .local v1, cl:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/test/TestRunner;->run(Ljava/lang/String;)V

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 236
    .end local v1           #cl:Ljava/lang/String;
    :cond_d
    return-void
.end method

.method public runInPerformanceMode(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 22
    .parameter "testCase"
    .parameter "className"
    .parameter "junitTest"
    .parameter "testNameInDb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 396
    const/4 v13, 0x1

    .line 397
    .local v13, increaseIterations:Z
    const/4 v5, 0x1

    .line 398
    .local v5, iterations:I
    const-wide/16 v8, 0x0

    .line 399
    .local v8, duration:J
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/test/TestRunner;->mIntermediates:Ljava/util/List;

    .line 401
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/test/TestRunner;->mInternalIterations:I

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 403
    .local v7, clazz:Ljava/lang/Class;
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v14

    .line 405
    .local v14, perftest:Ljava/lang/Object;
    const/4 v15, 0x0

    .line 406
    .local v15, perftestcase:Landroid/test/PerformanceTestCase;
    instance-of v1, v14, Landroid/test/PerformanceTestCase;

    if-eqz v1, :cond_35

    move-object v15, v14

    .line 407
    check-cast v15, Landroid/test/PerformanceTestCase;

    .line 409
    move-object/from16 v0, p0

    iget v1, v0, Landroid/test/TestRunner;->mMode:I

    if-nez v1, :cond_35

    invoke-interface {v15}, Landroid/test/PerformanceTestCase;->isPerformanceOnly()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 480
    :cond_34
    :goto_34
    return-void

    .line 414
    :cond_35
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->runFinalization()V

    .line 415
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 417
    if-eqz v15, :cond_57

    .line 418
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/test/TestRunner;->mIntermediates:Ljava/util/List;

    .line 419
    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Landroid/test/PerformanceTestCase;->startPerformance(Landroid/test/PerformanceTestCase$Intermediates;)I

    move-result v5

    .line 420
    if-lez v5, :cond_7b

    .line 421
    const/4 v13, 0x0

    .line 428
    :cond_57
    :goto_57
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 430
    :goto_5c
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Landroid/test/TestRunner;->mEndTime:J

    .line 431
    if-eqz v13, :cond_7d

    .line 435
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Landroid/test/TestRunner;->mStartTime:J

    .line 442
    :goto_6c
    if-eqz p3, :cond_84

    .line 443
    const/4 v12, 0x0

    .local v12, i:I
    :goto_6f
    if-ge v12, v5, :cond_91

    move-object/from16 v1, p1

    .line 444
    check-cast v1, Ljunit/framework/Test;

    invoke-static {v1}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    .line 443
    add-int/lit8 v12, v12, 0x1

    goto :goto_6f

    .line 423
    .end local v12           #i:I
    :cond_7b
    const/4 v5, 0x1

    goto :goto_57

    .line 439
    :cond_7d
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Landroid/test/TestRunner;->mStartTime:J

    goto :goto_6c

    :cond_84
    move-object/from16 v16, p1

    .line 447
    check-cast v16, Ljava/lang/Runnable;

    .line 448
    .local v16, test:Ljava/lang/Runnable;
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_89
    if-ge v12, v5, :cond_91

    .line 449
    invoke-interface/range {v16 .. v16}, Ljava/lang/Runnable;->run()V

    .line 448
    add-int/lit8 v12, v12, 0x1

    goto :goto_89

    .line 453
    .end local v16           #test:Ljava/lang/Runnable;
    :cond_91
    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/test/TestRunner;->mEndTime:J

    .line 454
    .local v10, endTime:J
    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-nez v1, :cond_9f

    .line 455
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v10

    .line 458
    :cond_9f
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/test/TestRunner;->mStartTime:J

    sub-long v8, v10, v1

    .line 459
    if-nez v13, :cond_c6

    .line 475
    :cond_a7
    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-eqz v1, :cond_34

    .line 476
    move-object/from16 v0, p0

    iget v1, v0, Landroid/test/TestRunner;->mInternalIterations:I

    mul-int/2addr v5, v1

    .line 477
    const-wide/32 v1, 0xf4240

    mul-long/2addr v1, v8

    int-to-long v3, v5

    div-long v3, v1, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/test/TestRunner;->mIntermediates:Ljava/util/List;

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct/range {v1 .. v6}, Landroid/test/TestRunner;->performance(Ljava/lang/String;JILjava/util/List;)V

    goto/16 :goto_34

    .line 462
    :cond_c6
    const-wide/16 v1, 0x1

    cmp-long v1, v8, v1

    if-gtz v1, :cond_cf

    .line 463
    mul-int/lit16 v5, v5, 0x3e8

    goto :goto_5c

    .line 464
    :cond_cf
    const-wide/16 v1, 0xa

    cmp-long v1, v8, v1

    if-gtz v1, :cond_d8

    .line 465
    mul-int/lit8 v5, v5, 0x64

    goto :goto_5c

    .line 466
    :cond_d8
    const-wide/16 v1, 0x64

    cmp-long v1, v8, v1

    if-gez v1, :cond_e2

    .line 467
    mul-int/lit8 v5, v5, 0xa

    goto/16 :goto_5c

    .line 468
    :cond_e2
    const-wide/16 v1, 0x3e8

    cmp-long v1, v8, v1

    if-gez v1, :cond_a7

    .line 469
    const-wide/16 v1, 0x3e8

    div-long/2addr v1, v8

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    long-to-int v1, v1

    mul-int/2addr v5, v1

    goto/16 :goto_5c
.end method

.method public runSingleJunitTest(Ljava/lang/String;)V
    .registers 16
    .parameter "className"

    .prologue
    const/4 v13, 0x1

    .line 483
    const/4 v4, 0x0

    .line 484
    .local v4, excep:Ljava/lang/Throwable;
    const/16 v11, 0x24

    invoke-virtual {p1, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 485
    .local v5, index:I
    const-string v9, ""

    .line 486
    .local v9, testName:Ljava/lang/String;
    move-object v7, p1

    .line 487
    .local v7, originalClassName:Ljava/lang/String;
    if-ltz v5, :cond_18

    .line 488
    const/4 v11, 0x0

    invoke-virtual {p1, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 489
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 492
    :cond_18
    :try_start_18
    iget-object v11, p0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 493
    .local v1, clazz:Ljava/lang/Class;
    sget-object v11, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    invoke-virtual {v11, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_6b

    .line 494
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljunit/framework/TestCase;

    .line 495
    .local v8, test:Ljunit/framework/TestCase;
    new-instance v6, Landroid/test/TestRunner$JunitTestSuite;

    invoke-direct {v6, p0}, Landroid/test/TestRunner$JunitTestSuite;-><init>(Landroid/test/TestRunner;)V

    .line 496
    .local v6, newSuite:Landroid/test/TestRunner$JunitTestSuite;
    invoke-virtual {v8, v9}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V

    .line 498
    instance-of v11, v8, Landroid/test/AndroidTestCase;

    if-eqz v11, :cond_45

    .line 499
    move-object v0, v8

    check-cast v0, Landroid/test/AndroidTestCase;

    move-object v10, v0
    :try_end_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_40} :catch_75
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_40} :catch_98
    .catch Ljava/lang/InstantiationException; {:try_start_18 .. :try_end_40} :catch_a5

    .line 501
    .local v10, testcase:Landroid/test/AndroidTestCase;
    :try_start_40
    iget-object v11, p0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11}, Landroid/test/AndroidTestCase;->setContext(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_45} :catch_6c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_40 .. :try_end_45} :catch_75
    .catch Ljava/lang/IllegalAccessException; {:try_start_40 .. :try_end_45} :catch_98
    .catch Ljava/lang/InstantiationException; {:try_start_40 .. :try_end_45} :catch_a5

    .line 506
    .end local v10           #testcase:Landroid/test/AndroidTestCase;
    :cond_45
    :goto_45
    :try_start_45
    invoke-virtual {v6, v8}, Landroid/test/TestRunner$JunitTestSuite;->addTest(Ljunit/framework/Test;)V

    .line 508
    iget v11, p0, Landroid/test/TestRunner;->mMode:I
    :try_end_4a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_45 .. :try_end_4a} :catch_75
    .catch Ljava/lang/IllegalAccessException; {:try_start_45 .. :try_end_4a} :catch_98
    .catch Ljava/lang/InstantiationException; {:try_start_45 .. :try_end_4a} :catch_a5

    if-ne v11, v13, :cond_89

    .line 510
    :try_start_4c
    invoke-virtual {v8}, Ljunit/framework/TestCase;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Landroid/test/TestRunner;->started(Ljava/lang/String;)V

    .line 511
    const/4 v11, 0x1

    invoke-virtual {v8}, Ljunit/framework/TestCase;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v8, p1, v11, v12}, Landroid/test/TestRunner;->runInPerformanceMode(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;)V

    .line 512
    invoke-virtual {v8}, Ljunit/framework/TestCase;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Landroid/test/TestRunner;->finished(Ljava/lang/String;)V

    .line 513
    if-nez v4, :cond_7e

    .line 514
    invoke-virtual {v8}, Ljunit/framework/TestCase;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Landroid/test/TestRunner;->passed(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_6b} :catch_86
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4c .. :try_end_6b} :catch_75
    .catch Ljava/lang/IllegalAccessException; {:try_start_4c .. :try_end_6b} :catch_98
    .catch Ljava/lang/InstantiationException; {:try_start_4c .. :try_end_6b} :catch_a5

    .line 537
    .end local v1           #clazz:Ljava/lang/Class;
    .end local v6           #newSuite:Landroid/test/TestRunner$JunitTestSuite;
    .end local v8           #test:Ljunit/framework/TestCase;
    :cond_6b
    :goto_6b
    return-void

    .line 502
    .restart local v1       #clazz:Ljava/lang/Class;
    .restart local v6       #newSuite:Landroid/test/TestRunner$JunitTestSuite;
    .restart local v8       #test:Ljunit/framework/TestCase;
    .restart local v10       #testcase:Landroid/test/AndroidTestCase;
    :catch_6c
    move-exception v3

    .line 503
    .local v3, ex:Ljava/lang/Exception;
    :try_start_6d
    const-string v11, "TestHarness"

    const-string v12, "Exception encountered while trying to set the context."

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6d .. :try_end_74} :catch_75
    .catch Ljava/lang/IllegalAccessException; {:try_start_6d .. :try_end_74} :catch_98
    .catch Ljava/lang/InstantiationException; {:try_start_6d .. :try_end_74} :catch_a5

    goto :goto_45

    .line 530
    .end local v1           #clazz:Ljava/lang/Class;
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v6           #newSuite:Landroid/test/TestRunner$JunitTestSuite;
    .end local v8           #test:Ljunit/framework/TestCase;
    .end local v10           #testcase:Landroid/test/AndroidTestCase;
    :catch_75
    move-exception v2

    .line 531
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v11, "TestHarness"

    const-string v12, "No test case to run"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6b

    .line 516
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    .restart local v1       #clazz:Ljava/lang/Class;
    .restart local v6       #newSuite:Landroid/test/TestRunner$JunitTestSuite;
    .restart local v8       #test:Ljunit/framework/TestCase;
    :cond_7e
    :try_start_7e
    invoke-virtual {v8}, Ljunit/framework/TestCase;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11, v4}, Landroid/test/TestRunner;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_85} :catch_86
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7e .. :try_end_85} :catch_75
    .catch Ljava/lang/IllegalAccessException; {:try_start_7e .. :try_end_85} :catch_98
    .catch Ljava/lang/InstantiationException; {:try_start_7e .. :try_end_85} :catch_a5

    goto :goto_6b

    .line 518
    :catch_86
    move-exception v3

    .line 519
    .local v3, ex:Ljava/lang/Throwable;
    move-object v4, v3

    .line 520
    goto :goto_6b

    .line 522
    .end local v3           #ex:Ljava/lang/Throwable;
    :cond_89
    :try_start_89
    iget v11, p0, Landroid/test/TestRunner;->mMode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_a1

    .line 523
    invoke-virtual {p0}, Landroid/test/TestRunner;->startProfiling()V

    .line 524
    invoke-static {v6}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    .line 525
    invoke-virtual {p0}, Landroid/test/TestRunner;->finishProfiling()V
    :try_end_97
    .catch Ljava/lang/ClassNotFoundException; {:try_start_89 .. :try_end_97} :catch_75
    .catch Ljava/lang/IllegalAccessException; {:try_start_89 .. :try_end_97} :catch_98
    .catch Ljava/lang/InstantiationException; {:try_start_89 .. :try_end_97} :catch_a5

    goto :goto_6b

    .line 532
    .end local v1           #clazz:Ljava/lang/Class;
    .end local v6           #newSuite:Landroid/test/TestRunner$JunitTestSuite;
    .end local v8           #test:Ljunit/framework/TestCase;
    :catch_98
    move-exception v2

    .line 533
    .local v2, e:Ljava/lang/IllegalAccessException;
    const-string v11, "TestHarness"

    const-string v12, "Illegal Access Exception"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6b

    .line 527
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    .restart local v1       #clazz:Ljava/lang/Class;
    .restart local v6       #newSuite:Landroid/test/TestRunner$JunitTestSuite;
    .restart local v8       #test:Ljunit/framework/TestCase;
    :cond_a1
    :try_start_a1
    invoke-static {v6}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;
    :try_end_a4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a1 .. :try_end_a4} :catch_75
    .catch Ljava/lang/IllegalAccessException; {:try_start_a1 .. :try_end_a4} :catch_98
    .catch Ljava/lang/InstantiationException; {:try_start_a1 .. :try_end_a4} :catch_a5

    goto :goto_6b

    .line 534
    .end local v1           #clazz:Ljava/lang/Class;
    .end local v6           #newSuite:Landroid/test/TestRunner$JunitTestSuite;
    .end local v8           #test:Ljunit/framework/TestCase;
    :catch_a5
    move-exception v2

    .line 535
    .local v2, e:Ljava/lang/InstantiationException;
    const-string v11, "TestHarness"

    const-string v12, "Instantiation Exception"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6b
.end method

.method public setInternalIterations(I)V
    .registers 2
    .parameter "count"

    .prologue
    .line 239
    iput p1, p0, Landroid/test/TestRunner;->mInternalIterations:I

    .line 240
    return-void
.end method

.method public setPerformanceMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 267
    iput p1, p0, Landroid/test/TestRunner;->mMode:I

    .line 268
    return-void
.end method

.method public startProfiling()V
    .registers 5

    .prologue
    .line 170
    new-instance v1, Ljava/io/File;

    const-string v2, "/tmp/trace"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/tmp/trace/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/test/TestRunner;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dmtrace"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, base:Ljava/lang/String;
    const/high16 v2, 0x80

    invoke-static {v0, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 174
    return-void
.end method

.method public startTiming(Z)V
    .registers 4
    .parameter "realTime"

    .prologue
    .line 243
    if-eqz p1, :cond_9

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/test/TestRunner;->mStartTime:J

    .line 248
    :goto_8
    return-void

    .line 246
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/test/TestRunner;->mStartTime:J

    goto :goto_8
.end method
