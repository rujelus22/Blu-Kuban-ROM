.class public Landroid/test/InstrumentationCoreTestRunner;
.super Landroid/test/InstrumentationTestRunner;
.source "InstrumentationCoreTestRunner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InstrumentationCoreTestRunner"


# instance fields
.field private singleTest:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/InstrumentationCoreTestRunner;->singleTest:Z

    return-void
.end method


# virtual methods
.method protected getAndroidTestRunner()Landroid/test/AndroidTestRunner;
    .registers 3

    .prologue
    .line 86
    invoke-super {p0}, Landroid/test/InstrumentationTestRunner;->getAndroidTestRunner()Landroid/test/AndroidTestRunner;

    move-result-object v0

    .line 88
    .local v0, runner:Landroid/test/AndroidTestRunner;
    new-instance v1, Landroid/test/InstrumentationCoreTestRunner$1;

    invoke-direct {v1, p0}, Landroid/test/InstrumentationCoreTestRunner$1;-><init>(Landroid/test/InstrumentationCoreTestRunner;)V

    invoke-virtual {v0, v1}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 193
    return-object v0
.end method

.method getBuilderRequirements()Ljava/util/List;
    .registers 6
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
    .line 198
    invoke-super {p0}, Landroid/test/InstrumentationTestRunner;->getBuilderRequirements()Ljava/util/List;

    move-result-object v1

    .line 200
    .local v1, builderRequirements:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;>;"
    new-instance v3, Landroid/test/suitebuilder/annotation/HasAnnotation;

    const-class v4, Ldalvik/annotation/BrokenTest;

    invoke-direct {v3, v4}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    invoke-static {v3}, Lcom/android/internal/util/Predicates;->not(Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;

    move-result-object v0

    .line 202
    .local v0, brokenTestPredicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-boolean v3, p0, Landroid/test/InstrumentationCoreTestRunner;->singleTest:Z

    if-nez v3, :cond_24

    .line 204
    new-instance v3, Landroid/test/suitebuilder/annotation/HasAnnotation;

    const-class v4, Ldalvik/annotation/SideEffect;

    invoke-direct {v3, v4}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    invoke-static {v3}, Lcom/android/internal/util/Predicates;->not(Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;

    move-result-object v2

    .line 206
    .local v2, sideEffectPredicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v2           #sideEffectPredicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    :cond_24
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "arguments"

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/test/InstrumentationCoreTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 69
    .local v0, cacheDir:Ljava/io/File;
    const-string v2, "user.language"

    const-string v3, "en"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    const-string v2, "user.region"

    const-string v3, "US"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    const-string v2, "java.home"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    const-string v2, "user.home"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    const-string v2, "java.io.tmpdir"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    if-eqz p1, :cond_46

    .line 77
    const-string v2, "class"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, classArg:Ljava/lang/String;
    if-eqz v1, :cond_4a

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const/4 v2, 0x1

    :goto_44
    iput-boolean v2, p0, Landroid/test/InstrumentationCoreTestRunner;->singleTest:Z

    .line 81
    .end local v1           #classArg:Ljava/lang/String;
    :cond_46
    invoke-super {p0, p1}, Landroid/test/InstrumentationTestRunner;->onCreate(Landroid/os/Bundle;)V

    .line 82
    return-void

    .line 78
    .restart local v1       #classArg:Ljava/lang/String;
    :cond_4a
    const/4 v2, 0x0

    goto :goto_44
.end method
