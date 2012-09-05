.class Lcom/samsung/dmp/layout/DMPVideoActivity$32;
.super Landroid/content/BroadcastReceiver;
.source "DMPVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2484
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$32;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2486
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$32;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->handleBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$6500(Lcom/samsung/dmp/layout/DMPVideoActivity;Landroid/content/Intent;)V

    .line 2487
    return-void
.end method
