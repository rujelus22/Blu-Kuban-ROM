.class Lcom/sec/android/app/ve/activity/CaptionEditActivity$9;
.super Ljava/lang/Object;
.source "CaptionEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/CaptionEditActivity;->onPrepareDialog(ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

.field private final synthetic val$inputText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/CaptionEditActivity;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$9;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    iput-object p2, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$9;->val$inputText:Landroid/widget/EditText;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$9;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 289
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$9;->val$inputText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 290
    return-void
.end method
