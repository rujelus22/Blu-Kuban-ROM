.class public Lcom/wssnps/smlMmsStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "smlMmsStatusReceiver.java"


# static fields
.field public static lastSendId:Ljava/lang/String;

.field public static lastSendStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/wssnps/smlMmsStatusReceiver;->lastSendId:Ljava/lang/String;

    .line 10
    const/16 v0, -0x9

    sput v0, Lcom/wssnps/smlMmsStatusReceiver;->lastSendStatus:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 15
    const-string v0, "MmsStatusReceiver onReceive"

    invoke-static {v2, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 17
    const-string v0, "mmsid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wssnps/smlMmsStatusReceiver;->lastSendId:Ljava/lang/String;

    .line 18
    const-string v0, "status"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/wssnps/smlMmsStatusReceiver;->lastSendStatus:I

    .line 19
    sget-object v0, Lcom/wssnps/smlMmsStatusReceiver;->lastSendId:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 20
    const-string v0, "MmsStatusReceiver error: lastSendId is null"

    invoke-static {v2, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 24
    :goto_20
    return-void

    .line 22
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmsStatusReceiver mmsid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/wssnps/smlMmsStatusReceiver;->lastSendId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/wssnps/smlMmsStatusReceiver;->lastSendStatus:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_20
.end method
