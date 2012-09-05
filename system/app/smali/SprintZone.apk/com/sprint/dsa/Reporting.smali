.class public Lcom/sprint/dsa/Reporting;
.super Ljava/lang/Object;
.source "Reporting.java"


# static fields
.field public static final ACTION_ACTIVATION_FAILED:Ljava/lang/String; = "activation failed"

.field public static final ACTION_ACTIVATION_SUCCESS:Ljava/lang/String; = "activation success"

.field private static final ACTION_ADD:Ljava/lang/String; = "add"

.field private static final ACTION_AIRPLANE_MODE:Ljava/lang/String; = "airplaine_mode"

.field private static final ACTION_CLICK:Ljava/lang/String; = "click"

.field private static final ACTION_DATA_FAILED:Ljava/lang/String; = "data failed"

.field public static final ACTION_PACK_ACTIVE:Ljava/lang/String; = "pack_active"

.field public static final ACTION_PACK_ADDED:Ljava/lang/String; = "pack_added"

.field public static final ACTION_PACK_REMOVED:Ljava/lang/String; = "pack_removed"

.field private static final ACTION_RECEIVED:Ljava/lang/String; = "received"

.field private static final ACTION_REMOVE:Ljava/lang/String; = "remove"

.field private static final ACTION_START:Ljava/lang/String; = "start"

.field private static final ACTION_STOP:Ljava/lang/String; = "stop"

.field public static final TYPE_AIRPLANE_MODE:I = 0x5

.field public static final TYPE_APP:I = 0x0

.field public static final TYPE_DEVICE_ACTIVATION:I = 0x8

.field public static final TYPE_NOTIFICATION:I = 0x3

.field public static final TYPE_NO_DATA:I = 0x6

.field public static final TYPE_NO_VOICE:I = 0x7

.field public static final TYPE_PACKS:I = 0x443

.field public static final TYPE_POLL:I = 0x4

.field public static final TYPE_PROMO:I = 0x2

.field public static final TYPE_SETTING:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearReport(Lcom/sprint/dsa/data/DbAdapter;)V
    .registers 1
    .parameter "db"

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/sprint/dsa/data/DbAdapter;->deleteTableReports()V

    .line 189
    return-void
.end method

.method public static createContentValues(ILjava/lang/String;)Landroid/content/ContentValues;
    .registers 4
    .parameter "type"
    .parameter "action"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {}, Lcom/sprint/dsa/Util;->currentTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, p1, v1}, Lcom/sprint/dsa/Reporting;->createContentValues(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public static createContentValues(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 7
    .parameter "id"
    .parameter "type"
    .parameter "action"
    .parameter "time"

    .prologue
    .line 41
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 42
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 44
    const-string v1, "action"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "time"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "slot"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    return-object v0
.end method

.method public static reportAirplaneMode(Lcom/sprint/dsa/data/DbAdapter;)V
    .registers 4
    .parameter "db"

    .prologue
    const/4 v2, 0x0

    .line 144
    const/4 v0, 0x5

    const-string v1, "airplaine_mode"

    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/sprint/dsa/data/DbAdapter;->insertReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    .line 145
    return-void
.end method

.method public static reportAlertClick(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V
    .registers 5
    .parameter "db"
    .parameter "id"

    .prologue
    .line 90
    const/4 v0, 0x3

    const-string v1, "click"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sprint/dsa/data/DbAdapter;->insertReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    .line 91
    return-void
.end method

.method public static reportAlertReceived(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V
    .registers 5
    .parameter "db"
    .parameter "id"

    .prologue
    .line 99
    const/4 v0, 0x3

    const-string v1, "received"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sprint/dsa/data/DbAdapter;->insertReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    .line 100
    return-void
.end method

.method public static reportAppStart(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V
    .registers 7
    .parameter "db"
    .parameter "data"

    .prologue
    .line 57
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "start"

    invoke-virtual {p0, v2, v3, v4, p1}, Lcom/sprint/dsa/data/DbAdapter;->insertReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 59
    .local v0, id:J
    return-void
.end method

.method public static reportAppStart(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "db"
    .parameter "source"
    .parameter "packId"

    .prologue
    .line 62
    move-object v0, p1

    .line 63
    .local v0, data:Ljava/lang/String;
    if-eqz p2, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_1a
    invoke-static {p0, v0}, Lcom/sprint/dsa/Reporting;->reportAppStart(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static reportAppStop(Lcom/sprint/dsa/data/DbAdapter;)V
    .registers 4
    .parameter "db"

    .prologue
    const/4 v2, 0x0

    .line 73
    const/4 v0, 0x0

    const-string v1, "stop"

    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/sprint/dsa/data/DbAdapter;->insertReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    .line 74
    return-void
.end method

.method public static reportDeviceActivation(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V
    .registers 4
    .parameter "db"
    .parameter "action"

    .prologue
    const/4 v1, 0x0

    .line 135
    const/16 v0, 0x8

    invoke-virtual {p0, v1, v0, p1, v1}, Lcom/sprint/dsa/data/DbAdapter;->insertReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    .line 136
    return-void
.end method

.method public static reportNoData(Lcom/sprint/dsa/data/DbAdapter;)V
    .registers 4
    .parameter "db"

    .prologue
    const/4 v2, 0x0

    .line 153
    const/4 v0, 0x6

    const-string v1, "data failed"

    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/sprint/dsa/data/DbAdapter;->insertReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    .line 154
    return-void
.end method

.method public static reportNoVoice(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V
    .registers 4
    .parameter "db"
    .parameter "action"

    .prologue
    const/4 v1, 0x0

    .line 162
    const/4 v0, 0x7

    invoke-virtual {p0, v1, v0, p1, v1}, Lcom/sprint/dsa/data/DbAdapter;->insertReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    .line 163
    return-void
.end method

.method public static reportPackActive(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .parameter "db"
    .parameter "packId"
    .parameter "packIds"

    .prologue
    .line 177
    const-string v1, ","

    invoke-static {v1, p2}, Lcom/sprint/dsa/Util;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, data:Ljava/lang/String;
    const/16 v1, 0x443

    const-string v2, "pack_active"

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/sprint/dsa/data/DbAdapter;->insertReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    .line 179
    return-void
.end method

.method public static reportPackAdded(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .parameter "db"
    .parameter "packId"
    .parameter "packVersion"
    .parameter "packIds"

    .prologue
    .line 167
    const-string v1, ","

    invoke-static {v1, p3}, Lcom/sprint/dsa/Util;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, data:Ljava/lang/String;
    const/16 v1, 0x443

    const-string v2, "pack_added"

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/sprint/dsa/data/DbAdapter;->insertReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    .line 169
    return-void
.end method

.method public static reportPackRemoved(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .parameter "db"
    .parameter "packId"
    .parameter "packIds"

    .prologue
    .line 172
    const-string v1, ","

    invoke-static {v1, p2}, Lcom/sprint/dsa/Util;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, data:Ljava/lang/String;
    const/16 v1, 0x443

    const-string v2, "pack_removed"

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/sprint/dsa/data/DbAdapter;->insertReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    .line 174
    return-void
.end method

.method public static reportPollChange(Lcom/sprint/dsa/data/DbAdapter;J)V
    .registers 7
    .parameter "db"
    .parameter "pollInterval"

    .prologue
    const/4 v3, 0x0

    .line 126
    const/4 v0, 0x4

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v0, v1, v3}, Lcom/sprint/dsa/data/DbAdapter;->insertReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    .line 127
    return-void
.end method

.method public static reportPromoClick(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;I)V
    .registers 10
    .parameter "db"
    .parameter "id"
    .parameter "position"

    .prologue
    .line 81
    const/4 v2, 0x2

    const-string v3, "click"

    invoke-static {}, Lcom/sprint/dsa/Util;->currentTime()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sprint/dsa/data/DbAdapter;->insertReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)J

    .line 82
    return-void
.end method

.method public static reportSettingAdd(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V
    .registers 5
    .parameter "db"
    .parameter "id"

    .prologue
    .line 108
    const/4 v0, 0x1

    const-string v1, "add"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sprint/dsa/data/DbAdapter;->insertReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    .line 109
    return-void
.end method

.method public static reportSettingRemove(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V
    .registers 5
    .parameter "db"
    .parameter "id"

    .prologue
    .line 117
    const/4 v0, 0x1

    const-string v1, "remove"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sprint/dsa/data/DbAdapter;->insertReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    .line 118
    return-void
.end method
