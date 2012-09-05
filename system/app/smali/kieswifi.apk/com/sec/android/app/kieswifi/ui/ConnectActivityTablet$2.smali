.class Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$2;
.super Landroid/os/Handler;
.source "ConnectActivityTablet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)V
    .registers 2
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$2;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 211
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    .line 238
    :goto_6
    return-void

    .line 214
    :pswitch_7
    const-string v0, "handleMessage : ANIMATION_START_connect"

    invoke-static {v2, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$2;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mAniKiesConnect:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->access$100(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 216
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->connected:Z

    goto :goto_6

    .line 221
    :pswitch_19
    const-string v0, "handleMessage : ANIMATION_STOP_connect"

    invoke-static {v2, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 223
    const-string v0, "Fail"

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$2;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->result:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->access$200(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$2;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->finish()V

    goto :goto_6

    .line 229
    :cond_32
    sput-boolean v2, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->connected:Z

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$2;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->connected()V

    .line 232
    new-instance v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck;

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$2;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;I)V

    goto :goto_6

    .line 211
    :pswitch_data_42
    .packed-switch 0x3ef
        :pswitch_7
        :pswitch_19
    .end packed-switch
.end method
