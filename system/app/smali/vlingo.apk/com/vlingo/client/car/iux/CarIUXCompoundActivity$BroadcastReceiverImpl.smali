.class Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$BroadcastReceiverImpl;
.super Landroid/content/BroadcastReceiver;
.source "CarIUXCompoundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastReceiverImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$BroadcastReceiverImpl;->this$0:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$BroadcastReceiverImpl;-><init>(Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$BroadcastReceiverImpl;->this$0:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->finish()V

    .line 153
    return-void
.end method
