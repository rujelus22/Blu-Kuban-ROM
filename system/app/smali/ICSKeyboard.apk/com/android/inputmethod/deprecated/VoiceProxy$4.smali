.class Lcom/android/inputmethod/deprecated/VoiceProxy$4;
.super Ljava/lang/Object;
.source "VoiceProxy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/deprecated/VoiceProxy;->showVoiceWarningDialog(ZLandroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/deprecated/VoiceProxy;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$4;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$4;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    #getter for: Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;
    invoke-static {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$2(Lcom/android/inputmethod/deprecated/VoiceProxy;)Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->logKeyboardWarningDialogCancel()V

    .line 213
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$4;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    #calls: Lcom/android/inputmethod/deprecated/VoiceProxy;->switchToLastInputMethod()V
    invoke-static {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$4(Lcom/android/inputmethod/deprecated/VoiceProxy;)V

    .line 214
    return-void
.end method
