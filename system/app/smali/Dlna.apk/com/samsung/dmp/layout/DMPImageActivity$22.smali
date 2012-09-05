.class Lcom/samsung/dmp/layout/DMPImageActivity$22;
.super Landroid/content/BroadcastReceiver;
.source "DMPImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/DMPImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPImageActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$22;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1273
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.dlna.player_started"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1274
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$22;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->finish()V

    .line 1276
    :cond_11
    return-void
.end method
