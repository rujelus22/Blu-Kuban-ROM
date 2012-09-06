.class Lcom/android/inputmethod/deprecated/VoiceProxy$3;
.super Ljava/lang/Object;
.source "VoiceProxy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$3;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$3;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    #getter for: Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;
    invoke-static {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$2(Lcom/android/inputmethod/deprecated/VoiceProxy;)Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->logKeyboardWarningDialogCancel()V

    .line 205
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$3;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    #calls: Lcom/android/inputmethod/deprecated/VoiceProxy;->switchToLastInputMethod()V
    invoke-static {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$4(Lcom/android/inputmethod/deprecated/VoiceProxy;)V

    .line 206
    return-void
.end method
