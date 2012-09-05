.class Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10$2;
.super Ljava/lang/Object;
.source "ManagedFileBrowserThumb.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;)V
    .registers 2
    .parameter

    .prologue
    .line 885
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10$2;->this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;

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

    .line 887
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10$2;->this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperationCanceled:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$2202(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;Z)Z

    .line 888
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10$2;->this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOpThread:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$2400(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;->setAbortOperation(Z)V

    .line 889
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10$2;->this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 890
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10$2;->this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10$2;->this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->cancelMsg:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$2300(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 891
    :cond_30
    return-void
.end method
