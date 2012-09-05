.class Lcom/android/inputmethod/latin/LatinIME$1;
.super Landroid/os/Handler;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinIME;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 158
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_50

    .line 177
    :cond_5
    :goto_5
    return-void

    .line 160
    :pswitch_6
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #calls: Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$000(Lcom/android/inputmethod/latin/LatinIME;)V

    goto :goto_5

    .line 163
    :pswitch_c
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$100(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/Tutorial;

    move-result-object v0

    if-nez v0, :cond_5

    .line 164
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 165
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    new-instance v1, Lcom/android/inputmethod/latin/Tutorial;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v3, v3, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-direct {v1, v2, v3}, Lcom/android/inputmethod/latin/Tutorial;-><init>(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/LatinKeyboardView;)V

    #setter for: Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;
    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->access$102(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/Tutorial;)Lcom/android/inputmethod/latin/Tutorial;

    .line 166
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$100(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/Tutorial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Tutorial;->start()V

    goto :goto_5

    .line 169
    :cond_38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 174
    :pswitch_43
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_5

    .line 158
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
        :pswitch_43
    .end packed-switch
.end method
