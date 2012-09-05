.class Lcom/locationlabs/v3client/V3ApiService$j;
.super Lcom/locationlabs/v3client/V3ApiService$n;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/V3ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/locationlabs/v3client/V3ApiService$n",
        "<",
        "Ldz;",
        "Ldy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/locationlabs/v3client/V3ApiService;


# direct methods
.method public constructor <init>(Lcom/locationlabs/v3client/V3ApiService;Ldy;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/locationlabs/v3client/V3ApiService$j;->d:Lcom/locationlabs/v3client/V3ApiService;

    .line 172
    const-string v0, "com.locationlabs.v3client.action.NOTIFICATION"

    invoke-direct {p0, p1, p2, v0}, Lcom/locationlabs/v3client/V3ApiService$n;-><init>(Lcom/locationlabs/v3client/V3ApiService;Lep;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method protected constructor <init>(Lcom/locationlabs/v3client/V3ApiService;Ldy;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/locationlabs/v3client/V3ApiService$j;->d:Lcom/locationlabs/v3client/V3ApiService;

    .line 177
    invoke-direct {p0, p1, p2, p3}, Lcom/locationlabs/v3client/V3ApiService$n;-><init>(Lcom/locationlabs/v3client/V3ApiService;Lep;Ljava/lang/String;)V

    .line 178
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Ldz;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-static {p1, p2}, Lcom/locationlabs/v3client/HeartbeatService;->a(Landroid/content/Context;Ldz;)V

    .line 190
    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 182
    iget-object v1, p0, Lcom/locationlabs/v3client/V3ApiService$j;->d:Lcom/locationlabs/v3client/V3ApiService;

    invoke-virtual {p0}, Lcom/locationlabs/v3client/V3ApiService$j;->a()Lep;

    move-result-object v0

    check-cast v0, Ldy;

    invoke-static {v1, v0}, Lae;->a(Landroid/content/Context;Ldy;)V

    .line 183
    invoke-super {p0, p1, p2}, Lcom/locationlabs/v3client/V3ApiService$n;->a(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 184
    return-void
.end method

.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 157
    check-cast p2, Ldz;

    invoke-virtual {p0, p1, p2}, Lcom/locationlabs/v3client/V3ApiService$j;->a(Landroid/content/Context;Ldz;)V

    return-void
.end method

.method protected final bridge synthetic e(Landroid/content/Context;)Ljava/lang/Object;
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-static {p1}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lw;->d(Ljava/lang/Long;)V

    invoke-interface {v0}, Lw;->b()Lcq;

    move-result-object v0

    if-eqz v0, :cond_92

    invoke-static {p1}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    invoke-static {p1}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    invoke-interface {v0}, Lw;->n()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    move v2, v0

    :goto_3e
    invoke-interface {v1}, Lw;->b()Lcq;

    move-result-object v0

    if-eqz v0, :cond_92

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.locationlabs.v3client.action.ACTION_UPDATE_HEARTBEAT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/locationlabs/v3client/HeartbeatService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v2, :cond_9b

    const-string v2, "HEARTBEAT_ACTIVE_MAX_UPDATE_INTERVAL_MILLIS"

    invoke-static {v2}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v2

    :goto_69
    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, v2

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "next heartbeat scheduled for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    :cond_92
    invoke-super {p0, p1}, Lcom/locationlabs/v3client/V3ApiService$n;->e(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldz;

    return-object p0

    :cond_99
    move v2, v3

    goto :goto_3e

    :cond_9b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    rem-long/2addr v2, v4

    const-string v4, "HEARTBEAT_INACTIVE_MAX_UPDATE_INTERVAL_MILLIS"

    invoke-static {v4}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {p1}, Lcom/locationlabs/v3client/AccountService;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v8, "TOTAL_MILLIS_OF_OFF_PEAK_HOURS"

    invoke-static {v8}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v8

    rem-long/2addr v6, v8

    const-wide/16 v10, 0x2

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    sub-long v2, v4, v2

    const-string v4, "HEARTBEAT_MEDIAN_SEND_TIME_MILLIS_FROM_MIDNIGHT"

    invoke-static {v4}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-long/2addr v2, v6

    goto :goto_69
.end method
