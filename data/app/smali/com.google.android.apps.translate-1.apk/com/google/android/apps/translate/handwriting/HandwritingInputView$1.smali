.class Lcom/google/android/apps/translate/handwriting/HandwritingInputView$1;
.super Landroid/os/Handler;
.source "HandwritingInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/handwriting/HandwritingInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)V
    .registers 2
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$1;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 233
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_3a

    .line 246
    :cond_6
    :goto_6
    return-void

    .line 235
    :pswitch_7
    iget-object v3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$1;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    #getter for: Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mHintText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->access$700(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 238
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 239
    .local v1, hint:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    const/4 v0, 0x1

    .line 240
    .local v0, hasHint:Z
    :goto_1a
    iget-object v3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$1;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    #getter for: Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mHintText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->access$700(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v0, :cond_33

    :goto_22
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$1;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    #getter for: Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mHintText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->access$700(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v0, :cond_36

    .end local v1           #hint:Ljava/lang/String;
    :goto_2d
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .end local v0           #hasHint:Z
    .restart local v1       #hint:Ljava/lang/String;
    :cond_31
    move v0, v2

    .line 239
    goto :goto_1a

    .line 240
    .restart local v0       #hasHint:Z
    :cond_33
    const/16 v2, 0x8

    goto :goto_22

    .line 241
    :cond_36
    const-string v1, ""

    goto :goto_2d

    .line 233
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method
