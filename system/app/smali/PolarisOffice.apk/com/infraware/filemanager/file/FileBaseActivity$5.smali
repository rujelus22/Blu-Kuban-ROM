.class Lcom/infraware/filemanager/file/FileBaseActivity$5;
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
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$5;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 419
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$5;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #getter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$7(Lcom/infraware/filemanager/file/FileBaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$5;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #getter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$7(Lcom/infraware/filemanager/file/FileBaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 420
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$5;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #getter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$7(Lcom/infraware/filemanager/file/FileBaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 422
    :cond_1d
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$5;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    const/4 v1, 0x0

    #setter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectProgress:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$8(Lcom/infraware/filemanager/file/FileBaseActivity;Landroid/app/ProgressDialog;)V

    .line 423
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$5;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    const/4 v1, 0x0

    #setter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_nUpdateColor:I
    invoke-static {v0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$1(Lcom/infraware/filemanager/file/FileBaseActivity;I)V

    .line 425
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$5;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->updateScreen()V

    .line 426
    return-void
.end method
