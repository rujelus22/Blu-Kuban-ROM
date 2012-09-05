.class final Lcom/google/android/plus1/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/plus1/w;

.field private final b:Lcom/google/android/plus1/am;

.field private final c:Lcom/google/android/plus1/ar;

.field private final d:Ljava/util/concurrent/Executor;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/google/android/plus1/w;Lcom/google/android/plus1/am;Lcom/google/android/plus1/ar;Ljava/util/concurrent/Executor;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/google/android/plus1/ad;->a:Lcom/google/android/plus1/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput-object p2, p0, Lcom/google/android/plus1/ad;->b:Lcom/google/android/plus1/am;

    .line 521
    iput-object p3, p0, Lcom/google/android/plus1/ad;->c:Lcom/google/android/plus1/ar;

    .line 522
    iput-object p4, p0, Lcom/google/android/plus1/ad;->d:Ljava/util/concurrent/Executor;

    .line 523
    return-void
.end method

.method private a(Lcom/google/android/plus1/PlusOneReader;Lcom/google/android/plus1/ar;)Lcom/google/android/plus1/ap;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x6

    .line 664
    :try_start_2
    invoke-interface {p1}, Lcom/google/android/plus1/PlusOneReader;->a()Lcom/google/android/plus1/ap;
    :try_end_5
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_2 .. :try_end_5} :catch_25
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_4c

    move-result-object v1

    .line 665
    if-eqz v1, :cond_12

    .line 667
    :try_start_8
    iget-object v0, p0, Lcom/google/android/plus1/ad;->d:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/plus1/ai;

    invoke-direct {v3, p0, v1}, Lcom/google/android/plus1/ai;-><init>(Lcom/google/android/plus1/ad;Lcom/google/android/plus1/ap;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 673
    :cond_12
    if-eqz p2, :cond_17

    .line 674
    invoke-interface {p2, v1}, Lcom/google/android/plus1/ar;->a(Lcom/google/android/plus1/ap;)V
    :try_end_17
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_8 .. :try_end_17} :catch_75
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_17} :catch_73

    :cond_17
    move-object v0, v2

    .line 687
    :cond_18
    :goto_18
    if-eqz v0, :cond_24

    .line 689
    iget-object v2, p0, Lcom/google/android/plus1/ad;->d:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/plus1/aj;

    invoke-direct {v3, p0, v0}, Lcom/google/android/plus1/aj;-><init>(Lcom/google/android/plus1/ad;Ljava/lang/Exception;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 695
    :cond_24
    return-object v1

    .line 676
    :catch_25
    move-exception v0

    move-object v1, v2

    .line 677
    :goto_27
    const-string v2, "PlusOneController"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 678
    const-string v2, "PlusOneController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading opted-in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 681
    :catch_4c
    move-exception v0

    move-object v1, v2

    .line 682
    :goto_4e
    const-string v2, "PlusOneController"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 683
    const-string v2, "PlusOneController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading opted-in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 681
    :catch_73
    move-exception v0

    goto :goto_4e

    .line 676
    :catch_75
    move-exception v0

    goto :goto_27
.end method

.method private a(Lcom/google/android/plus1/PlusOneReader;Ljava/util/Set;Lcom/google/android/plus1/ar;)Ljava/util/Set;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x6

    .line 561
    :try_start_1
    invoke-interface {p1, p2}, Lcom/google/android/plus1/PlusOneReader;->a(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v2

    .line 564
    iget-object v0, p0, Lcom/google/android/plus1/ad;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/plus1/af;

    invoke-direct {v1, p0, v2}, Lcom/google/android/plus1/af;-><init>(Lcom/google/android/plus1/ad;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 569
    if-eqz p3, :cond_66

    .line 570
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 571
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/u;

    invoke-interface {p3, v1, v0}, Lcom/google/android/plus1/ar;->a(Landroid/net/Uri;Lcom/google/android/plus1/u;)V
    :try_end_34
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_1 .. :try_end_34} :catch_35
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_34} :catch_80

    goto :goto_19

    .line 575
    :catch_35
    move-exception v0

    .line 577
    const-string v1, "PlusOneController"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 578
    const-string v1, "PlusOneController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading +1\'s: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_5a
    :goto_5a
    iget-object v1, p0, Lcom/google/android/plus1/ad;->d:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/plus1/ag;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/android/plus1/ag;-><init>(Lcom/google/android/plus1/ad;Ljava/util/Set;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 596
    const/4 v0, 0x0

    :goto_65
    return-object v0

    .line 574
    :cond_66
    :try_start_66
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_77

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_65

    :cond_77
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Iterator;)Ljava/util/HashSet;
    :try_end_7e
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_66 .. :try_end_7e} :catch_35
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_7e} :catch_80

    move-result-object v0

    goto :goto_65

    .line 580
    :catch_80
    move-exception v0

    .line 582
    const-string v1, "PlusOneController"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 583
    const-string v1, "PlusOneController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading +1\'s: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a
.end method

.method private a()V
    .registers 4

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/google/android/plus1/ad;->e:Z

    if-nez v0, :cond_1d

    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/plus1/ad;->e:Z

    .line 533
    iget-object v0, p0, Lcom/google/android/plus1/ad;->c:Lcom/google/android/plus1/ar;

    invoke-interface {v0}, Lcom/google/android/plus1/ar;->c()Ljava/util/List;

    move-result-object v0

    .line 534
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 535
    iget-object v1, p0, Lcom/google/android/plus1/ad;->d:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/plus1/ae;

    invoke-direct {v2, p0, v0}, Lcom/google/android/plus1/ae;-><init>(Lcom/google/android/plus1/ad;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 542
    :cond_1d
    return-void
.end method

.method static synthetic a(Lcom/google/android/plus1/ad;)V
    .registers 3
    .parameter

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/google/android/plus1/ad;->a()V

    iget-object v0, p0, Lcom/google/android/plus1/ad;->c:Lcom/google/android/plus1/ar;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/plus1/ad;->a(Lcom/google/android/plus1/PlusOneReader;Lcom/google/android/plus1/ar;)Lcom/google/android/plus1/ap;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/google/android/plus1/ap;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_14
    iget-object v0, p0, Lcom/google/android/plus1/ad;->b:Lcom/google/android/plus1/am;

    iget-object v1, p0, Lcom/google/android/plus1/ad;->c:Lcom/google/android/plus1/ar;

    invoke-direct {p0, v0, v1}, Lcom/google/android/plus1/ad;->a(Lcom/google/android/plus1/PlusOneReader;Lcom/google/android/plus1/ar;)Lcom/google/android/plus1/ap;

    :cond_1b
    return-void
.end method

.method static synthetic a(Lcom/google/android/plus1/ad;Lcom/google/android/plus1/as;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x6

    .line 512
    invoke-direct {p0}, Lcom/google/android/plus1/ad;->a()V

    iget-object v0, p0, Lcom/google/android/plus1/ad;->c:Lcom/google/android/plus1/ar;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/ar;->a(Lcom/google/android/plus1/as;)V

    invoke-direct {p0}, Lcom/google/android/plus1/ad;->a()V

    :try_start_c
    iget-object v0, p0, Lcom/google/android/plus1/ad;->c:Lcom/google/android/plus1/ar;

    invoke-interface {v0}, Lcom/google/android/plus1/ar;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/as;

    iget-object v2, p0, Lcom/google/android/plus1/ad;->b:Lcom/google/android/plus1/am;

    invoke-virtual {v0, v2}, Lcom/google/android/plus1/as;->a(Lcom/google/android/plus1/ak;)V

    iget-object v2, p0, Lcom/google/android/plus1/ad;->c:Lcom/google/android/plus1/ar;

    invoke-virtual {v0, v2}, Lcom/google/android/plus1/as;->a(Lcom/google/android/plus1/ak;)V

    iget-object v2, p0, Lcom/google/android/plus1/ad;->c:Lcom/google/android/plus1/ar;

    invoke-interface {v2, v0}, Lcom/google/android/plus1/ar;->b(Lcom/google/android/plus1/as;)V

    iget-object v2, p0, Lcom/google/android/plus1/ad;->d:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/plus1/ah;

    invoke-direct {v3, p0, v0}, Lcom/google/android/plus1/ah;-><init>(Lcom/google/android/plus1/ad;Lcom/google/android/plus1/as;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_3b} :catch_3c
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_c .. :try_end_3b} :catch_62

    goto :goto_16

    :catch_3c
    move-exception v0

    const-string v1, "PlusOneController"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_61

    const-string v1, "PlusOneController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error performing operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    :goto_61
    return-void

    :catch_62
    move-exception v0

    const-string v1, "PlusOneController"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_61

    const-string v1, "PlusOneController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error performing operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61
.end method

.method static synthetic a(Lcom/google/android/plus1/ad;Ljava/util/Set;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/google/android/plus1/ad;->a()V

    iget-object v0, p0, Lcom/google/android/plus1/ad;->c:Lcom/google/android/plus1/ar;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/plus1/ad;->a(Lcom/google/android/plus1/PlusOneReader;Ljava/util/Set;Lcom/google/android/plus1/ar;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    :cond_16
    const/4 v0, 0x1

    :goto_17
    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/plus1/ad;->b:Lcom/google/android/plus1/am;

    iget-object v1, p0, Lcom/google/android/plus1/ad;->c:Lcom/google/android/plus1/ar;

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/plus1/ad;->a(Lcom/google/android/plus1/PlusOneReader;Ljava/util/Set;Lcom/google/android/plus1/ar;)Ljava/util/Set;

    :cond_20
    return-void

    :cond_21
    const/4 v0, 0x0

    goto :goto_17
.end method
