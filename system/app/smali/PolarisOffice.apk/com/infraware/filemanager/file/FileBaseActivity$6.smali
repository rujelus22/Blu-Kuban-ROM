.class Lcom/infraware/filemanager/file/FileBaseActivity$6;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/file/FileBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/file/FileBaseActivity;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$6;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 433
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$6;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #getter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$7(Lcom/infraware/filemanager/file/FileBaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$6;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #getter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$7(Lcom/infraware/filemanager/file/FileBaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 434
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$6;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #getter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$7(Lcom/infraware/filemanager/file/FileBaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 436
    :cond_1e
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$6;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #setter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_bCancelSelect:Z
    invoke-static {v0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$9(Lcom/infraware/filemanager/file/FileBaseActivity;Z)V

    .line 437
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$6;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v0, v0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$6;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v0, v0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$6;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_3c

    .line 438
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$6;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v0, v0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileListAdapter;->notifyDataSetChanged()V

    .line 440
    :cond_3c
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$6;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    const/4 v1, 0x0

    #setter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectProgress:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$8(Lcom/infraware/filemanager/file/FileBaseActivity;Landroid/app/ProgressDialog;)V

    .line 441
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$6;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->setUpdateState(Z)V

    .line 442
    return-void
.end method
