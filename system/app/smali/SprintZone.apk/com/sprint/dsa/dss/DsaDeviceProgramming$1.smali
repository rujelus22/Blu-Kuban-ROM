.class Lcom/sprint/dsa/dss/DsaDeviceProgramming$1;
.super Landroid/os/Handler;
.source "DsaDeviceProgramming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/dss/DsaDeviceProgramming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$1;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    .line 121
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_56

    .line 139
    :cond_5
    :goto_5
    return-void

    .line 127
    :pswitch_6
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$1;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$1;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    invoke-virtual {v0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->isDsaUrl()Z

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;->URL_PRESENT:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    :goto_12
    #setter for: Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mState:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;
    invoke-static {v1, v0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->access$0(Lcom/sprint/dsa/dss/DsaDeviceProgramming;Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;)V

    .line 128
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$1;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    #getter for: Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mRequestActivate:Z
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->access$1(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$1;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    #getter for: Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mState:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->access$2(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    move-result-object v0

    sget-object v1, Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;->URL_PRESENT:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    if-ne v0, v1, :cond_43

    .line 130
    const-string v0, "SprintZone_DSA"

    const-string v1, "User requested activate the device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$1;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    #getter for: Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->access$3(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$1;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    #getter for: Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mStartDSAClient:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->access$4(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 127
    :cond_40
    sget-object v0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;->NO_URL:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    goto :goto_12

    .line 134
    :cond_43
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$1;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    #getter for: Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->access$3(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$1;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    #getter for: Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mShowError:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->access$5(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 125
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
