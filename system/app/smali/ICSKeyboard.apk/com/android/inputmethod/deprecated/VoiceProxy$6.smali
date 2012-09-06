.class Lcom/android/inputmethod/deprecated/VoiceProxy$6;
.super Landroid/os/AsyncTask;
.source "VoiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/deprecated/VoiceProxy;->switchToLastInputMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

.field private final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/deprecated/VoiceProxy;Landroid/os/IBinder;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$6;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    iput-object p2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$6;->val$token:Landroid/os/IBinder;

    .line 616
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 4
    .parameter "params"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$6;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    #getter for: Lcom/android/inputmethod/deprecated/VoiceProxy;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;
    invoke-static {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$7(Lcom/android/inputmethod/deprecated/VoiceProxy;)Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$6;->val$token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->switchToLastInputMethod(Landroid/os/IBinder;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/inputmethod/deprecated/VoiceProxy$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 626
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_29

    .line 627
    invoke-static {}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$8()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 628
    invoke-static {}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$9()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Couldn\'t switch back to last IME."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_15
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$6;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    #getter for: Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;
    invoke-static {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$2(Lcom/android/inputmethod/deprecated/VoiceProxy;)Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->reset()V

    .line 636
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$6;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    #getter for: Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;
    invoke-static {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$0(Lcom/android/inputmethod/deprecated/VoiceProxy;)Lcom/android/inputmethod/latin/LatinIME;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->requestHideSelf(I)V

    .line 643
    :goto_28
    return-void

    .line 641
    :cond_29
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$6;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    #getter for: Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;
    invoke-static {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$0(Lcom/android/inputmethod/deprecated/VoiceProxy;)Lcom/android/inputmethod/latin/LatinIME;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->notifyOnCurrentInputMethodSubtypeChanged(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    goto :goto_28
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/inputmethod/deprecated/VoiceProxy$6;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
