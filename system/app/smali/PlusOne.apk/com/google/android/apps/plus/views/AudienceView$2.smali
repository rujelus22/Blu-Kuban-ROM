.class Lcom/google/android/apps/plus/views/AudienceView$2;
.super Ljava/lang/Object;
.source "AudienceView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/AudienceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/AudienceView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/AudienceView;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/apps/plus/views/AudienceView$2;->this$0:Lcom/google/android/apps/plus/views/AudienceView;

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

    .line 137
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1d

    .line 138
    iget-object v4, p0, Lcom/google/android/apps/plus/views/AudienceView$2;->this$0:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/AudienceView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 140
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    .line 142
    .local v1, isFullscreen:Z
    packed-switch p2, :pswitch_data_3e

    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #isFullscreen:Z
    :cond_1d
    move v2, v3

    .line 160
    :goto_1e
    return v2

    .line 144
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v1       #isFullscreen:Z
    :pswitch_1f
    iget-object v4, p0, Lcom/google/android/apps/plus/views/AudienceView$2;->this$0:Lcom/google/android/apps/plus/views/AudienceView;

    #getter for: Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v4}, Lcom/google/android/apps/plus/views/AudienceView;->access$000(Lcom/google/android/apps/plus/views/AudienceView;)Landroid/widget/AutoCompleteTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-nez v4, :cond_1d

    if-nez v1, :cond_1d

    .line 145
    iget-object v3, p0, Lcom/google/android/apps/plus/views/AudienceView$2;->this$0:Lcom/google/android/apps/plus/views/AudienceView;

    #calls: Lcom/google/android/apps/plus/views/AudienceView;->removeLastChip()V
    invoke-static {v3}, Lcom/google/android/apps/plus/views/AudienceView;->access$100(Lcom/google/android/apps/plus/views/AudienceView;)V

    goto :goto_1e

    .line 152
    :pswitch_37
    if-eqz v1, :cond_1d

    .line 153
    invoke-virtual {v0, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_1e

    .line 142
    nop

    :pswitch_data_3e
    .packed-switch 0x42
        :pswitch_37
        :pswitch_1f
    .end packed-switch
.end method
