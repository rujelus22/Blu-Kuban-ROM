.class Lcom/vlingo/client/car/CarControlButtonsItem$1;
.super Ljava/lang/Object;
.source "CarControlButtonsItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/CarControlButtonsItem;->toggleWakeupWordSpotting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/CarControlButtonsItem;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/CarControlButtonsItem;)V
    .registers 2
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/vlingo/client/car/CarControlButtonsItem$1;->this$0:Lcom/vlingo/client/car/CarControlButtonsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/vlingo/client/car/CarControlButtonsItem$1;->this$0:Lcom/vlingo/client/car/CarControlButtonsItem;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarControlButtonsItem;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vlingo.client.samsung.phrasespotter.CONFIG_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 221
    return-void
.end method
