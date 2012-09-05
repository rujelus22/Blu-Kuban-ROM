.class public Lcom/sec/android/app/videoplayer/util/ListType;
.super Ljava/lang/Object;
.source "ListType.java"


# static fields
.field public static final KEY_LISTTYPE:Ljava/lang/String; = "listtype"

.field public static final VIDEOLIST_DEFAULT:I = 0x3

.field public static final VIDEOLIST_FAVORITE:I = 0x1

.field public static final VIDEOLIST_FOLDER:I = 0x4

.field public static final VIDEOLIST_FOLDER_CLOSED:I = 0x6

.field public static final VIDEOLIST_FOLDER_LIST:I = 0x9

.field public static final VIDEOLIST_REMOVE:I = 0x8

.field public static final VIDEOLIST_RESTORE:I = 0x2

.field public static final VIDEOLIST_SEARCH:I = 0x3

.field public static final VIDEOLIST_SEARCH_RESULT:I = 0x7

.field public static final VIDEOLIST_SELECT:I = 0x5

.field public static final VIDEOLIST_VIEW:I = 0x0

.field public static final VIDEO_DB_COLUMN_SUBTITLE_LANGUAGE:Ljava/lang/String; = "subtitle_lan"

.field public static final VIDEO_DB_COLUMN_SYNC:Ljava/lang/String; = "sync_time"

.field public static final VIDEO_PREVIEW_SORT_DATE_ASC:I = 0xa

.field public static final VIDEO_PREVIEW_SORT_DATE_DESC:I = 0xe

.field public static final VIDEO_PREVIEW_SORT_NAME_ASC:I = 0xc

.field public static final VIDEO_PREVIEW_SORT_NAME_DESC:I = 0x10

.field public static final VIDEO_PREVIEW_SORT_SIZE_ASC:I = 0xd

.field public static final VIDEO_PREVIEW_SORT_SIZE_DESC:I = 0x11

.field public static final VIDEO_PREVIEW_SORT_TYPE_ASC:I = 0xb

.field public static final VIDEO_PREVIEW_SORT_TYPE_DESC:I = 0xf

.field public static final VIDEO_SORT_DATE:I = 0x7

.field public static final VIDEO_SORT_NAME:I = 0x4

.field public static final VIDEO_SORT_SIZE:I = 0x5

.field public static final VIDEO_SORT_TYPE:I = 0x6

.field private static cols:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 42
    const/16 v0, 0x9

    new-array v0, v0, [[Ljava/lang/String;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "mini_thumb_magic"

    aput-object v2, v1, v6

    const-string v2, "title"

    aput-object v2, v1, v7

    const-string v2, "duration"

    aput-object v2, v1, v8

    const-string v2, "_data"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "mime_type"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "IsFavorite"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "ResumePosition"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "PlayedWhen"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "mini_thumb_magic"

    aput-object v2, v1, v6

    const-string v2, "title"

    aput-object v2, v1, v7

    const-string v2, "duration"

    aput-object v2, v1, v8

    const-string v2, "_data"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "mime_type"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "IsFavorite"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "ResumePosition"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "PlayedWhen"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "mini_thumb_magic"

    aput-object v2, v1, v6

    const-string v2, "title"

    aput-object v2, v1, v7

    const-string v2, "duration"

    aput-object v2, v1, v8

    const-string v2, "_data"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "mime_type"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\'0\' AS ResumePosition"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\'0\' AS PlayedWhen"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "mini_thumb_magic"

    aput-object v2, v1, v6

    const-string v2, "title"

    aput-object v2, v1, v7

    const-string v2, "duration"

    aput-object v2, v1, v8

    const-string v2, "_data"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "mime_type"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "IsFavorite"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "ResumePosition"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "PlayedWhen"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "mini_thumb_magic"

    aput-object v2, v1, v6

    const-string v2, "title"

    aput-object v2, v1, v7

    const-string v2, "duration"

    aput-object v2, v1, v8

    const-string v2, "_data"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "mime_type"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "IsFavorite"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "ResumePosition"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "PlayedWhen"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "mini_thumb_magic"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "duration"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "mime_type"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "IsFavorite"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "ResumePosition"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "PlayedWhen"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "mini_thumb_magic"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "duration"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "mime_type"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "IsFavorite"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "ResumePosition"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "PlayedWhen"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "mini_thumb_magic"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "duration"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "mime_type"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "mini_thumb_magic"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "duration"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "mime_type"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "IsFavorite"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "ResumePosition"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "PlayedWhen"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/videoplayer/util/ListType;->cols:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColumns(I)[Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 152
    sget-object v0, Lcom/sec/android/app/videoplayer/util/ListType;->cols:[[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getDefaultVideoColumns()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 156
    const/16 v1, 0x8

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mini_thumb_magic"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    .line 167
    .local v0, returnValue:[Ljava/lang/String;
    return-object v0
.end method

.method public static getFolderColumns()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 171
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "distinct bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1 as _id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    .line 178
    .local v0, returnValue:[Ljava/lang/String;
    return-object v0
.end method
