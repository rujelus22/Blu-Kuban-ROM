.class Lcom/samsung/wimax/odb/ODB$1;
.super Landroid/content/BroadcastReceiver;
.source "ODB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/odb/ODB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/odb/ODB;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/odb/ODB;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/wimax/odb/ODB$1;->this$0:Lcom/samsung/wimax/odb/ODB;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.WIMAX.ODB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 39
    const-string v0, "ODB MSG"

    const-string v1, "onReceive : ODB default Receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 41
    const-string v0, "ODB MSG"

    const-string v1, "-----discard-----WIMAX_ODB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_20
    :goto_20
    return-void

    .line 44
    :cond_21
    iget-object v0, p0, Lcom/samsung/wimax/odb/ODB$1;->this$0:Lcom/samsung/wimax/odb/ODB;

    #calls: Lcom/samsung/wimax/odb/ODB;->CheckWimaxOn()V
    invoke-static {v0}, Lcom/samsung/wimax/odb/ODB;->access$000(Lcom/samsung/wimax/odb/ODB;)V

    goto :goto_20
.end method
