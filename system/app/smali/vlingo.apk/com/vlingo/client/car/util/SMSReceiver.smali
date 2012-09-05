.class public Lcom/vlingo/client/car/util/SMSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SMSReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/util/SMSReceiver$SMSReceiverListener;
    }
.end annotation


# instance fields
.field private final listener:Lcom/vlingo/client/car/util/SMSReceiver$SMSReceiverListener;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/util/SMSReceiver$SMSReceiverListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/vlingo/client/car/util/SMSReceiver;->listener:Lcom/vlingo/client/car/util/SMSReceiver$SMSReceiverListener;

    .line 23
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vlingo/client/car/util/SMSReceiver;->listener:Lcom/vlingo/client/car/util/SMSReceiver$SMSReceiverListener;

    invoke-interface {v0}, Lcom/vlingo/client/car/util/SMSReceiver$SMSReceiverListener;->onSMSRecieved()V

    .line 29
    return-void
.end method
