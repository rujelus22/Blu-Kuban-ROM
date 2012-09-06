.class public interface abstract Lcom/google/android/apps/plus/phone/StreamAdapter$StreamQuery;
.super Ljava/lang/Object;
.source "StreamAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/StreamAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StreamQuery"
.end annotation


# static fields
.field public static final PROJECTION_ACTIVITY:[Ljava/lang/String;

.field public static final PROJECTION_STREAM:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "activity_id"

    aput-object v1, v0, v4

    const-string v1, "acl_display"

    aput-object v1, v0, v5

    const-string v1, "author_id"

    aput-object v1, v0, v6

    const-string v1, "name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "plus_one_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "explanations"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "total_comment_count"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "media"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "loc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "created"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "source"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "source_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "public"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "can_comment"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "can_reshare"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "has_read"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "a2a_hangout_data"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "has_muted"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "event_data"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "photo_collection"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "popular_post"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "content_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "last_activity"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "token"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/phone/StreamAdapter$StreamQuery;->PROJECTION_STREAM:[Ljava/lang/String;

    .line 119
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "activity_id"

    aput-object v1, v0, v4

    const-string v1, "acl_display"

    aput-object v1, v0, v5

    const-string v1, "author_id"

    aput-object v1, v0, v6

    const-string v1, "name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "plus_one_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "explanations"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "total_comment_count"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "media"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "loc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "created"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "source"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "source_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "public"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "can_comment"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "can_reshare"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "has_read"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "a2a_hangout_data"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "has_muted"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "event_data"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "photo_collection"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "popular_post"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "content_flags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/phone/StreamAdapter$StreamQuery;->PROJECTION_ACTIVITY:[Ljava/lang/String;

    return-void
.end method
