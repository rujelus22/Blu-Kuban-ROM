.class Lcom/infraware/filemanager/file/FileBaseActivity$4;
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
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$4;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$4;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #getter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_oScanProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$5(Lcom/infraware/filemanager/file/FileBaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$4;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #getter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_oScanProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$5(Lcom/infraware/filemanager/file/FileBaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 408
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$4;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #getter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_oScanProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$5(Lcom/infraware/filemanager/file/FileBaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 410
    :cond_1d
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$4;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    const/4 v1, 0x0

    #setter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_oScanProgress:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$6(Lcom/infraware/filemanager/file/FileBaseActivity;Landroid/app/ProgressDialog;)V

    .line 411
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$4;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onUpdateList()V

    .line 412
    return-void
.end method
