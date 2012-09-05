.class Lcom/samsung/client/EmergencyCallDlgActivity$2;
.super Landroid/telephony/PhoneStateListener;
.source "EmergencyCallDlgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/client/EmergencyCallDlgActivity;->startPhoneStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/EmergencyCallDlgActivity;


# direct methods
.method constructor <init>(Lcom/samsung/client/EmergencyCallDlgActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/samsung/client/EmergencyCallDlgActivity$2;->this$0:Lcom/samsung/client/EmergencyCallDlgActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 5
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 156
    packed-switch p1, :pswitch_data_30

    .line 172
    :cond_3
    :goto_3
    return-void

    .line 158
    :pswitch_4
    const-string v0, "EmergencyCallDlgActivity"

    const-string v1, "Phone State: Idle"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity$2;->this$0:Lcom/samsung/client/EmergencyCallDlgActivity;

    #getter for: Lcom/samsung/client/EmergencyCallDlgActivity;->isCallingEmergency:Z
    invoke-static {v0}, Lcom/samsung/client/EmergencyCallDlgActivity;->access$300(Lcom/samsung/client/EmergencyCallDlgActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity$2;->this$0:Lcom/samsung/client/EmergencyCallDlgActivity;

    #calls: Lcom/samsung/client/EmergencyCallDlgActivity;->rebootDevice()V
    invoke-static {v0}, Lcom/samsung/client/EmergencyCallDlgActivity;->access$400(Lcom/samsung/client/EmergencyCallDlgActivity;)V

    goto :goto_3

    .line 164
    :pswitch_19
    const-string v0, "EmergencyCallDlgActivity"

    const-string v1, "Phone State: Off Hook"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity$2;->this$0:Lcom/samsung/client/EmergencyCallDlgActivity;

    const/4 v1, 0x1

    #setter for: Lcom/samsung/client/EmergencyCallDlgActivity;->isCallingEmergency:Z
    invoke-static {v0, v1}, Lcom/samsung/client/EmergencyCallDlgActivity;->access$302(Lcom/samsung/client/EmergencyCallDlgActivity;Z)Z

    goto :goto_3

    .line 168
    :pswitch_27
    const-string v0, "EmergencyCallDlgActivity"

    const-string v1, "Phone State: Ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 156
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_4
        :pswitch_27
        :pswitch_19
    .end packed-switch
.end method
