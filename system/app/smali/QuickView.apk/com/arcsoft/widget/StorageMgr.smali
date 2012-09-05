.class public Lcom/arcsoft/widget/StorageMgr;
.super Ljava/lang/Object;
.source "StorageMgr.java"


# instance fields
.field private mIBase:Lcom/arcsoft/widget/IBase;

.field private final mMediaActionReceiver:Landroid/content/BroadcastReceiver;

.field private mbRegistered:Z

.field private meiaFilter:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Lcom/arcsoft/widget/IBase;)V
    .registers 3
    .parameter "iBase"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/arcsoft/widget/StorageMgr;->mIBase:Lcom/arcsoft/widget/IBase;

    .line 29
    iput-object v0, p0, Lcom/arcsoft/widget/StorageMgr;->meiaFilter:Landroid/content/IntentFilter;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/arcsoft/widget/StorageMgr;->mbRegistered:Z

    .line 65
    new-instance v0, Lcom/arcsoft/widget/StorageMgr$1;

    invoke-direct {v0, p0}, Lcom/arcsoft/widget/StorageMgr$1;-><init>(Lcom/arcsoft/widget/StorageMgr;)V

    iput-object v0, p0, Lcom/arcsoft/widget/StorageMgr;->mMediaActionReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    iput-object p1, p0, Lcom/arcsoft/widget/StorageMgr;->mIBase:Lcom/arcsoft/widget/IBase;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/arcsoft/widget/StorageMgr;)Lcom/arcsoft/widget/IBase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/arcsoft/widget/StorageMgr;->mIBase:Lcom/arcsoft/widget/IBase;

    return-object v0
.end method


# virtual methods
.method public registerMgr(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 37
    iget-boolean v0, p0, Lcom/arcsoft/widget/StorageMgr;->mbRegistered:Z

    if-ne v0, v1, :cond_6

    .line 52
    :cond_5
    :goto_5
    return-void

    .line 39
    :cond_6
    iput-boolean v1, p0, Lcom/arcsoft/widget/StorageMgr;->mbRegistered:Z

    .line 41
    iget-object v0, p0, Lcom/arcsoft/widget/StorageMgr;->meiaFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_5

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/arcsoft/widget/StorageMgr;->meiaFilter:Landroid/content/IntentFilter;

    .line 43
    iget-object v0, p0, Lcom/arcsoft/widget/StorageMgr;->meiaFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/arcsoft/widget/StorageMgr;->meiaFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/arcsoft/widget/StorageMgr;->meiaFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/arcsoft/widget/StorageMgr;->meiaFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/arcsoft/widget/StorageMgr;->meiaFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/arcsoft/widget/StorageMgr;->meiaFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/arcsoft/widget/StorageMgr;->meiaFilter:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/arcsoft/widget/StorageMgr;->mMediaActionReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/arcsoft/widget/StorageMgr;->meiaFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_5
.end method

.method public unregisterMgr(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/arcsoft/widget/StorageMgr;->mbRegistered:Z

    if-nez v0, :cond_5

    .line 63
    :cond_4
    :goto_4
    return-void

    .line 57
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/arcsoft/widget/StorageMgr;->mbRegistered:Z

    .line 59
    iget-object v0, p0, Lcom/arcsoft/widget/StorageMgr;->meiaFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_4

    .line 60
    iget-object v0, p0, Lcom/arcsoft/widget/StorageMgr;->mMediaActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/widget/StorageMgr;->meiaFilter:Landroid/content/IntentFilter;

    goto :goto_4
.end method
