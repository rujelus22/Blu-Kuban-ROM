.class public Lcom/sec/android/socialhub/feedslist/extend/TwitterSavedSearch$SavedSearchWrapper;
.super Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
.source "TwitterSavedSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/feedslist/extend/TwitterSavedSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedSearchWrapper"
.end annotation


# static fields
.field public static PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 79
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_provider"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "searching_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "create_time"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "creator_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "creator_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "creator_profile_photo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/feedslist/extend/TwitterSavedSearch$SavedSearchWrapper;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Adapter;)V
    .registers 3
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;-><init>(Landroid/content/Context;Landroid/widget/Adapter;)V

    .line 104
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miId:I

    .line 110
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    .line 111
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActivityId:Ljava/lang/String;

    .line 112
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrContents:Ljava/lang/String;

    .line 113
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mlTime:J

    .line 114
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    .line 115
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorName:Ljava/lang/String;

    .line 116
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorPhotoUrl:Ljava/lang/String;

    .line 117
    return-void
.end method
