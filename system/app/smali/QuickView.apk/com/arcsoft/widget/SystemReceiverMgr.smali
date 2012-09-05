.class public Lcom/arcsoft/widget/SystemReceiverMgr;
.super Ljava/lang/Object;
.source "SystemReceiverMgr.java"


# static fields
.field public static final KEY_DATABASE_CHANGED:I = 0x16

.field public static final KEY_ORIENTATION_LEVEL:I = 0x31

.field public static final KEY_ORIENTATION_RECEIVE:I = 0x39

.field public static final KEY_REG_DATABASE_RECEIVER:I = 0x8

.field public static final KEY_REG_ORIENTATION_RECEIVER:I = 0x4

.field public static final KEY_REG_STORAGE_RECEIVER:I = 0x2

.field public static final KEY_STORAGE_CHECKING:I = 0x12

.field public static final KEY_STORAGE_MOUNTED:I = 0x11

.field public static final KEY_STORAGE_SCANNER_FINISHED:I = 0x15

.field public static final KEY_STORAGE_SCANNER_STARTED:I = 0x13

.field public static final KEY_STORAGE_UNMOUNTED:I = 0x14


# instance fields
.field private mDatabaseMonitor:Lcom/arcsoft/widget/DatabaseMonitor;

.field private mIBase:Lcom/arcsoft/widget/IBase;

.field private mOritationMgr:Lcom/arcsoft/widget/OrientationMgr;

.field private mStorageMgr:Lcom/arcsoft/widget/StorageMgr;


# direct methods
.method public constructor <init>(Lcom/arcsoft/widget/IBase;)V
    .registers 3
    .parameter "iBase"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mIBase:Lcom/arcsoft/widget/IBase;

    .line 42
    iput-object v0, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mOritationMgr:Lcom/arcsoft/widget/OrientationMgr;

    .line 43
    iput-object v0, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mStorageMgr:Lcom/arcsoft/widget/StorageMgr;

    .line 44
    iput-object v0, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mDatabaseMonitor:Lcom/arcsoft/widget/DatabaseMonitor;

    .line 47
    iput-object p1, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mIBase:Lcom/arcsoft/widget/IBase;

    .line 48
    return-void
.end method


# virtual methods
.method public registerReceiver(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "key"

    .prologue
    .line 51
    if-nez p1, :cond_3

    .line 75
    :goto_2
    return-void

    .line 54
    :cond_3
    sparse-switch p2, :sswitch_data_40

    goto :goto_2

    .line 62
    :sswitch_7
    iget-object v0, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mStorageMgr:Lcom/arcsoft/widget/StorageMgr;

    if-nez v0, :cond_14

    .line 63
    new-instance v0, Lcom/arcsoft/widget/StorageMgr;

    iget-object v1, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mIBase:Lcom/arcsoft/widget/IBase;

    invoke-direct {v0, v1}, Lcom/arcsoft/widget/StorageMgr;-><init>(Lcom/arcsoft/widget/IBase;)V

    iput-object v0, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mStorageMgr:Lcom/arcsoft/widget/StorageMgr;

    .line 65
    :cond_14
    iget-object v0, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mStorageMgr:Lcom/arcsoft/widget/StorageMgr;

    invoke-virtual {v0, p1}, Lcom/arcsoft/widget/StorageMgr;->registerMgr(Landroid/content/Context;)V

    goto :goto_2

    .line 56
    :sswitch_1a
    iget-object v0, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mOritationMgr:Lcom/arcsoft/widget/OrientationMgr;

    if-nez v0, :cond_27

    .line 57
    new-instance v0, Lcom/arcsoft/widget/OrientationMgr;

    iget-object v1, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mIBase:Lcom/arcsoft/widget/IBase;

    invoke-direct {v0, v1}, Lcom/arcsoft/widget/OrientationMgr;-><init>(Lcom/arcsoft/widget/IBase;)V

    iput-object v0, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mOritationMgr:Lcom/arcsoft/widget/OrientationMgr;

    .line 59
    :cond_27
    iget-object v0, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mOritationMgr:Lcom/arcsoft/widget/OrientationMgr;

    invoke-virtual {v0, p1}, Lcom/arcsoft/widget/OrientationMgr;->registerMgr(Landroid/content/Context;)V

    goto :goto_2

    .line 68
    :sswitch_2d
    iget-object v0, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mDatabaseMonitor:Lcom/arcsoft/widget/DatabaseMonitor;

    if-nez v0, :cond_3a

    .line 69
    new-instance v0, Lcom/arcsoft/widget/DatabaseMonitor;

    iget-object v1, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mIBase:Lcom/arcsoft/widget/IBase;

    invoke-direct {v0, v1}, Lcom/arcsoft/widget/DatabaseMonitor;-><init>(Lcom/arcsoft/widget/IBase;)V

    iput-object v0, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mDatabaseMonitor:Lcom/arcsoft/widget/DatabaseMonitor;

    .line 71
    :cond_3a
    iget-object v0, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mDatabaseMonitor:Lcom/arcsoft/widget/DatabaseMonitor;

    invoke-virtual {v0, p1}, Lcom/arcsoft/widget/DatabaseMonitor;->registerMgr(Landroid/content/Context;)V

    goto :goto_2

    .line 54
    :sswitch_data_40
    .sparse-switch
        0x2 -> :sswitch_7
        0x4 -> :sswitch_1a
        0x8 -> :sswitch_2d
    .end sparse-switch
.end method

.method public unregisterReceiver(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "key"

    .prologue
    .line 78
    if-nez p1, :cond_3

    .line 96
    :cond_2
    :goto_2
    return-void

    .line 81
    :cond_3
    sparse-switch p2, :sswitch_data_26

    goto :goto_2

    .line 87
    :sswitch_7
    iget-object v0, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mStorageMgr:Lcom/arcsoft/widget/StorageMgr;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mStorageMgr:Lcom/arcsoft/widget/StorageMgr;

    invoke-virtual {v0, p1}, Lcom/arcsoft/widget/StorageMgr;->unregisterMgr(Landroid/content/Context;)V

    goto :goto_2

    .line 83
    :sswitch_11
    iget-object v0, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mOritationMgr:Lcom/arcsoft/widget/OrientationMgr;

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mOritationMgr:Lcom/arcsoft/widget/OrientationMgr;

    invoke-virtual {v0, p1}, Lcom/arcsoft/widget/OrientationMgr;->unregisterMgr(Landroid/content/Context;)V

    goto :goto_2

    .line 91
    :sswitch_1b
    iget-object v0, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mDatabaseMonitor:Lcom/arcsoft/widget/DatabaseMonitor;

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/arcsoft/widget/SystemReceiverMgr;->mDatabaseMonitor:Lcom/arcsoft/widget/DatabaseMonitor;

    invoke-virtual {v0, p1}, Lcom/arcsoft/widget/DatabaseMonitor;->unregisterMgr(Landroid/content/Context;)V

    goto :goto_2

    .line 81
    nop

    :sswitch_data_26
    .sparse-switch
        0x2 -> :sswitch_7
        0x4 -> :sswitch_11
        0x8 -> :sswitch_1b
    .end sparse-switch
.end method
