.class public Lcom/arcsoft/widget/DatabaseMonitor;
.super Ljava/lang/Object;
.source "DatabaseMonitor.java"


# instance fields
.field private mContentObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIBase:Lcom/arcsoft/widget/IBase;

.field private final uris:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/arcsoft/widget/IBase;)V
    .registers 5
    .parameter "iBase"

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v1, p0, Lcom/arcsoft/widget/DatabaseMonitor;->mIBase:Lcom/arcsoft/widget/IBase;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/DatabaseMonitor;->mContentObservers:Ljava/util/HashMap;

    .line 18
    iput-object v1, p0, Lcom/arcsoft/widget/DatabaseMonitor;->mHandler:Landroid/os/Handler;

    .line 19
    iput-object v1, p0, Lcom/arcsoft/widget/DatabaseMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/arcsoft/widget/DatabaseMonitor;->uris:[Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/arcsoft/widget/DatabaseMonitor;->mIBase:Lcom/arcsoft/widget/IBase;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/arcsoft/widget/DatabaseMonitor;)Lcom/arcsoft/widget/IBase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/arcsoft/widget/DatabaseMonitor;->mIBase:Lcom/arcsoft/widget/IBase;

    return-object v0
.end method


# virtual methods
.method public registerMgr(Landroid/content/Context;)V
    .registers 13
    .parameter "context"

    .prologue
    .line 27
    iget-object v6, p0, Lcom/arcsoft/widget/DatabaseMonitor;->mContentObservers:Ljava/util/HashMap;

    .line 28
    .local v6, observers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/database/ContentObserver;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 29
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v9, p0, Lcom/arcsoft/widget/DatabaseMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v9, :cond_18

    .line 30
    new-instance v9, Landroid/os/HandlerThread;

    const-string v10, "DBMonitorThread"

    invoke-direct {v9, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/arcsoft/widget/DatabaseMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 31
    iget-object v9, p0, Lcom/arcsoft/widget/DatabaseMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 33
    :cond_18
    iget-object v9, p0, Lcom/arcsoft/widget/DatabaseMonitor;->mHandler:Landroid/os/Handler;

    if-nez v9, :cond_29

    .line 34
    new-instance v9, Landroid/os/Handler;

    iget-object v10, p0, Lcom/arcsoft/widget/DatabaseMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/arcsoft/widget/DatabaseMonitor;->mHandler:Landroid/os/Handler;

    .line 36
    :cond_29
    iget-object v9, p0, Lcom/arcsoft/widget/DatabaseMonitor;->uris:[Ljava/lang/String;

    if-eqz v9, :cond_52

    .line 37
    iget-object v0, p0, Lcom/arcsoft/widget/DatabaseMonitor;->uris:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_31
    if-ge v3, v4, :cond_52

    aget-object v8, v0, v3

    .line 38
    .local v8, uri:Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/ContentObserver;

    .line 39
    .local v7, presentObserver:Landroid/database/ContentObserver;
    if-nez v7, :cond_4f

    .line 40
    iget-object v2, p0, Lcom/arcsoft/widget/DatabaseMonitor;->mHandler:Landroid/os/Handler;

    .line 41
    .local v2, handler:Landroid/os/Handler;
    new-instance v5, Lcom/arcsoft/widget/DatabaseMonitor$1;

    invoke-direct {v5, p0, v2}, Lcom/arcsoft/widget/DatabaseMonitor$1;-><init>(Lcom/arcsoft/widget/DatabaseMonitor;Landroid/os/Handler;)V

    .line 46
    .local v5, observer:Landroid/database/ContentObserver;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 47
    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .end local v2           #handler:Landroid/os/Handler;
    .end local v5           #observer:Landroid/database/ContentObserver;
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 51
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v7           #presentObserver:Landroid/database/ContentObserver;
    .end local v8           #uri:Ljava/lang/String;
    :cond_52
    return-void
.end method

.method public unregisterMgr(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 55
    iget-object v0, p0, Lcom/arcsoft/widget/DatabaseMonitor;->uris:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_5
    if-ge v1, v2, :cond_1d

    aget-object v4, v0, v1

    .line 56
    .local v4, uri:Ljava/lang/String;
    iget-object v5, p0, Lcom/arcsoft/widget/DatabaseMonitor;->mContentObservers:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/ContentObserver;

    .line 57
    .local v3, observer:Landroid/database/ContentObserver;
    if-eqz v3, :cond_1a

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 55
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 62
    .end local v3           #observer:Landroid/database/ContentObserver;
    .end local v4           #uri:Ljava/lang/String;
    :cond_1d
    iget-object v5, p0, Lcom/arcsoft/widget/DatabaseMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v5, :cond_28

    .line 63
    iget-object v5, p0, Lcom/arcsoft/widget/DatabaseMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->quit()Z

    .line 64
    iput-object v6, p0, Lcom/arcsoft/widget/DatabaseMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 66
    :cond_28
    iput-object v6, p0, Lcom/arcsoft/widget/DatabaseMonitor;->mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method
