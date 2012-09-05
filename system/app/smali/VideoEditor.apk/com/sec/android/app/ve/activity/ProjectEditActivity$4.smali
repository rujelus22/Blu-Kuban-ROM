.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "ProjectEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 3205
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3210
    const-string v0, "This is inside mNewPcBroadcastReceiver on Receieve of PEA"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3211
    if-eqz p2, :cond_26

    .line 3213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This is inside mNewPcBroadcastReceiver on Recieve of PEA and uri is -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3214
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mLastCameraCapturedUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$13(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/net/Uri;)V

    .line 3217
    :cond_26
    return-void
.end method
