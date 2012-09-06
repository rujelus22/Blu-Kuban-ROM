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

    .line 687
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "TAG_ID"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAG_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 688
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "TAG_IDS"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAG_IDS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 689
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_URL"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 690
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_URLS"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_URLS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 691
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_OWNER_OGID"

    invoke-direct {v0, v1, v8, v8, v7}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_OWNER_OGID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 692
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_OWNER_NAME"

    invoke-direct {v0, v1, v9, v9, v8}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_OWNER_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 693
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "TAGGEE_OGID"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAGGEE_OGID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 694
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "TAGGEE_NAME"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAGGEE_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 695
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_PAGE_URL"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_PAGE_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 696
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_PAGE_URLS"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_PAGE_URLS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 697
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_ID"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 698
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_IDS"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0x18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_IDS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 699
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "TAG_APPROVED"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAG_APPROVED:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 700
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "TAGGER_OGID"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAGGER_OGID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 701
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "TAGGER_NAME"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAGGER_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 702
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "ALBUM_ID"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->ALBUM_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 703
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "STREAM_ID"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->STREAM_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 704
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "ALBUM_NAME"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->ALBUM_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 705
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_WIDTH"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_WIDTH:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 706
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_WIDTHS"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const/16 v4, 0x19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_WIDTHS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 707
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_HEIGHT"

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_HEIGHT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 708
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "PHOTO_HEIGHTS"

    const/16 v2, 0x15

    const/16 v3, 0x15

    const/16 v4, 0x1a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_HEIGHTS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 709
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "ALBUM_PAGE_URL"

    const/16 v2, 0x16

    const/16 v3, 0x16

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->ALBUM_PAGE_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 710
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "IS_VIDEO"

    const/16 v2, 0x17

    const/16 v3, 0x17

    const/16 v4, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->IS_VIDEO:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 711
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "IS_VIDEOS"

    const/16 v2, 0x18

    const/16 v3, 0x18

    const/16 v4, 0x1b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->IS_VIDEOS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 712
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "ALBUM_LABELS"

    const/16 v2, 0x19

    const/16 v3, 0x19

    const/16 v4, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->ALBUM_LABELS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 713
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "ALBUM_ACL_EXPANDED"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const/16 v4, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->ALBUM_ACL_EXPANDED:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 714
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    const-string v1, "NUM_PHOTOS"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    const/16 v4, 0x1c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->NUM_PHOTOS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    .line 685
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

    .line 788
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
    .line 797
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 798
    iput p4, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->value:I

    .line 799
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;
    .registers 2
    .parameter "value"

    .prologue
    .line 750
    packed-switch p0, :pswitch_data_5a

    .line 779
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 751
    :pswitch_5
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAG_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 752
    :pswitch_8
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAG_IDS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 753
    :pswitch_b
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 754
    :pswitch_e
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_URLS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 755
    :pswitch_11
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_OWNER_OGID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 756
    :pswitch_14
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_OWNER_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 757
    :pswitch_17
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAGGEE_OGID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 758
    :pswitch_1a
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAGGEE_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 759
    :pswitch_1d
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_PAGE_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 760
    :pswitch_20
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_PAGE_URLS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 761
    :pswitch_23
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 762
    :pswitch_26
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_IDS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 763
    :pswitch_29
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAG_APPROVED:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 764
    :pswitch_2c
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAGGER_OGID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 765
    :pswitch_2f
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->TAGGER_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 766
    :pswitch_32
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->ALBUM_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 767
    :pswitch_35
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->STREAM_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 768
    :pswitch_38
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->ALBUM_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 769
    :pswitch_3b
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_WIDTH:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 770
    :pswitch_3e
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_WIDTHS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 771
    :pswitch_41
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_HEIGHT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 772
    :pswitch_44
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->PHOTO_HEIGHTS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 773
    :pswitch_47
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->ALBUM_PAGE_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 774
    :pswitch_4a
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->IS_VIDEO:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 775
    :pswitch_4d
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->IS_VIDEOS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 776
    :pswitch_50
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->ALBUM_LABELS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 777
    :pswitch_53
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->ALBUM_ACL_EXPANDED:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 778
    :pswitch_56
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->NUM_PHOTOS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    goto :goto_4

    .line 750
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_b
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_23
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_38
        :pswitch_3b
        :pswitch_41
        :pswitch_47
        :pswitch_4a
        :pswitch_50
        :pswitch_53
        :pswitch_8
        :pswitch_e
        :pswitch_20
        :pswitch_26
        :pswitch_3e
        :pswitch_44
        :pswitch_4d
        :pswitch_56
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;
    .registers 2
    .parameter "name"

    .prologue
    .line 685
    const-class v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;
    .registers 1

    .prologue
    .line 685
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
    .line 747
    iget v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;->value:I

    return v0
.end method
