.class Lcom/google/android/plus1/PlusOneController$Editor;
.super Ljava/lang/Object;
.source "PlusOneController.java"

# interfaces
.implements Lcom/google/android/plus1/PlusOneEditor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/PlusOneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Editor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/plus1/PlusOneController;


# direct methods
.method private constructor <init>(Lcom/google/android/plus1/PlusOneController;)V
    .registers 2
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneController$Editor;->this$0:Lcom/google/android/plus1/PlusOneController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/plus1/PlusOneController;Lcom/google/android/plus1/PlusOneController$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/google/android/plus1/PlusOneController$Editor;-><init>(Lcom/google/android/plus1/PlusOneController;)V

    return-void
.end method

.method private addOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V
    .registers 4
    .parameter "op"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController$Editor;->this$0:Lcom/google/android/plus1/PlusOneController;

    #getter for: Lcom/google/android/plus1/PlusOneController;->mMemoryCache:Lcom/google/android/plus1/PlusOneStore;
    invoke-static {v0}, Lcom/google/android/plus1/PlusOneController;->access$600(Lcom/google/android/plus1/PlusOneController;)Lcom/google/android/plus1/PlusOneStore;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/plus1/PlusOneStore;->addOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V

    .line 475
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController$Editor;->this$0:Lcom/google/android/plus1/PlusOneController;

    #getter for: Lcom/google/android/plus1/PlusOneController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Lcom/google/android/plus1/PlusOneController;->access$800(Lcom/google/android/plus1/PlusOneController;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/plus1/PlusOneController$Editor$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/plus1/PlusOneController$Editor$1;-><init>(Lcom/google/android/plus1/PlusOneController$Editor;Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 480
    return-void
.end method


# virtual methods
.method public setPlusOne(Landroid/net/Uri;Z)V
    .registers 4
    .parameter "uri"
    .parameter "value"

    .prologue
    .line 484
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/plus1/PlusOneController$Editor;->setPlusOne(Landroid/net/Uri;ZLjava/lang/String;)V

    .line 485
    return-void
.end method

.method public setPlusOne(Landroid/net/Uri;ZLjava/lang/String;)V
    .registers 9
    .parameter "uri"
    .parameter "value"
    .parameter "abuseToken"

    .prologue
    const/4 v4, 0x6

    .line 489
    new-instance v1, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;-><init>(Landroid/net/Uri;ZLjava/lang/String;)V

    .line 490
    .local v1, op:Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;
    invoke-direct {p0, v1}, Lcom/google/android/plus1/PlusOneController$Editor;->addOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V

    .line 494
    :try_start_9
    iget-object v2, p0, Lcom/google/android/plus1/PlusOneController$Editor;->this$0:Lcom/google/android/plus1/PlusOneController;

    iget-object v3, p0, Lcom/google/android/plus1/PlusOneController$Editor;->this$0:Lcom/google/android/plus1/PlusOneController;

    #getter for: Lcom/google/android/plus1/PlusOneController;->mMemoryCacheWrapper:Lcom/google/android/plus1/PlusOneStore;
    invoke-static {v3}, Lcom/google/android/plus1/PlusOneController;->access$900(Lcom/google/android/plus1/PlusOneController;)Lcom/google/android/plus1/PlusOneStore;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/google/android/plus1/PlusOneStore;->getPlusOne(Landroid/net/Uri;)Lcom/google/android/plus1/PlusOne;

    move-result-object v3

    #calls: Lcom/google/android/plus1/PlusOneController;->publishPlusOne(Lcom/google/android/plus1/PlusOne;)V
    invoke-static {v2, v3}, Lcom/google/android/plus1/PlusOneController;->access$1000(Lcom/google/android/plus1/PlusOneController;Lcom/google/android/plus1/PlusOne;)V
    :try_end_18
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_9 .. :try_end_18} :catch_19
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_18} :catch_3f

    .line 504
    :cond_18
    :goto_18
    return-void

    .line 495
    :catch_19
    move-exception v0

    .line 496
    .local v0, e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    const-string v2, "PlusOneController"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 497
    const-string v2, "PlusOneController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading +1: "

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

    .line 499
    .end local v0           #e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    :catch_3f
    move-exception v0

    .line 500
    .local v0, e:Ljava/io/IOException;
    const-string v2, "PlusOneController"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 501
    const-string v2, "PlusOneController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading +1: "

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
.end method
