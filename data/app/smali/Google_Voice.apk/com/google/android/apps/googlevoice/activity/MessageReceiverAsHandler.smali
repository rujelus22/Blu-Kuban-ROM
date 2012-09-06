.class public Lcom/google/android/apps/googlevoice/activity/MessageReceiverAsHandler;
.super Landroid/os/Handler;
.source "MessageReceiverAsHandler.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/activity/MessageReceiver;


# instance fields
.field private final delegate:Lcom/google/android/apps/googlevoice/activity/MessageReceiver;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/activity/MessageReceiver;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/MessageReceiverAsHandler;->delegate:Lcom/google/android/apps/googlevoice/activity/MessageReceiver;

    .line 22
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/MessageReceiverAsHandler;->delegate:Lcom/google/android/apps/googlevoice/activity/MessageReceiver;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/activity/MessageReceiver;->handleMessage(Landroid/os/Message;)V

    .line 27
    return-void
.end method
