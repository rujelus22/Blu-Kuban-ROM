.class final Lcom/google/android/plus1/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/plus1/ak;


# instance fields
.field final synthetic a:Lcom/google/android/plus1/w;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/plus1/w;)V
    .registers 3
    .parameter

    .prologue
    .line 471
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/plus1/aa;-><init>(Lcom/google/android/plus1/w;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/plus1/w;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/google/android/plus1/aa;->a:Lcom/google/android/plus1/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 489
    new-instance v0, Lcom/google/android/plus1/at;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/plus1/at;-><init>(Landroid/net/Uri;ZLjava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/google/android/plus1/aa;->a:Lcom/google/android/plus1/w;

    invoke-static {v1}, Lcom/google/android/plus1/w;->b(Lcom/google/android/plus1/w;)Lcom/google/android/plus1/ar;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/plus1/ar;->a(Lcom/google/android/plus1/as;)V

    iget-object v1, p0, Lcom/google/android/plus1/aa;->a:Lcom/google/android/plus1/w;

    invoke-static {v1}, Lcom/google/android/plus1/w;->c(Lcom/google/android/plus1/w;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/plus1/ab;

    invoke-direct {v2, p0, v0}, Lcom/google/android/plus1/ab;-><init>(Lcom/google/android/plus1/aa;Lcom/google/android/plus1/as;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 494
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/plus1/aa;->a:Lcom/google/android/plus1/w;

    iget-object v1, p0, Lcom/google/android/plus1/aa;->a:Lcom/google/android/plus1/w;

    invoke-static {v1}, Lcom/google/android/plus1/w;->d(Lcom/google/android/plus1/w;)Lcom/google/android/plus1/ar;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/plus1/ar;->a(Landroid/net/Uri;)Lcom/google/android/plus1/u;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/plus1/w;->a(Lcom/google/android/plus1/w;Lcom/google/android/plus1/u;)V
    :try_end_2c
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_1d .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2c} :catch_53

    .line 504
    :cond_2c
    :goto_2c
    return-void

    .line 495
    :catch_2d
    move-exception v0

    .line 496
    const-string v1, "PlusOneController"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 497
    const-string v1, "PlusOneController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading +1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 499
    :catch_53
    move-exception v0

    .line 500
    const-string v1, "PlusOneController"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 501
    const-string v1, "PlusOneController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading +1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method
