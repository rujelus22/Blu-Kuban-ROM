.class public Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter$StatusWrapper;
.super Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
.source "AbsTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusWrapper"
.end annotation


# static fields
.field public static PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 176
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_provider"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "status_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "status_createtime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "UTC_offset"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "forwardable"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_favorite"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "content"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "creator_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "creator_fullname"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "creator_isfollowing"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "creator_photo_url"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "creator_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "forwarder_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "forwarder_name"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "forwarder_photo_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter$StatusWrapper;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Adapter;)V
    .registers 3
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 215
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;-><init>(Landroid/content/Context;Landroid/widget/Adapter;)V

    .line 216
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miId:I

    .line 222
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    .line 223
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActivityId:Ljava/lang/String;

    .line 224
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrContents:Ljava/lang/String;

    .line 225
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mlTime:J

    .line 227
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    .line 228
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorName:Ljava/lang/String;

    .line 229
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorPhotoUrl:Ljava/lang/String;

    .line 231
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrForwardable:Ljava/lang/String;

    .line 232
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrForwarderName:Ljava/lang/String;

    .line 233
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrIsFavorite:Ljava/lang/String;

    .line 234
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrIsFriend:Ljava/lang/String;

    .line 235
    return-void
.end method
