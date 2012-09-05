.class Lcom/vlingo/client/car/CarActivity$CarDockBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/CarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarDockBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/CarActivity;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/car/CarActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2122
    iput-object p1, p0, Lcom/vlingo/client/car/CarActivity$CarDockBroadcastReceiver;->this$0:Lcom/vlingo/client/car/CarActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/car/CarActivity;Lcom/vlingo/client/car/CarActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2122
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/CarActivity$CarDockBroadcastReceiver;-><init>(Lcom/vlingo/client/car/CarActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2124
    const-string v0, "android.intent.extra.DOCK_STATE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_e

    .line 2125
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$CarDockBroadcastReceiver;->this$0:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarActivity;->finish()V

    .line 2127
    :cond_e
    return-void
.end method
