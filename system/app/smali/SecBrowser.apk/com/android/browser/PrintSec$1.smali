.class Lcom/android/browser/PrintSec$1;
.super Landroid/os/Handler;
.source "PrintSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/PrintSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/PrintSec;


# direct methods
.method constructor <init>(Lcom/android/browser/PrintSec;)V
    .registers 2
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/browser/PrintSec$1;->this$0:Lcom/android/browser/PrintSec;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 275
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 276
    .local v0, progress:I
    const-string v1, "PrintSec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage : progress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v1, p0, Lcom/android/browser/PrintSec$1;->this$0:Lcom/android/browser/PrintSec;

    #getter for: Lcom/android/browser/PrintSec;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/browser/PrintSec;->access$000(Lcom/android/browser/PrintSec;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 278
    const/16 v1, 0x64

    if-lt v0, v1, :cond_41

    .line 279
    iget-object v1, p0, Lcom/android/browser/PrintSec$1;->this$0:Lcom/android/browser/PrintSec;

    #getter for: Lcom/android/browser/PrintSec;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/browser/PrintSec;->access$100(Lcom/android/browser/PrintSec;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 280
    iget-object v1, p0, Lcom/android/browser/PrintSec$1;->this$0:Lcom/android/browser/PrintSec;

    #getter for: Lcom/android/browser/PrintSec;->mSaveImageThread:Lcom/android/browser/PrintSec$SaveImageThread;
    invoke-static {v1}, Lcom/android/browser/PrintSec;->access$200(Lcom/android/browser/PrintSec;)Lcom/android/browser/PrintSec$SaveImageThread;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/browser/PrintSec$SaveImageThread;->setState(I)V

    .line 281
    iget-object v1, p0, Lcom/android/browser/PrintSec$1;->this$0:Lcom/android/browser/PrintSec;

    #calls: Lcom/android/browser/PrintSec;->print()V
    invoke-static {v1}, Lcom/android/browser/PrintSec;->access$300(Lcom/android/browser/PrintSec;)V

    .line 283
    :cond_41
    return-void
.end method
