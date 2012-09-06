.class Lcom/google/android/music/ErrorInfo$1;
.super Ljava/lang/Object;
.source "ErrorInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ErrorInfo;->createAlert(Landroid/app/Activity;Lcom/google/android/music/ErrorInfo$OnErrorAlertDismissed;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/ErrorInfo;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dismissedListener:Lcom/google/android/music/ErrorInfo$OnErrorAlertDismissed;

.field final synthetic val$positiveActionUriId:I


# direct methods
.method constructor <init>(Lcom/google/android/music/ErrorInfo;ILandroid/app/Activity;Lcom/google/android/music/ErrorInfo$OnErrorAlertDismissed;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/android/music/ErrorInfo$1;->this$0:Lcom/google/android/music/ErrorInfo;

    iput p2, p0, Lcom/google/android/music/ErrorInfo$1;->val$positiveActionUriId:I

    iput-object p3, p0, Lcom/google/android/music/ErrorInfo$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/google/android/music/ErrorInfo$1;->val$dismissedListener:Lcom/google/android/music/ErrorInfo$OnErrorAlertDismissed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 414
    iget v1, p0, Lcom/google/android/music/ErrorInfo$1;->val$positiveActionUriId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_30

    .line 415
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/music/ErrorInfo$1;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/google/android/music/ErrorInfo$1;->val$positiveActionUriId:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 417
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 418
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 419
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 420
    iget-object v1, p0, Lcom/google/android/music/ErrorInfo$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 422
    .end local v0           #i:Landroid/content/Intent;
    :cond_30
    iget-object v1, p0, Lcom/google/android/music/ErrorInfo$1;->val$dismissedListener:Lcom/google/android/music/ErrorInfo$OnErrorAlertDismissed;

    if-eqz v1, :cond_39

    .line 423
    iget-object v1, p0, Lcom/google/android/music/ErrorInfo$1;->val$dismissedListener:Lcom/google/android/music/ErrorInfo$OnErrorAlertDismissed;

    invoke-interface {v1}, Lcom/google/android/music/ErrorInfo$OnErrorAlertDismissed;->onErrorAlertDismissed()V

    .line 425
    :cond_39
    return-void
.end method
