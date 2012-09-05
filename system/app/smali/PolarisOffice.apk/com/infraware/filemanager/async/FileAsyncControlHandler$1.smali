.class Lcom/infraware/filemanager/async/FileAsyncControlHandler$1;
.super Ljava/lang/Object;
.source "FileAsyncControlHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/async/FileAsyncControlHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/async/FileAsyncControlHandler;

.field private final synthetic val$operation:I


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/async/FileAsyncControlHandler;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler$1;->this$0:Lcom/infraware/filemanager/async/FileAsyncControlHandler;

    iput p2, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler$1;->val$operation:I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 98
    new-instance v0, Lcom/infraware/filemanager/async/FileAsyncController;

    iget v1, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler$1;->val$operation:I

    iget-object v2, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler$1;->this$0:Lcom/infraware/filemanager/async/FileAsyncControlHandler;

    #getter for: Lcom/infraware/filemanager/async/FileAsyncControlHandler;->item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-static {v2}, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->access$0(Lcom/infraware/filemanager/async/FileAsyncControlHandler;)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/filemanager/async/FileAsyncControlHandler$1;->this$0:Lcom/infraware/filemanager/async/FileAsyncControlHandler;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/async/FileAsyncController;-><init>(ILcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/async/FileAsyncControlHandler;Z)V

    .line 99
    .local v0, fileAsyncController:Lcom/infraware/filemanager/async/FileAsyncController;
    invoke-virtual {v0}, Lcom/infraware/filemanager/async/FileAsyncController;->start()V

    .line 100
    return-void
.end method
