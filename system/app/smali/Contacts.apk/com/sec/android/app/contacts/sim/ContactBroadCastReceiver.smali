.class public Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContactBroadCastReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, intentAct:Ljava/lang/String;
    return-void
.end method
