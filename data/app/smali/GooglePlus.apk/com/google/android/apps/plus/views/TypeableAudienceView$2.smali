.class Lcom/google/android/apps/plus/views/TypeableAudienceView$2;
.super Ljava/lang/Object;
.source "TypeableAudienceView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/views/TypeableAudienceView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/TypeableAudienceView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/TypeableAudienceView;)V
    .registers 2
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$2;->this$0:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 258
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1d

    .line 259
    iget-object v4, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$2;->this$0:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 261
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    .line 263
    .local v1, isFullscreen:Z
    packed-switch p2, :pswitch_data_42

    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #isFullscreen:Z
    :cond_1d
    move v2, v3

    .line 282
    :goto_1e
    return v2

    .line 265
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v1       #isFullscreen:Z
    :pswitch_1f
    iget-object v4, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$2;->this$0:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    iget-object v4, v4, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->getSelectionStart()I

    move-result v4

    if-gtz v4, :cond_1d

    iget-object v4, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$2;->this$0:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    iget-object v4, v4, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->getSelectionEnd()I

    move-result v4

    if-gtz v4, :cond_1d

    if-nez v1, :cond_1d

    .line 267
    iget-object v3, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$2;->this$0:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->removeLastChip()V

    goto :goto_1e

    .line 274
    :pswitch_3b
    if-eqz v1, :cond_1d

    .line 275
    invoke-virtual {v0, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_1e

    .line 263
    nop

    :pswitch_data_42
    .packed-switch 0x42
        :pswitch_3b
        :pswitch_1f
    .end packed-switch
.end method
