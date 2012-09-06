.class final Lcom/google/android/plus1/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/plus1/ak;


# instance fields
.field final synthetic a:Lcom/google/android/plus1/w;


# direct methods
.method private constructor <init>(Lcom/google/android/plus1/w;)V
    .registers 2
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/google/android/plus1/aa;->a:Lcom/google/android/plus1/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/plus1/w;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 478
    invoke-direct {p0, p1}, Lcom/google/android/plus1/aa;-><init>(Lcom/google/android/plus1/w;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;ZLjava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x6

    .line 496
    new-instance v0, Lcom/google/android/plus1/au;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/plus1/au;-><init>(Landroid/net/Uri;ZLjava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/google/android/plus1/aa;->a:Lcom/google/android/plus1/w;

    invoke-static {v1}, Lcom/google/android/plus1/w;->b(Lcom/google/android/plus1/w;)Lcom/google/android/plus1/as;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/plus1/as;->a(Lcom/google/android/plus1/at;)V

    iget-object v1, p0, Lcom/google/android/plus1/aa;->a:Lcom/google/android/plus1/w;

    invoke-static {v1}, Lcom/google/android/plus1/w;->c(Lcom/google/android/plus1/w;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/plus1/ab;

    invoke-direct {v2, p0, v0}, Lcom/google/android/plus1/ab;-><init>(Lcom/google/android/plus1/aa;Lcom/google/android/plus1/at;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 501
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/plus1/aa;->a:Lcom/google/android/plus1/w;

    iget-object v1, p0, Lcom/google/android/plus1/aa;->a:Lcom/google/android/plus1/w;

    invoke-static {v1}, Lcom/google/android/plus1/w;->d(Lcom/google/android/plus1/w;)Lcom/google/android/plus1/as;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/plus1/as;->a(Landroid/net/Uri;)Lcom/google/android/plus1/u;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/plus1/w;->a(Lcom/google/android/plus1/w;Lcom/google/android/plus1/u;)V
    :try_end_2c
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_1d .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2c} :catch_4f

    .line 511
    :cond_2c
    :goto_2c
    return-void

    .line 502
    :catch_2d
    move-exception v0

    .line 503
    const-string v1, "PlusOneController"

    invoke-static {v1, v3}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 504
    const-string v1, "PlusOneController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading +1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 506
    :catch_4f
    move-exception v0

    .line 507
    const-string v1, "PlusOneController"

    invoke-static {v1, v3}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 508
    const-string v1, "PlusOneController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading +1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method
