.class Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$20;
.super Landroid/content/BroadcastReceiver;
.source "AbstractDlnaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$20;->this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$20;->this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->finish()V

    .line 707
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/16 v1, 0x2f1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->notifyToActivity(I)V

    .line 708
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->SetTapMode(Z)V

    .line 709
    return-void
.end method
