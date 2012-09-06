.class Lcom/android/inputmethod/deprecated/VoiceProxy$1;
.super Ljava/lang/Object;
.source "VoiceProxy.java"

# interfaces
.implements Lcom/android/inputmethod/deprecated/voice/Hints$Display;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/deprecated/VoiceProxy;->initInternal(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;Lcom/android/inputmethod/latin/LatinIME$UIHandler;)V
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
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$1;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showHint(I)V
    .registers 5
    .parameter "viewResource"

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$1;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    #getter for: Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;
    invoke-static {v1}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$0(Lcom/android/inputmethod/deprecated/VoiceProxy;)Lcom/android/inputmethod/latin/LatinIME;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$1;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    const/4 v2, 0x1

    #setter for: Lcom/android/inputmethod/deprecated/VoiceProxy;->mIsShowingHint:Z
    invoke-static {v1, v2}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$1(Lcom/android/inputmethod/deprecated/VoiceProxy;Z)V

    .line 144
    return-void
.end method
