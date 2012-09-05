.class public Lcom/sprint/dsa/data/Alerts;
.super Ljava/lang/Object;
.source "Alerts.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/sprint/dsa/data/Alert;",
        ">;"
    }
.end annotation


# static fields
.field public static final DB_COL_ACTION:Ljava/lang/String; = "action"

.field public static final DB_COL_CAMPAIGN:Ljava/lang/String; = "campaign"

.field public static final DB_COL_DESC:Ljava/lang/String; = "desc"

.field public static final DB_COL_EXPIRATION:Ljava/lang/String; = "expiration"

.field public static final DB_COL_EXTRA:Ljava/lang/String; = "extra"

.field public static final DB_COL_HEADER:Ljava/lang/String; = "header"

.field public static final DB_COL_ICON:Ljava/lang/String; = "icon"

.field public static final DB_COL_ID:Ljava/lang/String; = "id"

.field public static final DB_COL_IMGURL:Ljava/lang/String; = "imgurl"

.field public static final DB_COL_SID:Ljava/lang/String; = "sid"

.field public static final DB_COL_TITLE:Ljava/lang/String; = "title"

.field public static final DB_COL_URI:Ljava/lang/String; = "uri"

.field public static final DB_TABLE:Ljava/lang/String; = "table_alert"

.field public static final KEY_ACTION:Ljava/lang/String; = "ACTION"

.field public static final KEY_ID:Ljava/lang/String; = "ID"

.field public static final KEY_URI:Ljava/lang/String; = "URI"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAlerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/data/Alert;",
            ">;"
        }
    .end annotation
.end field

.field private mVer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-string v0, "SprintZone_Alerts"

    sput-object v0, Lcom/sprint/dsa/data/Alerts;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "version"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/dsa/data/Alerts;->mVer:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/data/Alerts;->mAlerts:Ljava/util/List;

    .line 48
    iput-object p1, p0, Lcom/sprint/dsa/data/Alerts;->mVer:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static deleteAlert(Lcom/sprint/dsa/data/DbAdapter;Lcom/sprint/dsa/data/Alert;)V
    .registers 4
    .parameter "dbHelper"
    .parameter "alert"

    .prologue
    .line 157
    iget-wide v0, p1, Lcom/sprint/dsa/data/Alert;->m_id:J

    invoke-virtual {p0, v0, v1}, Lcom/sprint/dsa/data/DbAdapter;->deleteAlert(J)V

    .line 158
    return-void
.end method


# virtual methods
.method public addAlert(Lcom/sprint/dsa/data/Alert;)V
    .registers 3
    .parameter "alert"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sprint/dsa/data/Alerts;->mAlerts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public cleanAlerts(Landroid/content/Context;Lcom/sprint/dsa/data/DbAdapter;)V
    .registers 6
    .parameter "context"
    .parameter "dbHelper"

    .prologue
    .line 208
    iget-object v1, p0, Lcom/sprint/dsa/data/Alerts;->mAlerts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 216
    return-void

    .line 208
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/data/Alert;

    .line 209
    .local v0, alert:Lcom/sprint/dsa/data/Alert;
    invoke-virtual {v0}, Lcom/sprint/dsa/data/Alert;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 211
    invoke-static {p2, v0}, Lcom/sprint/dsa/data/Alerts;->deleteAlert(Lcom/sprint/dsa/data/DbAdapter;Lcom/sprint/dsa/data/Alert;)V

    .line 213
    invoke-static {p1, v0}, Lcom/sprint/dsa/Notifier;->cancelNotification(Landroid/content/Context;Lcom/sprint/dsa/data/Alert;)V

    goto :goto_6
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sprint/dsa/data/Alerts;->mAlerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 150
    return-void
.end method

.method public deleteTable(Lcom/sprint/dsa/data/DbAdapter;)V
    .registers 2
    .parameter "dbHelper"

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/sprint/dsa/data/DbAdapter;->deleteTableAlert()V

    .line 154
    return-void
.end method

.method public filter(Lcom/sprint/dsa/SzSettings;)V
    .registers 6
    .parameter "settings"

    .prologue
    .line 162
    iget-object v2, p0, Lcom/sprint/dsa/data/Alerts;->mAlerts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 163
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sprint/dsa/data/Alert;>;"
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 169
    return-void

    .line 164
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/data/Alert;

    .line 165
    .local v0, alert:Lcom/sprint/dsa/data/Alert;
    iget-wide v2, v0, Lcom/sprint/dsa/data/Alert;->m_sid:J

    invoke-virtual {p1, v2, v3}, Lcom/sprint/dsa/SzSettings;->isShow(J)Z

    move-result v2

    if-nez v2, :cond_6

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6
.end method

.method public filterKeep(Ljava/lang/String;)V
    .registers 6
    .parameter "packId"

    .prologue
    .line 173
    iget-object v2, p0, Lcom/sprint/dsa/data/Alerts;->mAlerts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 174
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sprint/dsa/data/Alert;>;"
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 181
    return-void

    .line 175
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/data/Alert;

    .line 176
    .local v0, alert:Lcom/sprint/dsa/data/Alert;
    invoke-virtual {v0}, Lcom/sprint/dsa/data/Alert;->getPackId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/sprint/dsa/Util;->stringEquals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6
.end method

.method public filterRemove(Ljava/lang/String;)V
    .registers 6
    .parameter "packId"

    .prologue
    .line 185
    iget-object v2, p0, Lcom/sprint/dsa/data/Alerts;->mAlerts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 186
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sprint/dsa/data/Alert;>;"
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 193
    return-void

    .line 187
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/data/Alert;

    .line 188
    .local v0, alert:Lcom/sprint/dsa/data/Alert;
    invoke-virtual {v0}, Lcom/sprint/dsa/data/Alert;->getPackId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/sprint/dsa/Util;->stringEquals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 190
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6
.end method

.method public getAlert(I)Lcom/sprint/dsa/data/Alert;
    .registers 3
    .parameter "position"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sprint/dsa/data/Alerts;->mAlerts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/data/Alert;

    return-object v0
.end method

.method public getAllAlerts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/data/Alert;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sprint/dsa/data/Alerts;->mAlerts:Ljava/util/List;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sprint/dsa/data/Alerts;->mAlerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sprint/dsa/data/Alerts;->mVer:Ljava/lang/String;

    return-object v0
.end method

.method public insertAlert(Lcom/sprint/dsa/data/DbAdapter;Lcom/sprint/dsa/data/Alert;)V
    .registers 9
    .parameter "dbAdapter"
    .parameter "alert"

    .prologue
    .line 104
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "sid"

    iget-wide v3, p2, Lcom/sprint/dsa/data/Alert;->m_sid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    const-string v2, "campaign"

    iget-object v3, p2, Lcom/sprint/dsa/data/Alert;->m_campaign:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v2, "header"

    iget-object v3, p2, Lcom/sprint/dsa/data/Alert;->m_header:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v2, "title"

    iget-object v3, p2, Lcom/sprint/dsa/data/Alert;->m_title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v2, "desc"

    iget-object v3, p2, Lcom/sprint/dsa/data/Alert;->m_description:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v2, "expiration"

    iget-wide v3, p2, Lcom/sprint/dsa/data/Alert;->m_expiration:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    const-string v2, "action"

    iget-object v3, p2, Lcom/sprint/dsa/data/Alert;->m_action:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "uri"

    iget-object v3, p2, Lcom/sprint/dsa/data/Alert;->m_uri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "extra"

    iget-object v3, p2, Lcom/sprint/dsa/data/Alert;->m_extra:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v2, "imgurl"

    iget-object v3, p2, Lcom/sprint/dsa/data/Alert;->m_imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v2, "pack_id"

    iget-object v3, p2, Lcom/sprint/dsa/data/Alert;->m_packId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v2, p2, Lcom/sprint/dsa/data/Alert;->m_icon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_74

    .line 118
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 119
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    iget-object v2, p2, Lcom/sprint/dsa/data/Alert;->m_icon:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 120
    const-string v2, "icon"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 123
    .end local v0           #out:Ljava/io/ByteArrayOutputStream;
    :cond_74
    iget-wide v2, p2, Lcom/sprint/dsa/data/Alert;->m_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_87

    .line 124
    const-string v2, "id"

    iget-wide v3, p2, Lcom/sprint/dsa/data/Alert;->m_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    :cond_87
    invoke-virtual {p1, v1}, Lcom/sprint/dsa/data/DbAdapter;->insertAlert(Landroid/content/ContentValues;)J

    move-result-wide v2

    iput-wide v2, p2, Lcom/sprint/dsa/data/Alert;->m_id:J

    .line 135
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sprint/dsa/data/Alerts;->mAlerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/sprint/dsa/data/Alert;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sprint/dsa/data/Alerts;->mAlerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2
    .parameter "version"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sprint/dsa/data/Alerts;->mVer:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public updateAlertVersion(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V
    .registers 5
    .parameter "dbAdapter"
    .parameter "version"

    .prologue
    .line 139
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 140
    .local v0, newVersion:Landroid/content/ContentValues;
    const-string v1, "alert_ver"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1, v0}, Lcom/sprint/dsa/data/DbAdapter;->updateVersions(Landroid/content/ContentValues;)V

    .line 142
    return-void
.end method
