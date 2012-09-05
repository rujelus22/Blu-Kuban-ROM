.class Lcom/sprint/w/installer/SprintIdHome$11;
.super Landroid/content/BroadcastReceiver;
.source "SprintIdHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/SprintIdHome;->goGetNew(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/SprintIdHome;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/SprintIdHome;)V
    .registers 2
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/sprint/w/installer/SprintIdHome$11;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome$11;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    new-instance v1, Lcom/sprint/w/installer/SprintIdHome$11$1;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/SprintIdHome$11$1;-><init>(Lcom/sprint/w/installer/SprintIdHome$11;)V

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/SprintIdHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 342
    return-void
.end method
