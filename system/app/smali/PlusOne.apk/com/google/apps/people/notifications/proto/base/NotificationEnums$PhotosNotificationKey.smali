.class public final enum Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;
.super Ljava/lang/Enum;
.source "NotificationEnums.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/notifications/proto/base/NotificationEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhotosNotificationKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum ALBUM_ACL_EXPANDED:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum ALBUM_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum ALBUM_LABELS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum ALBUM_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum ALBUM_PAGE_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum IS_VIDEO:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum IS_VIDEOS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum NUM_PHOTOS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum PHOTO_HEIGHT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum PHOTO_HEIGHTS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum PHOTO_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum PHOTO_IDS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum PHOTO_OWNER_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum PHOTO_OWNER_OGID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum PHOTO_PAGE_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum PHOTO_PAGE_URLS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum PHOTO_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum PHOTO_URLS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum PHOTO_WIDTH:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum PHOTO_WIDTHS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum STREAM_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum TAGGEE_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum TAGGEE_OGID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum TAGGER_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum TAGGER_OGID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum TAG_APPROVED:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum TAG_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field public static final enum TAG_IDS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 612
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "TAG_ID"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAG_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 613
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "TAG_IDS"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAG_IDS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 614
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_URL"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 615
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_URLS"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_URLS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 616
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_OWNER_OGID"

    invoke-direct {v0, v1, v8, v8, v7}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_OWNER_OGID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 617
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_OWNER_NAME"

    invoke-direct {v0, v1, v9, v9, v8}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_OWNER_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 618
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "TAGGEE_OGID"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAGGEE_OGID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 619
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "TAGGEE_NAME"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAGGEE_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 620
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_PAGE_URL"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_PAGE_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 621
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_PAGE_URLS"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_PAGE_URLS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 622
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_ID"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 623
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_IDS"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0x18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_IDS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 624
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "TAG_APPROVED"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAG_APPROVED:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 625
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "TAGGER_OGID"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAGGER_OGID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 626
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "TAGGER_NAME"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAGGER_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 627
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "ALBUM_ID"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->ALBUM_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 628
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "STREAM_ID"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->STREAM_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 629
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "ALBUM_NAME"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->ALBUM_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 630
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_WIDTH"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_WIDTH:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 631
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_WIDTHS"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const/16 v4, 0x19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_WIDTHS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 632
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_HEIGHT"

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_HEIGHT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 633
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_HEIGHTS"

    const/16 v2, 0x15

    const/16 v3, 0x15

    const/16 v4, 0x1a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_HEIGHTS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 634
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "ALBUM_PAGE_URL"

    const/16 v2, 0x16

    const/16 v3, 0x16

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->ALBUM_PAGE_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 635
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "IS_VIDEO"

    const/16 v2, 0x17

    const/16 v3, 0x17

    const/16 v4, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->IS_VIDEO:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 636
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "IS_VIDEOS"

    const/16 v2, 0x18

    const/16 v3, 0x18

    const/16 v4, 0x1b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->IS_VIDEOS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 637
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "ALBUM_LABELS"

    const/16 v2, 0x19

    const/16 v3, 0x19

    const/16 v4, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->ALBUM_LABELS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 638
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "ALBUM_ACL_EXPANDED"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const/16 v4, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->ALBUM_ACL_EXPANDED:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 639
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "NUM_PHOTOS"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    const/16 v4, 0x1c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->NUM_PHOTOS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 610
    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAG_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAG_IDS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_URLS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_OWNER_OGID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_OWNER_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAGGEE_OGID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAGGEE_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_PAGE_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_PAGE_URLS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_IDS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAG_APPROVED:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAGGER_OGID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAGGER_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->ALBUM_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->STREAM_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->ALBUM_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_WIDTH:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_WIDTHS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_HEIGHT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_HEIGHTS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->ALBUM_PAGE_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->IS_VIDEO:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->IS_VIDEOS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->ALBUM_LABELS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->ALBUM_ACL_EXPANDED:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->NUM_PHOTOS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 713
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey$1;

    invoke-direct {v0}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey$1;-><init>()V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 722
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 723
    iput p4, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->value:I

    .line 724
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;
    .registers 2
    .parameter

    .prologue
    .line 610
    const-class v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;
    .registers 1

    .prologue
    .line 610
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    invoke-virtual {v0}, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 672
    iget v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->value:I

    return v0
.end method
