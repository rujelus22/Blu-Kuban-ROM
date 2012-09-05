.class public Lcom/samsung/map/SamsungMAPServiceRecord;
.super Ljava/lang/Object;
.source "SamsungMAPServiceRecord.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/map/SamsungMAPServiceRecord;->mContext:Landroid/content/Context;

    .line 54
    iput-object p1, p0, Lcom/samsung/map/SamsungMAPServiceRecord;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method


# virtual methods
.method public addRfcommServiceRecord(Ljava/lang/String;III)V
    .registers 7
    .parameter "serviceName"
    .parameter "MASInstanceID"
    .parameter "supportedMessageTypes"
    .parameter "channel"

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAP_ADDRECORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.MAP_EXTRA_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v1, "android.intent.extra.MAP_EXTRA_MASID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const-string v1, "android.intent.extra.MAP_EXTRA_TYPES"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    const-string v1, "android.intent.extra.MAP_EXTRA_CHANNEL"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/samsung/map/SamsungMAPServiceRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 66
    return-void
.end method
