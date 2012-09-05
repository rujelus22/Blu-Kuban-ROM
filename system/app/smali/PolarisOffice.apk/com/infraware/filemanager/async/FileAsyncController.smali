.class public Lcom/infraware/filemanager/async/FileAsyncController;
.super Ljava/lang/Thread;
.source "FileAsyncController.java"


# instance fields
.field private m_bOverwrite:Z

.field private m_nOperation:I

.field private m_oResultHandler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;

.field private m_oTargetItem:Lcom/infraware/filemanager/file/FileListItem;


# direct methods
.method public constructor <init>(ILcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/async/FileAsyncControlHandler;Z)V
    .registers 7
    .parameter "operation"
    .parameter "targetItem"
    .parameter "resultHandler"
    .parameter "isOverwrite"

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/filemanager/async/FileAsyncController;->m_bOverwrite:Z

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/filemanager/async/FileAsyncController;->m_nOperation:I

    .line 14
    iput-object v1, p0, Lcom/infraware/filemanager/async/FileAsyncController;->m_oResultHandler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;

    .line 15
    iput-object v1, p0, Lcom/infraware/filemanager/async/FileAsyncController;->m_oTargetItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 18
    iput p1, p0, Lcom/infraware/filemanager/async/FileAsyncController;->m_nOperation:I

    .line 19
    iput-object p2, p0, Lcom/infraware/filemanager/async/FileAsyncController;->m_oTargetItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 20
    iput-object p3, p0, Lcom/infraware/filemanager/async/FileAsyncController;->m_oResultHandler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;

    .line 21
    iput-boolean p4, p0, Lcom/infraware/filemanager/async/FileAsyncController;->m_bOverwrite:Z

    .line 22
    return-void
.end method


# virtual methods
.method public Cancel()V
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/infraware/filemanager/manager/FileManager;->m_bCancel:Z

    .line 26
    return-void
.end method

.method public run()V
    .registers 8

    .prologue
    .line 30
    const/4 v0, -0x1

    .line 31
    .local v0, fmResult:I
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 32
    .local v1, msg:Landroid/os/Message;
    iget v2, p0, Lcom/infraware/filemanager/async/FileAsyncController;->m_nOperation:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 34
    iget v2, p0, Lcom/infraware/filemanager/async/FileAsyncController;->m_nOperation:I

    sparse-switch v2, :sswitch_data_48

    .line 54
    :cond_f
    :goto_f
    :sswitch_f
    iget-object v2, p0, Lcom/infraware/filemanager/async/FileAsyncController;->m_oResultHandler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;

    if-eqz v2, :cond_1a

    .line 56
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 57
    iget-object v2, p0, Lcom/infraware/filemanager/async/FileAsyncController;->m_oResultHandler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;

    invoke-virtual {v2, v1}, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    :cond_1a
    return-void

    .line 36
    :sswitch_1b
    invoke-static {}, Lcom/infraware/filemanager/manager/FileManager;->getInstance()Lcom/infraware/filemanager/manager/FileManager;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/filemanager/async/FileAsyncController;->m_oResultHandler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;

    iget-object v4, p0, Lcom/infraware/filemanager/async/FileAsyncController;->m_oTargetItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v2, v3, v4}, Lcom/infraware/filemanager/manager/FileManager;->search(Lcom/infraware/filemanager/async/FileAsyncControlHandler;Lcom/infraware/filemanager/file/FileListItem;)I

    move-result v0

    .line 37
    goto :goto_f

    .line 40
    :sswitch_28
    iget-object v2, p0, Lcom/infraware/filemanager/async/FileAsyncController;->m_oTargetItem:Lcom/infraware/filemanager/file/FileListItem;

    if-eqz v2, :cond_f

    .line 43
    invoke-static {}, Lcom/infraware/filemanager/manager/FileManager;->getInstance()Lcom/infraware/filemanager/manager/FileManager;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/filemanager/async/FileAsyncController;->m_oResultHandler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;

    iget-object v4, p0, Lcom/infraware/filemanager/async/FileAsyncController;->m_oTargetItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-boolean v5, p0, Lcom/infraware/filemanager/async/FileAsyncController;->m_bOverwrite:Z

    iget v6, p0, Lcom/infraware/filemanager/async/FileAsyncController;->m_nOperation:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/infraware/filemanager/manager/FileManager;->paste(Lcom/infraware/filemanager/async/FileAsyncControlHandler;Lcom/infraware/filemanager/file/FileListItem;ZI)I

    move-result v0

    .line 44
    goto :goto_f

    .line 46
    :sswitch_3d
    invoke-static {}, Lcom/infraware/filemanager/manager/FileManager;->getInstance()Lcom/infraware/filemanager/manager/FileManager;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/filemanager/async/FileAsyncController;->m_oResultHandler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;

    invoke-virtual {v2, v3}, Lcom/infraware/filemanager/manager/FileManager;->delete(Lcom/infraware/filemanager/async/FileAsyncControlHandler;)I

    move-result v0

    .line 47
    goto :goto_f

    .line 34
    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_28
        0x1 -> :sswitch_28
        0x2 -> :sswitch_3d
        0xb -> :sswitch_f
        0x14 -> :sswitch_1b
    .end sparse-switch
.end method
