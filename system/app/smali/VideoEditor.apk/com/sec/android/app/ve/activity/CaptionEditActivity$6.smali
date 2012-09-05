.class Lcom/sec/android/app/ve/activity/CaptionEditActivity$6;
.super Ljava/lang/Object;
.source "CaptionEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/CaptionEditActivity;->createCaptionDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

.field private final synthetic val$inputText:Lcom/sec/android/app/ve/view/caption/CaptionEditText;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/CaptionEditActivity;Lcom/sec/android/app/ve/view/caption/CaptionEditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    iput-object p2, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$6;->val$inputText:Lcom/sec/android/app/ve/view/caption/CaptionEditText;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$6;->val$inputText:Lcom/sec/android/app/ve/view/caption/CaptionEditText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->setText(Lcom/sec/android/app/ve/view/caption/CaptionEditText;)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$6;->val$inputText:Lcom/sec/android/app/ve/view/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->isTextBigger(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionText:Lcom/sec/android/app/ve/view/caption/CaptionText;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->access$4(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)Lcom/sec/android/app/ve/view/caption/CaptionText;

    move-result-object v0

    const/high16 v1, 0x4188

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionText;->setTextSize(F)V

    .line 263
    :goto_22
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->removeCaptionDialog()V

    .line 264
    return-void

    .line 261
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionText:Lcom/sec/android/app/ve/view/caption/CaptionText;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->access$4(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)Lcom/sec/android/app/ve/view/caption/CaptionText;

    move-result-object v0

    const/high16 v1, 0x420c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionText;->setTextSize(F)V

    goto :goto_22
.end method
