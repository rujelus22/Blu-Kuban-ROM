.class public Lcom/sec/android/socialhub/feedslist/GroupWrapper;
.super Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
.source "GroupWrapper.java"


# static fields
.field public static final GroupProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 10
    const/16 v0, 0x25

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "group_activity._id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_provider"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "activity_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "attachment_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "media_count"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "time"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "commentable"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "comment_count"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "actor_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "actor_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "actor_photo_url"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "icon_url"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "forwardable"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "forwarder_name"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "attach_name"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "attach_caption"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "attach_desc"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "prop_name1"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "prop_text1"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "attachm_thumb_url"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "attachm_m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "attachm_m_href"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "attachm_wapphotoid"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "attachm_m_src"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "attach_albumid"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "attachm_photoid"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "attachm_attachid"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "recommendable"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "recommend_count"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "comment_type"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "comment_target_id"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "is_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "is_friend"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "target_display_name"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "attachm_albumid"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "comment_sub_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/feedslist/GroupWrapper;->GroupProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Adapter;)V
    .registers 3
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;-><init>(Landroid/content/Context;Landroid/widget/Adapter;)V

    .line 55
    return-void
.end method
