.class public Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;
.super Landroid/database/ContentObserver;
.source "UinboxObserver.java"


# instance fields
.field private mCondtion:Ljava/lang/String;

.field private mQueryHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/AsyncQueryHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/AsyncQueryHandler;)V
    .registers 5
    .parameter "ctx"
    .parameter "handler"
    .parameter "query"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 18
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;->mQueryHandler:Ljava/lang/ref/WeakReference;

    .line 19
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;->mCondtion:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;->mQueryHandler:Ljava/lang/ref/WeakReference;

    .line 26
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 11
    .parameter "b"

    .prologue
    .line 37
    const-string v1, "UinboxObserver"

    const-string v2, "onChange()"

    const-string v3, "UinboxObserver is called."

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :try_start_9
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;->mQueryHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AsyncQueryHandler;

    .line 43
    .local v0, handler:Landroid/content/AsyncQueryHandler;
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;->mCondtion:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_order, account_id asc"

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e} :catch_1f

    .line 52
    .end local v0           #handler:Landroid/content/AsyncQueryHandler;
    :goto_1e
    return-void

    .line 47
    :catch_1f
    move-exception v8

    .line 49
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "UinboxObserver"

    const-string v2, "handleMessage()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method public setCondition(Ljava/lang/String;)V
    .registers 2
    .parameter "where"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;->mCondtion:Ljava/lang/String;

    .line 31
    return-void
.end method
