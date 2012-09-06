.class Lcom/android/inputmethod/latin/Settings$6;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/Settings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/Settings;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/Settings;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/Settings$6;->this$0:Lcom/android/inputmethod/latin/Settings;

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 686
    const/4 v0, -0x2

    if-ne p2, v0, :cond_13

    .line 687
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings$6;->this$0:Lcom/android/inputmethod/latin/Settings;

    #getter for: Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/android/inputmethod/latin/Settings;->access$3(Lcom/android/inputmethod/latin/Settings;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings$6;->this$0:Lcom/android/inputmethod/latin/Settings;

    #getter for: Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/inputmethod/latin/Settings;->access$4(Lcom/android/inputmethod/latin/Settings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 691
    :cond_12
    :goto_12
    return-void

    .line 688
    :cond_13
    const/4 v0, -0x1

    if-ne p2, v0, :cond_12

    .line 689
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings$6;->this$0:Lcom/android/inputmethod/latin/Settings;

    const/4 v1, 0x1

    #setter for: Lcom/android/inputmethod/latin/Settings;->mOkClicked:Z
    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/Settings;->access$5(Lcom/android/inputmethod/latin/Settings;Z)V

    goto :goto_12
.end method
