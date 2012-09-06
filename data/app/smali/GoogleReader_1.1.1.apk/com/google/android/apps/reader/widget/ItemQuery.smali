.class interface abstract Lcom/google/android/apps/reader/widget/ItemQuery;
.super Ljava/lang/Object;
.source "ItemQuery.java"


# static fields
.field public static final COLUMN_ACCOUNT_NAME:I = 0x14

.field public static final COLUMN_ACCOUNT_TYPE:I = 0x15

.field public static final COLUMN_ALTERNATE_HREF:I = 0xc

.field public static final COLUMN_ANNOTATION:I = 0x19

.field public static final COLUMN_AUTHOR:I = 0x11

.field public static final COLUMN_BROADCASTER:I = 0x10

.field public static final COLUMN_DISPLAY_NAME:I = 0xe

.field public static final COLUMN_IS_ME:I = 0xf

.field public static final COLUMN_ITEM_ID:I = 0x1

.field public static final COLUMN_LIKED:I = 0x7

.field public static final COLUMN_LIKE_COUNT:I = 0x13

.field public static final COLUMN_LOCKED:I = 0x6

.field public static final COLUMN_PHOTO_URI:I = 0xd

.field public static final COLUMN_POSITION:I = 0x18

.field public static final COLUMN_READ:I = 0x4

.field public static final COLUMN_SHARED:I = 0x8

.field public static final COLUMN_SOURCE_ALTERNATE_HREF:I = 0x1a

.field public static final COLUMN_SOURCE_LINK:I = 0x9

.field public static final COLUMN_SOURCE_POST:I = 0xa

.field public static final COLUMN_SOURCE_STREAM_ID:I = 0x2

.field public static final COLUMN_SOURCE_TITLE:I = 0x17

.field public static final COLUMN_SOURCE_TITLE_PLAINTEXT:I = 0xb

.field public static final COLUMN_STARRED:I = 0x5

.field public static final COLUMN_TITLE:I = 0x16

.field public static final COLUMN_TITLE_PLAINTEXT:I = 0x3

.field public static final COLUMN_UPDATED:I = 0x12

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 26
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "source_stream_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title_plaintext"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "liked"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "shared"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "source_link"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "source_post"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "source_title_plaintext"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "alternate_href"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "is_me"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "broadcaster"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "author"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "updated"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "like_count"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "source_title"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "position"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "annotation"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "source_alternate_href"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/widget/ItemQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
