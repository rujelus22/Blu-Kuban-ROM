.class Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder$1;
.super Ljava/lang/Object;
.source "VoiceProxy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;->create()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder$1;->this$1:Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialogInterface"

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder$1;->this$1:Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;

    #getter for: Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;->access$0(Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;)Landroid/app/AlertDialog;

    move-result-object v1

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 275
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_18

    .line 276
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 278
    :cond_18
    return-void
.end method
