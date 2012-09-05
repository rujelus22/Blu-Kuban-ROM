.class Lcom/sec/android/app/kieswifi/ui/ConnectActivity$1;
.super Landroid/os/Handler;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$1;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 170
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    .line 195
    :goto_6
    return-void

    .line 173
    :pswitch_7
    const-string v0, "handleMessage : ANIMATION_START_connect"

    invoke-static {v2, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 174
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->connected:Z

    goto :goto_6

    .line 179
    :pswitch_10
    const-string v0, "handleMessage : ANIMATION_STOP_connect"

    invoke-static {v2, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 180
    const-string v0, "Fail"

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$1;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->result:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->access$000(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$1;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->finish()V

    goto :goto_6

    .line 186
    :cond_29
    sput-boolean v2, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->connected:Z

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$1;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->connected()V

    .line 189
    new-instance v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck;

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$1;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;I)V

    goto :goto_6

    .line 170
    nop

    :pswitch_data_3a
    .packed-switch 0x3ef
        :pswitch_7
        :pswitch_10
    .end packed-switch
.end method
