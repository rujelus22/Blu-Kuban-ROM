.class Lcom/android/phone/InCallScreen$35;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->displayCallGuardAnswerAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 7329
    iput-object p1, p0, Lcom/android/phone/InCallScreen$35;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 7332
    const/4 v2, 0x4

    if-eq p2, v2, :cond_7

    const/4 v2, 0x5

    if-ne p2, v2, :cond_8

    .line 7367
    :cond_7
    :goto_7
    return v1

    .line 7334
    :cond_8
    const/16 v2, 0x18

    if-eq p2, v2, :cond_10

    const/16 v2, 0x19

    if-ne p2, v2, :cond_49

    .line 7335
    :cond_10
    const-string v2, "InCallScreen"

    const-string v3, "VOLUME key: Key Up or Down"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7336
    iget-object v2, p0, Lcom/android/phone/InCallScreen$35;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1100(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_7

    .line 7350
    const-string v2, "InCallScreen"

    const-string v3, "VOLUME key: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7355
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 7356
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 7359
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 7360
    iget-object v2, p0, Lcom/android/phone/InCallScreen$35;->this$0:Lcom/android/phone/InCallScreen;

    const-string v3, "VOLUME key: silence ringer"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 7361
    :cond_45
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto :goto_7

    .line 7367
    .end local v0           #notifier:Lcom/android/phone/CallNotifier;
    :cond_49
    const/4 v1, 0x0

    goto :goto_7
.end method
