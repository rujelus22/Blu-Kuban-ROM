.class public interface abstract Lcom/google/android/apps/plus/content/EsNotificationData$NotificationQuery;
.super Ljava/lang/Object;
.source "EsNotificationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/content/EsNotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 72
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "notif_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "message"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "circle_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pd_gaia_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pd_album_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pd_photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "activity_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ed_event_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ed_creator_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "notification_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/content/EsNotificationData$NotificationQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
