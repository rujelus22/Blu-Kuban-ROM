.class Lcom/google/android/music/ErrorInfo$3;
.super Ljava/lang/Object;
.source "ErrorInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

.field final synthetic val$dismissedListener:Lcom/google/android/music/ErrorInfo$OnErrorAlertDismissed;


# direct methods
.method constructor <init>(Lcom/google/android/music/ErrorInfo;Lcom/google/android/music/ErrorInfo$OnErrorAlertDismissed;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/google/android/music/ErrorInfo$3;->this$0:Lcom/google/android/music/ErrorInfo;

    iput-object p2, p0, Lcom/google/android/music/ErrorInfo$3;->val$dismissedListener:Lcom/google/android/music/ErrorInfo$OnErrorAlertDismissed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/android/music/ErrorInfo$3;->val$dismissedListener:Lcom/google/android/music/ErrorInfo$OnErrorAlertDismissed;

    if-eqz v0, :cond_9

    .line 467
    iget-object v0, p0, Lcom/google/android/music/ErrorInfo$3;->val$dismissedListener:Lcom/google/android/music/ErrorInfo$OnErrorAlertDismissed;

    invoke-interface {v0}, Lcom/google/android/music/ErrorInfo$OnErrorAlertDismissed;->onErrorAlertDismissed()V

    .line 469
    :cond_9
    return-void
.end method
