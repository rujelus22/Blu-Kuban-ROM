.class Lcom/vlingo/client/home/HomeActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/home/HomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/home/HomeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/vlingo/client/home/HomeActivity$2;->this$0:Lcom/vlingo/client/home/HomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity$2;->this$0:Lcom/vlingo/client/home/HomeActivity;

    #getter for: Lcom/vlingo/client/home/HomeActivity;->safeReaderToggleHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/home/HomeActivity;->access$000(Lcom/vlingo/client/home/HomeActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 129
    return-void
.end method
