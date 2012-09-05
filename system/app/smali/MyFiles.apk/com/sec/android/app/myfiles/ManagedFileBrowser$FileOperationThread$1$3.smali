.class Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread$1$3;
.super Ljava/lang/Object;
.source "ManagedFileBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread$1;)V
    .registers 2
    .parameter

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread$1$3;->this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread$1;

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

    .line 1311
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread$1$3;->this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread$1;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mLoop:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->access$3102(Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;Z)Z

    .line 1312
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread$1$3;->this$1:Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread$1;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mOverwrite:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->access$3202(Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;Z)Z

    .line 1313
    if-eqz p1, :cond_14

    .line 1314
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1315
    :cond_14
    return-void
.end method
