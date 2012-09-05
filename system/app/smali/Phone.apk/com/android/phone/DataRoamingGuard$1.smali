.class Lcom/android/phone/DataRoamingGuard$1;
.super Landroid/telephony/PhoneStateListener;
.source "DataRoamingGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DataRoamingGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DataRoamingGuard;


# direct methods
.method constructor <init>(Lcom/android/phone/DataRoamingGuard;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/phone/DataRoamingGuard$1;->this$0:Lcom/android/phone/DataRoamingGuard;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 4
    .parameter "serviceState"

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 86
    :cond_e
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard$1;->this$0:Lcom/android/phone/DataRoamingGuard;

    invoke-virtual {v0}, Lcom/android/phone/DataRoamingGuard;->finish()V

    .line 88
    :cond_13
    return-void
.end method
