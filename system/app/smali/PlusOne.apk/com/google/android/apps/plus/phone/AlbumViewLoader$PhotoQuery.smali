.class public interface abstract Lcom/google/android/apps/plus/phone/AlbumViewLoader$PhotoQuery;
.super Ljava/lang/Object;
.source "AlbumViewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/AlbumViewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhotoQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 20
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "action_state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "activities"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "comment_count"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "plusone_by_me"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "plusone_count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "circle_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "owner_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fingerprint"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "url"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "pending_status"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "video_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/phone/AlbumViewLoader$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
