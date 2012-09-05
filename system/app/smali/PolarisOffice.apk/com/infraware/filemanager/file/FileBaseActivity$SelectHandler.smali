.class Lcom/infraware/filemanager/file/FileBaseActivity$SelectHandler;
.super Landroid/os/Handler;
.source "FileBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/file/FileBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/file/FileBaseActivity;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/file/FileBaseActivity;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$SelectHandler;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    .line 350
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 354
    if-eqz p1, :cond_6

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_7

    .line 359
    :cond_6
    :goto_6
    return-void

    .line 357
    :cond_7
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_16

    const/4 v0, 0x0

    .line 358
    .local v0, isSelect:Z
    :goto_c
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity$SelectHandler;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v2, v0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onListItemSelect(ZLcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_6

    .line 357
    .end local v0           #isSelect:Z
    :cond_16
    const/4 v0, 0x1

    goto :goto_c
.end method
