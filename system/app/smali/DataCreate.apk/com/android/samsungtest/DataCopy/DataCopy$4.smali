.class Lcom/android/samsungtest/DataCopy/DataCopy$4;
.super Ljava/lang/Object;
.source "DataCopy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/DataCopy/DataCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/DataCopy/DataCopy;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/DataCopy/DataCopy;)V
    .registers 2
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$4;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 316
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$4;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mButtonOk:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$700(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 317
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$4;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->setValueFromEditBox()V
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$300(Lcom/android/samsungtest/DataCopy/DataCopy;)V

    .line 319
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$4;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->isLowMemoryState:Z
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$000(Lcom/android/samsungtest/DataCopy/DataCopy;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 320
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$4;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v1, "Memory is in low space"

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V

    .line 325
    :goto_1e
    return-void

    .line 322
    :cond_1f
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$4;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mIsMax:Z
    invoke-static {v0, v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$502(Lcom/android/samsungtest/DataCopy/DataCopy;Z)Z

    .line 323
    new-instance v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;

    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$4;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;-><init>(Lcom/android/samsungtest/DataCopy/DataCopy;Lcom/android/samsungtest/DataCopy/DataCopy$1;)V

    new-array v1, v3, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1e
.end method
