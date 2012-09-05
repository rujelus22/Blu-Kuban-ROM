.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILandroid/os/Message;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

.field private final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Landroid/os/Message;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;->val$msg:Landroid/os/Message;

    .line 2534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const v2, 0x7f060046

    .line 2538
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-boolean v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bPressSave:Z

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$35(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/EditText;

    move-result-object v1

    if-nez v1, :cond_23

    .line 2539
    :cond_11
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$14(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 2540
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$14(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2575
    :cond_22
    :goto_22
    return-void

    .line 2546
    :cond_23
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->GetExternalStorageMount()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 2547
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v2, 0x7f060036

    #calls: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$27(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 2548
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$14(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 2549
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$14(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2573
    :cond_42
    :goto_42
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v2, -0x1

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$13(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    goto :goto_22

    .line 2553
    :cond_49
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$35(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2554
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_63

    .line 2555
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #calls: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$27(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    goto :goto_42

    .line 2557
    :cond_63
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_6f

    .line 2558
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #calls: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$27(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    goto :goto_42

    .line 2562
    :cond_6f
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bPressSave:Z

    .line 2563
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bEdit:Z

    .line 2565
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$19(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;->val$msg:Landroid/os/Message;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/os/Message;Ljava/lang/String;)V

    .line 2566
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$14(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 2567
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$14(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_42
.end method
