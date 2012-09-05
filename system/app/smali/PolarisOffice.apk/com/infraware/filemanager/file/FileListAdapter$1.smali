.class Lcom/infraware/filemanager/file/FileListAdapter$1;
.super Ljava/lang/Object;
.source "FileListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/file/FileListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/file/FileListAdapter;

.field private final synthetic val$index:I

.field private final synthetic val$item:Lcom/infraware/filemanager/file/FileListItem;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/file/FileListAdapter;ILcom/infraware/filemanager/file/FileListItem;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileListAdapter$1;->this$0:Lcom/infraware/filemanager/file/FileListAdapter;

    iput p2, p0, Lcom/infraware/filemanager/file/FileListAdapter$1;->val$index:I

    iput-object p3, p0, Lcom/infraware/filemanager/file/FileListAdapter$1;->val$item:Lcom/infraware/filemanager/file/FileListItem;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 369
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileListAdapter$1;->this$0:Lcom/infraware/filemanager/file/FileListAdapter;

    #getter for: Lcom/infraware/filemanager/file/FileListAdapter;->m_oSelectHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/infraware/filemanager/file/FileListAdapter;->access$1(Lcom/infraware/filemanager/file/FileListAdapter;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 370
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 371
    .local v1, message:Landroid/os/Message;
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 372
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileListAdapter$1;->this$0:Lcom/infraware/filemanager/file/FileListAdapter;

    iget v3, p0, Lcom/infraware/filemanager/file/FileListAdapter$1;->val$index:I

    invoke-virtual {v2, v3}, Lcom/infraware/filemanager/file/FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    .line 373
    .local v0, item:Lcom/infraware/filemanager/file/FileListItem;
    iput-boolean v5, v0, Lcom/infraware/filemanager/file/FileListItem;->isSelect:Z

    .line 374
    iput v5, v1, Landroid/os/Message;->what:I

    .line 380
    :goto_25
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileListAdapter$1;->val$item:Lcom/infraware/filemanager/file/FileListItem;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 381
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileListAdapter$1;->this$0:Lcom/infraware/filemanager/file/FileListAdapter;

    #getter for: Lcom/infraware/filemanager/file/FileListAdapter;->m_oSelectHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/infraware/filemanager/file/FileListAdapter;->access$1(Lcom/infraware/filemanager/file/FileListAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    .end local v0           #item:Lcom/infraware/filemanager/file/FileListItem;
    .end local v1           #message:Landroid/os/Message;
    :cond_32
    return-void

    .line 376
    .restart local v1       #message:Landroid/os/Message;
    :cond_33
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileListAdapter$1;->this$0:Lcom/infraware/filemanager/file/FileListAdapter;

    iget v3, p0, Lcom/infraware/filemanager/file/FileListAdapter$1;->val$index:I

    invoke-virtual {v2, v3}, Lcom/infraware/filemanager/file/FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    .line 377
    .restart local v0       #item:Lcom/infraware/filemanager/file/FileListItem;
    iput-boolean v4, v0, Lcom/infraware/filemanager/file/FileListItem;->isSelect:Z

    .line 378
    iput v4, v1, Landroid/os/Message;->what:I

    goto :goto_25
.end method
