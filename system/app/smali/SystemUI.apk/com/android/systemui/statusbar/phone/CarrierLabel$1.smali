.class Lcom/android/systemui/statusbar/phone/CarrierLabel$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 89
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v2, "showSpn"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "spn"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "showPlmn"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "plmn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 99
    :cond_2a
    :goto_2a
    return-void

    .line 94
    :cond_2b
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 96
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_2a
.end method
