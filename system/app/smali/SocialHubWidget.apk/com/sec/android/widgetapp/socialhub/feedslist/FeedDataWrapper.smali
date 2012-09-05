.class public Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;
.super Ljava/lang/Object;
.source "FeedDataWrapper.java"


# static fields
.field public static ATTACHMEDIAPROJECTION:[Ljava/lang/String;

.field public static FeedViewProjection:[Ljava/lang/String;

.field public static INDEX_COLUMN_ACTIVITY_ID:I

.field public static INDEX_COLUMN_ACTOR_ID:I

.field public static INDEX_COLUMN_ACTOR_NAME:I

.field public static INDEX_COLUMN_ACTOR_PHOTO_URL:I

.field public static INDEX_COLUMN_ATTACHMEDIA_ALBUMID:I

.field public static INDEX_COLUMN_ATTACHMEDIA_ATTACHID:I

.field public static INDEX_COLUMN_ATTACHMEDIA_M_HREF:I

.field public static INDEX_COLUMN_ATTACHMEDIA_M_SRC:I

.field public static INDEX_COLUMN_ATTACHMEDIA_M_TYPE:I

.field public static INDEX_COLUMN_ATTACHMEDIA_PHOTOID:I

.field public static INDEX_COLUMN_ATTACHMEDIA_THUMB_URL:I

.field public static INDEX_COLUMN_ATTACHMENT_TYPE:I

.field public static INDEX_COLUMN_ATTACH_ALBUMID:I

.field public static INDEX_COLUMN_ATTACH_CAPTION:I

.field public static INDEX_COLUMN_ATTACH_DESC:I

.field public static INDEX_COLUMN_ATTACH_NAME:I

.field public static INDEX_COLUMN_COMMENTABLE:I

.field public static INDEX_COLUMN_COMMENT_COUNT:I

.field public static INDEX_COLUMN_COMMENT_SUB_ID:I

.field public static INDEX_COLUMN_COMMENT_TARGET_ID:I

.field public static INDEX_COLUMN_COMMENT_TYPE:I

.field public static INDEX_COLUMN_CONTENT:I

.field public static INDEX_COLUMN_FORWARDABLE:I

.field public static INDEX_COLUMN_FORWARDER_NAME:I

.field public static INDEX_COLUMN_ICON_URL:I

.field public static INDEX_COLUMN_ID:I

.field public static INDEX_COLUMN_MEDIA_COUNT:I

.field public static INDEX_COLUMN_PROP_NAME1:I

.field public static INDEX_COLUMN_PROP_TEXT1:I

.field public static INDEX_COLUMN_RECOMMANDABLE:I

.field public static INDEX_COLUMN_RECOMMAND_COUNT:I

.field public static INDEX_COLUMN_SP:I

.field public static INDEX_COLUMN_TIME:I

.field public static INDEX_COLUMN_aTTACHMEDIA_WAPPHOTOID:I

.field public static INDEX_IS_FAVORITE:I

.field public static INDEX_IS_FRIEND:I

.field public static INDEX_TARGET_DISPLAY_NAME:I


# instance fields
.field public final INDEX_ATTACHMEDIA_COLUMN_ALBUM_ID:I

.field public final INDEX_ATTACHMEDIA_COLUMN_HREF:I

.field public final INDEX_ATTACHMEDIA_COLUMN_SRC:I

.field public final INDEX_ATTACHMEDIA_COLUMN_THUMBNAIL_URL:I

.field public final INDEX_ATTACHMEDIA_COLUMN_TYPE:I

.field public final INDEX_ATTACHMEDIA_COLUMN_WAPPHOTO_ID:I

.field private mContext:Landroid/content/Context;

.field public mMediaInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mStrMediatype:Ljava/lang/String;

.field public miCommentCount:I

.field public miId:I

.field public miMediaCount:I

.field public miRecommendCount:I

.field public miSpType:I

.field public mlTime:J

.field public mstrActivityId:Ljava/lang/String;

.field public mstrActivityTypeIconUrl:Ljava/lang/String;

.field public mstrActorId:Ljava/lang/String;

.field public mstrActorName:Ljava/lang/String;

.field public mstrActorPhotoUrl:Ljava/lang/String;

.field public mstrAttachmentCaption:Ljava/lang/String;

.field public mstrAttachmentDescription:Ljava/lang/String;

.field public mstrAttachmentId:Ljava/lang/String;

.field public mstrAttachmentType:Ljava/lang/String;

.field public mstrAttachment_m_href:Ljava/lang/String;

.field public mstrCommentSubId:Ljava/lang/String;

.field public mstrCommentTargerId:Ljava/lang/String;

.field public mstrCommentType:Ljava/lang/String;

.field public mstrCommentable:Ljava/lang/String;

.field public mstrContents:Ljava/lang/String;

.field public mstrForwardable:Ljava/lang/String;

.field public mstrForwarderName:Ljava/lang/String;

.field public mstrIconUrl:Ljava/lang/String;

.field public mstrIsFavorite:Ljava/lang/String;

.field public mstrIsFriend:Ljava/lang/String;

.field public mstrMoodIconUrl:Ljava/lang/String;

.field public mstrMoodName:Ljava/lang/String;

.field public mstrMoodText:Ljava/lang/String;

.field public mstrRecommendable:Ljava/lang/String;

.field public mstrTargetDisplayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    const/16 v0, 0x25

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "activity._id"

    aput-object v1, v0, v3

    const-string v1, "service_provider"

    aput-object v1, v0, v4

    const-string v1, "activity_id"

    aput-object v1, v0, v5

    const-string v1, "attachment_type"

    aput-object v1, v0, v6

    const-string v1, "media_count"

    aput-object v1, v0, v7

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

    sput-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->FeedViewProjection:[Ljava/lang/String;

    .line 118
    sput v3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ID:I

    .line 119
    sput v4, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_SP:I

    .line 120
    sput v5, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ACTIVITY_ID:I

    .line 121
    sput v6, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACHMENT_TYPE:I

    .line 122
    sput v7, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_MEDIA_COUNT:I

    .line 123
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_CONTENT:I

    .line 124
    const/4 v0, 0x6

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_TIME:I

    .line 125
    const/4 v0, 0x7

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_COMMENTABLE:I

    .line 126
    const/16 v0, 0x8

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_COMMENT_COUNT:I

    .line 127
    const/16 v0, 0x9

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ACTOR_ID:I

    .line 128
    const/16 v0, 0xa

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ACTOR_NAME:I

    .line 129
    const/16 v0, 0xb

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ACTOR_PHOTO_URL:I

    .line 130
    const/16 v0, 0xc

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ICON_URL:I

    .line 131
    const/16 v0, 0xd

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_FORWARDABLE:I

    .line 132
    const/16 v0, 0xe

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_FORWARDER_NAME:I

    .line 133
    const/16 v0, 0xf

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACH_NAME:I

    .line 134
    const/16 v0, 0x10

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACH_CAPTION:I

    .line 135
    const/16 v0, 0x11

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACH_DESC:I

    .line 136
    const/16 v0, 0x12

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_PROP_NAME1:I

    .line 137
    const/16 v0, 0x13

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_PROP_TEXT1:I

    .line 138
    const/16 v0, 0x14

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACHMEDIA_THUMB_URL:I

    .line 139
    const/16 v0, 0x15

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACHMEDIA_M_TYPE:I

    .line 140
    const/16 v0, 0x16

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACHMEDIA_M_HREF:I

    .line 141
    const/16 v0, 0x17

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_aTTACHMEDIA_WAPPHOTOID:I

    .line 142
    const/16 v0, 0x18

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACHMEDIA_M_SRC:I

    .line 143
    const/16 v0, 0x19

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACH_ALBUMID:I

    .line 144
    const/16 v0, 0x1a

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACHMEDIA_PHOTOID:I

    .line 145
    const/16 v0, 0x1b

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACHMEDIA_ATTACHID:I

    .line 146
    const/16 v0, 0x1c

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_RECOMMANDABLE:I

    .line 147
    const/16 v0, 0x1d

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_RECOMMAND_COUNT:I

    .line 148
    const/16 v0, 0x1e

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_COMMENT_TYPE:I

    .line 149
    const/16 v0, 0x1f

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_COMMENT_TARGET_ID:I

    .line 150
    const/16 v0, 0x20

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_IS_FAVORITE:I

    .line 151
    const/16 v0, 0x21

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_IS_FRIEND:I

    .line 152
    const/16 v0, 0x22

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_TARGET_DISPLAY_NAME:I

    .line 153
    const/16 v0, 0x23

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACHMEDIA_ALBUMID:I

    .line 154
    const/16 v0, 0x24

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_COMMENT_SUB_ID:I

    .line 156
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "media_href"

    aput-object v1, v0, v3

    const-string v1, "media_type"

    aput-object v1, v0, v4

    const-string v1, "media_src"

    aput-object v1, v0, v5

    const-string v1, "thumbnail_url"

    aput-object v1, v0, v6

    const-string v1, "album_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "wapphoto_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->ATTACHMEDIAPROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mMediaInfo:Ljava/util/ArrayList;

    .line 76
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mContext:Landroid/content/Context;

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_ATTACHMEDIA_COLUMN_HREF:I

    .line 167
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_ATTACHMEDIA_COLUMN_TYPE:I

    .line 168
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_ATTACHMEDIA_COLUMN_SRC:I

    .line 169
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_ATTACHMEDIA_COLUMN_THUMBNAIL_URL:I

    .line 170
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_ATTACHMEDIA_COLUMN_ALBUM_ID:I

    .line 171
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_ATTACHMEDIA_COLUMN_WAPPHOTO_ID:I

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mContext:Landroid/content/Context;

    .line 177
    invoke-virtual {p0, p2}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->changeCursor(Landroid/database/Cursor;)V

    .line 178
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 182
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miId:I

    .line 183
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_SP:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miSpType:I

    .line 184
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ACTIVITY_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActivityId:Ljava/lang/String;

    .line 185
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACHMENT_TYPE:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentType:Ljava/lang/String;

    .line 186
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_MEDIA_COUNT:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miMediaCount:I

    .line 187
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_CONTENT:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrContents:Ljava/lang/String;

    .line 188
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_TIME:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mlTime:J

    .line 190
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_COMMENT_COUNT:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miCommentCount:I

    .line 191
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_RECOMMAND_COUNT:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miRecommendCount:I

    .line 192
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ACTOR_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorId:Ljava/lang/String;

    .line 193
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ACTOR_NAME:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorName:Ljava/lang/String;

    .line 194
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ACTOR_PHOTO_URL:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorPhotoUrl:Ljava/lang/String;

    .line 195
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ICON_URL:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActivityTypeIconUrl:Ljava/lang/String;

    .line 197
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_FORWARDABLE:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrForwardable:Ljava/lang/String;

    .line 198
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_FORWARDER_NAME:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrForwarderName:Ljava/lang/String;

    .line 199
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_RECOMMANDABLE:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrRecommendable:Ljava/lang/String;

    .line 200
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_COMMENTABLE:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrCommentable:Ljava/lang/String;

    .line 201
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_COMMENT_TYPE:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrCommentType:Ljava/lang/String;

    .line 202
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_IS_FAVORITE:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrIsFavorite:Ljava/lang/String;

    .line 203
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_IS_FRIEND:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrIsFriend:Ljava/lang/String;

    .line 205
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_TARGET_DISPLAY_NAME:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrTargetDisplayName:Ljava/lang/String;

    .line 207
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_PROP_NAME1:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrMoodName:Ljava/lang/String;

    .line 208
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_PROP_TEXT1:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrMoodText:Ljava/lang/String;

    .line 209
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACHMEDIA_THUMB_URL:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrMoodIconUrl:Ljava/lang/String;

    .line 211
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_COMMENT_TARGET_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrCommentTargerId:Ljava/lang/String;

    .line 213
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_COMMENT_SUB_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrCommentSubId:Ljava/lang/String;

    .line 221
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACH_CAPTION:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    .line 222
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACH_DESC:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    .line 224
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACHMEDIA_M_HREF:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachment_m_href:Ljava/lang/String;

    .line 230
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACHMEDIA_M_TYPE:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mStrMediatype:Ljava/lang/String;

    .line 233
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ICON_URL:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrIconUrl:Ljava/lang/String;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mMediaInfo:Ljava/util/ArrayList;

    .line 237
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->getMediaInfo(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 238
    return-void
.end method

.method public getMediaInfo(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 19
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 251
    sget v1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACHMEDIA_ATTACHID:I

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentId:Ljava/lang/String;

    .line 253
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miMediaCount:I

    const/4 v5, 0x1

    if-le v1, v5, :cond_ae

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentId:Ljava/lang/String;

    if-nez v1, :cond_1f

    .line 257
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miMediaCount:I

    .line 328
    :cond_1e
    :goto_1e
    return-void

    .line 261
    :cond_1f
    sget-object v1, Lcom/sec/android/app/sns/db/SnsDB$AttachMedia;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentId:Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 263
    .local v2, attachUri:Landroid/net/Uri;
    const/4 v14, 0x0

    .line 267
    .local v14, cAttached:Landroid/database/Cursor;
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->ATTACHMEDIAPROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 269
    if-eqz v14, :cond_8e

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 273
    :cond_43
    new-instance v3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;-><init>()V

    .line 275
    .local v3, media:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    const/4 v1, 0x4

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x2

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x5

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x3

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_MEDIA_COUNT:I

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    sget v1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACHMEDIA_ALBUMID:I

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACH_NAME:I

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v3 .. v12}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->setAttachMediaIfno(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mMediaInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8b
    .catchall {:try_start_2a .. :try_end_8b} :catchall_a6
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_8b} :catch_95

    move-result v1

    if-nez v1, :cond_43

    .line 301
    .end local v3           #media:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    :cond_8e
    if-eqz v14, :cond_1e

    .line 303
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 304
    const/4 v14, 0x0

    goto :goto_1e

    .line 294
    :catch_95
    move-exception v15

    .line 296
    .local v15, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    :try_start_97
    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miMediaCount:I

    .line 297
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9e
    .catchall {:try_start_97 .. :try_end_9e} :catchall_a6

    .line 301
    if-eqz v14, :cond_1e

    .line 303
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 304
    const/4 v14, 0x0

    goto/16 :goto_1e

    .line 301
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_a6
    move-exception v1

    if-eqz v14, :cond_ad

    .line 303
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 304
    const/4 v14, 0x0

    :cond_ad
    throw v1

    .line 311
    .end local v2           #attachUri:Landroid/net/Uri;
    .end local v14           #cAttached:Landroid/database/Cursor;
    :cond_ae
    new-instance v4, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;

    invoke-direct {v4}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;-><init>()V

    .line 313
    .local v4, info:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    sget v1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACH_ALBUMID:I

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACHMEDIA_M_TYPE:I

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACHMEDIA_M_HREF:I

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACHMEDIA_M_SRC:I

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_aTTACHMEDIA_WAPPHOTOID:I

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACHMEDIA_THUMB_URL:I

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_MEDIA_COUNT:I

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    sget v1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACHMEDIA_ALBUMID:I

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->INDEX_COLUMN_ATTACH_NAME:I

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v4 .. v13}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->setAttachMediaIfno(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mMediaInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e
.end method
