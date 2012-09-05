.class Lcom/android/phone/RoamingAutoDialOption$1;
.super Ljava/lang/Object;
.source "RoamingAutoDialOption.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RoamingAutoDialOption;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RoamingAutoDialOption;


# direct methods
.method constructor <init>(Lcom/android/phone/RoamingAutoDialOption;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/phone/RoamingAutoDialOption$1;->this$0:Lcom/android/phone/RoamingAutoDialOption;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 52
    if-nez p2, :cond_34

    .line 53
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    .line 57
    :cond_6
    :goto_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADOutgoingCallUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADOutgoingCallNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/android/phone/RoamingAutoDialOption$1;->this$0:Lcom/android/phone/RoamingAutoDialOption;

    #getter for: Lcom/android/phone/RoamingAutoDialOption;->callType:I
    invoke-static {v1}, Lcom/android/phone/RoamingAutoDialOption;->access$000(Lcom/android/phone/RoamingAutoDialOption;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3b

    .line 61
    iget-object v1, p0, Lcom/android/phone/RoamingAutoDialOption$1;->this$0:Lcom/android/phone/RoamingAutoDialOption;

    const-class v2, Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/android/phone/RoamingAutoDialOption$1;->this$0:Lcom/android/phone/RoamingAutoDialOption;

    invoke-virtual {v1, v0}, Lcom/android/phone/RoamingAutoDialOption;->startActivity(Landroid/content/Intent;)V

    .line 67
    :goto_33
    return-void

    .line 54
    :cond_34
    if-ne p2, v0, :cond_6

    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    goto :goto_6

    .line 65
    :cond_3b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    goto :goto_33
.end method
