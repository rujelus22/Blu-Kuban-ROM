.class Lcom/sec/android/app/videoplayer/activity/MainTab$6;
.super Landroid/content/BroadcastReceiver;
.source "MainTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/MainTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MainTab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MainTab;)V
    .registers 2
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MainTab$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MainTab;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 389
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, action:Ljava/lang/String;
    return-void
.end method
