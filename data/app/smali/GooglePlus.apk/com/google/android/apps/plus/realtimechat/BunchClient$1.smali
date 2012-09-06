.class Lcom/google/android/apps/plus/realtimechat/BunchClient$1;
.super Ljava/lang/Object;
.source "BunchClient.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/realtimechat/BunchClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/realtimechat/BunchClient;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/BunchClient;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$1;->this$0:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .parameter "msg"

    .prologue
    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    .line 95
    :goto_5
    const/4 v0, 0x1

    return v0

    .line 88
    :pswitch_7
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$1;->this$0:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->checkResponseReceived(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    goto :goto_5

    .line 92
    :pswitch_11
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$1;->this$0:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;

    #calls: Lcom/google/android/apps/plus/realtimechat/BunchClient;->retrySendRequest(Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->access$000(Lcom/google/android/apps/plus/realtimechat/BunchClient;Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;)V

    goto :goto_5

    .line 86
    nop

    :pswitch_data_1c
    .packed-switch 0x64
        :pswitch_7
        :pswitch_11
    .end packed-switch
.end method
