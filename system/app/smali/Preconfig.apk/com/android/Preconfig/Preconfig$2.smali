.class Lcom/android/Preconfig/Preconfig$2;
.super Landroid/os/Handler;
.source "Preconfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/Preconfig/Preconfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/Preconfig/Preconfig;


# direct methods
.method constructor <init>(Lcom/android/Preconfig/Preconfig;)V
    .registers 2
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/Preconfig/Preconfig$2;->this$0:Lcom/android/Preconfig/Preconfig;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 256
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_34

    .line 281
    :cond_5
    :goto_5
    return-void

    .line 259
    :sswitch_6
    const/4 v0, 0x0

    .line 264
    .local v0, data:[B
    const-string v1, "ro.monkey"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 269
    iget-object v1, p0, Lcom/android/Preconfig/Preconfig$2;->this$0:Lcom/android/Preconfig/Preconfig;

    invoke-virtual {v1}, Lcom/android/Preconfig/Preconfig;->setEndModeData()[B

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/android/Preconfig/Preconfig$2;->this$0:Lcom/android/Preconfig/Preconfig;

    #getter for: Lcom/android/Preconfig/Preconfig;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/Preconfig/Preconfig;->access$000(Lcom/android/Preconfig/Preconfig;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/Preconfig/Preconfig$2;->this$0:Lcom/android/Preconfig/Preconfig;

    iget-object v2, v2, Lcom/android/Preconfig/Preconfig;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_5

    .line 275
    .end local v0           #data:[B
    :sswitch_2d
    iget-object v1, p0, Lcom/android/Preconfig/Preconfig$2;->this$0:Lcom/android/Preconfig/Preconfig;

    #calls: Lcom/android/Preconfig/Preconfig;->runAndroidFactoryReset()V
    invoke-static {v1}, Lcom/android/Preconfig/Preconfig;->access$100(Lcom/android/Preconfig/Preconfig;)V

    goto :goto_5

    .line 256
    nop

    :sswitch_data_34
    .sparse-switch
        0x3f0 -> :sswitch_2d
        0x7ce -> :sswitch_6
    .end sparse-switch
.end method
