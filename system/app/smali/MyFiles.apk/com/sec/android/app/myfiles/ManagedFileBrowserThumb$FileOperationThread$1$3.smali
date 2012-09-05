.class Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1$3;
.super Ljava/lang/Object;
.source "ManagedFileBrowserThumb.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1;)V
    .registers 2
    .parameter

    .prologue
    .line 1304
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1$3;->this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 1306
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1$3;->this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;->mLoop:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;->access$3002(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;Z)Z

    .line 1307
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1$3;->this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;->mOverwrite:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;->access$3102(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;Z)Z

    .line 1308
    if-eqz p1, :cond_14

    .line 1309
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1310
    :cond_14
    return-void
.end method
