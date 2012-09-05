.class final Lcom/sprint/w/installer/delivery/DeliveryStatus$1;
.super Ljava/lang/Object;
.source "DeliveryStatus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$deliveryId:Ljava/lang/String;

.field final synthetic val$errMsg:Ljava/lang/String;

.field final synthetic val$markToSend:Z

.field final synthetic val$packAuthor:Ljava/lang/String;

.field final synthetic val$packID:Ljava/lang/String;

.field final synthetic val$packVersion:Ljava/lang/String;

.field final synthetic val$packVersionCode:Ljava/lang/String;

.field final synthetic val$statusIn:Lcom/sprint/w/installer/DeliveryState;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$deliveryId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$statusIn:Lcom/sprint/w/installer/DeliveryState;

    iput-object p4, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$errMsg:Ljava/lang/String;

    iput-object p5, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$packID:Ljava/lang/String;

    iput-object p6, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$packAuthor:Ljava/lang/String;

    iput-object p7, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$packVersion:Ljava/lang/String;

    iput-object p8, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$packVersionCode:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$markToSend:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 91
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$deliveryId:Ljava/lang/String;

    if-eqz v3, :cond_96

    .line 92
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$deliveryId:Ljava/lang/String;

    #calls: Lcom/sprint/w/installer/delivery/DeliveryStatus;->isDeliveryIdAround(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v3, v6}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->access$000(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 93
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$deliveryId:Ljava/lang/String;

    #calls: Lcom/sprint/w/installer/delivery/DeliveryStatus;->createRecord(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v3, v6}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->access$100(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    :cond_17
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "status"

    iget-object v6, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$statusIn:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v6}, Lcom/sprint/w/installer/DeliveryState;->getCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v3, "timeUpdated"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    const-string v3, "errMsg"

    iget-object v6, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$errMsg:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v3, "packId"

    iget-object v6, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$packID:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v3, "author"

    iget-object v6, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$packAuthor:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v3, "verName"

    iget-object v6, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$packVersion:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v3, "verCode"

    iget-object v6, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$packVersionCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v6, "flagSend"

    iget-boolean v3, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$markToSend:Z

    if-eqz v3, :cond_94

    move v3, v4

    :goto_6d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    sget-object v3, Lcom/sprint/w/installer/ContentProvider;->URI_DELIVERY:Landroid/net/Uri;

    const-string v6, "deliveryId=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v7, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$deliveryId:Ljava/lang/String;

    aput-object v7, v4, v5

    invoke-virtual {v0, v3, v2, v6, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    iget-boolean v3, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$markToSend:Z

    if-eqz v3, :cond_93

    .line 109
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$context:Landroid/content/Context;

    const-class v4, Lcom/sprint/w/installer/delivery/ReportPostService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v1, reportIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/DeliveryStatus$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 115
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #reportIntent:Landroid/content/Intent;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_93
    :goto_93
    return-void

    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_94
    move v3, v5

    .line 104
    goto :goto_6d

    .line 113
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_96
    invoke-static {}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v3

    const-string v4, "DeliveryStatus.updateRecord: ID was null so skip update."

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_93
.end method
