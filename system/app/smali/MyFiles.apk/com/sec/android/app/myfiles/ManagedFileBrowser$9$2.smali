.class Lcom/sec/android/app/myfiles/ManagedFileBrowser$9$2;
.super Ljava/lang/Object;
.source "ManagedFileBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;)V
    .registers 2
    .parameter

    .prologue
    .line 896
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9$2;->this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x1

    .line 898
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9$2;->this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperationCanceled:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2302(Lcom/sec/android/app/myfiles/ManagedFileBrowser;Z)Z

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9$2;->this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOpThread:Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2500(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->setAbortOperation(Z)V

    .line 900
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9$2;->this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 901
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9$2;->this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9$2;->this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->cancelMsg:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2400(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 902
    :cond_30
    return-void
.end method
