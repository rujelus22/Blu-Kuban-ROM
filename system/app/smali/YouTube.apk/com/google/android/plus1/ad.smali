.class final Lcom/google/android/plus1/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/plus1/w;

.field private final b:Lcom/google/android/plus1/an;

.field private final c:Lcom/google/android/plus1/as;

.field private final d:Ljava/util/concurrent/Executor;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/google/android/plus1/w;Lcom/google/android/plus1/an;Lcom/google/android/plus1/as;Ljava/util/concurrent/Executor;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/google/android/plus1/ad;->a:Lcom/google/android/plus1/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iput-object p2, p0, Lcom/google/android/plus1/ad;->b:Lcom/google/android/plus1/an;

    .line 528
    iput-object p3, p0, Lcom/google/android/plus1/ad;->c:Lcom/google/android/plus1/as;

    .line 529
    iput-object p4, p0, Lcom/google/android/plus1/ad;->d:Ljava/util/concurrent/Executor;

    .line 530
    return-void
.end method

.method private a(Lcom/google/android/plus1/PlusOneReader;Lcom/google/android/plus1/as;)Lcom/google/android/plus1/aq;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x6

    .line 681
    :try_start_2
    invoke-interface {p1}, Lcom/google/android/plus1/PlusOneReader;->a()Lcom/google/android/plus1/aq;
    :try_end_5
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_2 .. :try_end_5} :catch_25
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_48

    move-result-object v1

    .line 682
    if-eqz v1, :cond_12

    .line 684
    :try_start_8
    iget-object v0, p0, Lcom/google/android/plus1/ad;->d:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/plus1/ai;

    invoke-direct {v3, p0, v1}, Lcom/google/android/plus1/ai;-><init>(Lcom/google/android/plus1/ad;Lcom/google/android/plus1/aq;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 690
    :cond_12
    if-eqz p2, :cond_17

    .line 691
    invoke-interface {p2, v1}, Lcom/google/android/plus1/as;->a(Lcom/google/android/plus1/aq;)V
    :try_end_17
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_8 .. :try_end_17} :catch_6d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_17} :catch_6b

    :cond_17
    move-object v0, v2

    .line 704
    :cond_18
    :goto_18
    if-eqz v0, :cond_24

    .line 706
    iget-object v2, p0, Lcom/google/android/plus1/ad;->d:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/plus1/aj;

    invoke-direct {v3, p0, v0}, Lcom/google/android/plus1/aj;-><init>(Lcom/google/android/plus1/ad;Ljava/lang/Exception;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 712
    :cond_24
    return-object v1

    .line 693
    :catch_25
    move-exception v0

    move-object v1, v2

    .line 694
    :goto_27
    const-string v2, "PlusOneController"

    invoke-static {v2, v4}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 695
    const-string v2, "PlusOneController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error loading opted-in: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 698
    :catch_48
    move-exception v0

    move-object v1, v2

    .line 699
    :goto_4a
    const-string v2, "PlusOneController"

    invoke-static {v2, v4}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 700
    const-string v2, "PlusOneController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error loading opted-in: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 698
    :catch_6b
    move-exception v0

    goto :goto_4a

    .line 693
    :catch_6d
    move-exception v0

    goto :goto_27
.end method

.method private a(Lcom/google/android/plus1/PlusOneReader;Ljava/util/Set;Lcom/google/android/plus1/as;)Ljava/util/Set;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x6

    .line 568
    :try_start_1
    invoke-interface {p1, p2}, Lcom/google/android/plus1/PlusOneReader;->a(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v2

    .line 571
    iget-object v0, p0, Lcom/google/android/plus1/ad;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/plus1/af;

    invoke-direct {v1, p0, v2}, Lcom/google/android/plus1/af;-><init>(Lcom/google/android/plus1/ad;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 576
    if-eqz p3, :cond_62

    .line 577
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 578
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/u;

    invoke-interface {p3, v1, v0}, Lcom/google/android/plus1/as;->a(Landroid/net/Uri;Lcom/google/android/plus1/u;)V
    :try_end_34
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_1 .. :try_end_34} :catch_35
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_34} :catch_6b

    goto :goto_19

    .line 582
    :catch_35
    move-exception v0

    .line 584
    const-string v1, "PlusOneController"

    invoke-static {v1, v4}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 585
    const-string v1, "PlusOneController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading +1\'s: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_56
    :goto_56
    iget-object v1, p0, Lcom/google/android/plus1/ad;->d:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/plus1/ag;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/android/plus1/ag;-><init>(Lcom/google/android/plus1/ad;Ljava/util/Set;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 603
    const/4 v0, 0x0

    :goto_61
    return-object v0

    .line 581
    :cond_62
    :try_start_62
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a(Ljava/lang/Iterable;)Ljava/util/HashSet;
    :try_end_69
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_62 .. :try_end_69} :catch_35
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_69} :catch_6b

    move-result-object v0

    goto :goto_61

    .line 587
    :catch_6b
    move-exception v0

    .line 589
    const-string v1, "PlusOneController"

    invoke-static {v1, v4}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 590
    const-string v1, "PlusOneController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading +1\'s: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56
.end method

.method private a()V
    .registers 4

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/google/android/plus1/ad;->e:Z

    if-nez v0, :cond_1d

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/plus1/ad;->e:Z

    .line 540
    iget-object v0, p0, Lcom/google/android/plus1/ad;->c:Lcom/google/android/plus1/as;

    invoke-interface {v0}, Lcom/google/android/plus1/as;->c()Ljava/util/List;

    move-result-object v0

    .line 541
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 542
    iget-object v1, p0, Lcom/google/android/plus1/ad;->d:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/plus1/ae;

    invoke-direct {v2, p0, v0}, Lcom/google/android/plus1/ae;-><init>(Lcom/google/android/plus1/ad;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 549
    :cond_1d
    return-void
.end method

.method static synthetic a(Lcom/google/android/plus1/ad;)V
    .registers 3
    .parameter

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/google/android/plus1/ad;->a()V

    iget-object v0, p0, Lcom/google/android/plus1/ad;->c:Lcom/google/android/plus1/as;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/plus1/ad;->a(Lcom/google/android/plus1/PlusOneReader;Lcom/google/android/plus1/as;)Lcom/google/android/plus1/aq;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/google/android/plus1/aq;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_14
    iget-object v0, p0, Lcom/google/android/plus1/ad;->b:Lcom/google/android/plus1/an;

    iget-object v1, p0, Lcom/google/android/plus1/ad;->c:Lcom/google/android/plus1/as;

    invoke-direct {p0, v0, v1}, Lcom/google/android/plus1/ad;->a(Lcom/google/android/plus1/PlusOneReader;Lcom/google/android/plus1/as;)Lcom/google/android/plus1/aq;

    :cond_1b
    return-void
.end method

.method static synthetic a(Lcom/google/android/plus1/ad;Lcom/google/android/plus1/at;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 519
    invoke-direct {p0}, Lcom/google/android/plus1/ad;->a()V

    iget-object v0, p0, Lcom/google/android/plus1/ad;->c:Lcom/google/android/plus1/as;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/as;->a(Lcom/google/android/plus1/at;)V

    invoke-direct {p0}, Lcom/google/android/plus1/ad;->a()V

    iget-object v0, p0, Lcom/google/android/plus1/ad;->c:Lcom/google/android/plus1/as;

    invoke-interface {v0}, Lcom/google/android/plus1/as;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/at;

    :try_start_22
    iget-object v1, p0, Lcom/google/android/plus1/ad;->b:Lcom/google/android/plus1/an;

    invoke-virtual {v0, v1}, Lcom/google/android/plus1/at;->a(Lcom/google/android/plus1/ak;)V

    iget-object v1, p0, Lcom/google/android/plus1/ad;->c:Lcom/google/android/plus1/as;

    invoke-virtual {v0, v1}, Lcom/google/android/plus1/at;->a(Lcom/google/android/plus1/ak;)V

    invoke-direct {p0, v0}, Lcom/google/android/plus1/ad;->a(Lcom/google/android/plus1/at;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2f} :catch_30

    goto :goto_16

    :catch_30
    move-exception v1

    const-string v3, "PlusOneController"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4e

    const-string v3, "PlusOneController"

    const-string v4, "Error performing operation: %s"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    iget-object v1, p0, Lcom/google/android/plus1/ad;->a:Lcom/google/android/plus1/w;

    invoke-static {v1}, Lcom/google/android/plus1/w;->e(Lcom/google/android/plus1/w;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/google/android/plus1/ad;->a:Lcom/google/android/plus1/w;

    invoke-static {v1}, Lcom/google/android/plus1/w;->e(Lcom/google/android/plus1/w;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_7c

    iget-object v1, p0, Lcom/google/android/plus1/ad;->a:Lcom/google/android/plus1/w;

    invoke-static {v1}, Lcom/google/android/plus1/w;->e(Lcom/google/android/plus1/w;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/android/plus1/ad;->a(Lcom/google/android/plus1/at;)V

    goto :goto_16

    :cond_7c
    iget-object v3, p0, Lcom/google/android/plus1/ad;->a:Lcom/google/android/plus1/w;

    invoke-static {v3}, Lcom/google/android/plus1/w;->e(Lcom/google/android/plus1/w;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_8a
    iget-object v1, p0, Lcom/google/android/plus1/ad;->a:Lcom/google/android/plus1/w;

    invoke-static {v1}, Lcom/google/android/plus1/w;->e(Lcom/google/android/plus1/w;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_16

    :cond_99
    return-void
.end method

.method static synthetic a(Lcom/google/android/plus1/ad;Ljava/util/Set;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/google/android/plus1/ad;->a()V

    iget-object v0, p0, Lcom/google/android/plus1/ad;->c:Lcom/google/android/plus1/as;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/plus1/ad;->a(Lcom/google/android/plus1/PlusOneReader;Ljava/util/Set;Lcom/google/android/plus1/as;)Ljava/util/Set;

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

    iget-object v0, p0, Lcom/google/android/plus1/ad;->b:Lcom/google/android/plus1/an;

    iget-object v1, p0, Lcom/google/android/plus1/ad;->c:Lcom/google/android/plus1/as;

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/plus1/ad;->a(Lcom/google/android/plus1/PlusOneReader;Ljava/util/Set;Lcom/google/android/plus1/as;)Ljava/util/Set;

    :cond_20
    return-void

    :cond_21
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private a(Lcom/google/android/plus1/at;)V
    .registers 4
    .parameter

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/android/plus1/ad;->c:Lcom/google/android/plus1/as;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/as;->b(Lcom/google/android/plus1/at;)V

    .line 665
    iget-object v0, p0, Lcom/google/android/plus1/ad;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/plus1/ah;

    invoke-direct {v1, p0, p1}, Lcom/google/android/plus1/ah;-><init>(Lcom/google/android/plus1/ad;Lcom/google/android/plus1/at;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 670
    return-void
.end method
