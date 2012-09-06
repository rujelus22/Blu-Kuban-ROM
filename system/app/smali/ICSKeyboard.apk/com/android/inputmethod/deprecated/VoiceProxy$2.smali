.class Lcom/android/inputmethod/deprecated/VoiceProxy$2;
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

.field private final synthetic val$swipe:Z


# direct methods
.method constructor <init>(Lcom/android/inputmethod/deprecated/VoiceProxy;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$2;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    iput-boolean p2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$2;->val$swipe:Z

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$2;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    #getter for: Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;
    invoke-static {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$2(Lcom/android/inputmethod/deprecated/VoiceProxy;)Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->logKeyboardWarningDialogOk()V

    .line 198
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$2;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    iget-boolean v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$2;->val$swipe:Z

    #calls: Lcom/android/inputmethod/deprecated/VoiceProxy;->reallyStartListening(Z)V
    invoke-static {v0, v1}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$3(Lcom/android/inputmethod/deprecated/VoiceProxy;Z)V

    .line 199
    return-void
.end method
