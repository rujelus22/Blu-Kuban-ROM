.class public final Lcom/google/android/apps/unveil/env/UnveilContentProvider$Queries;
.super Ljava/lang/Object;
.source "UnveilContentProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/UnveilContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Queries"
.end annotation


# static fields
.field public static final BARCODE:Ljava/lang/String; = "barcode"

.field public static final CAMERA_CONFIG:Ljava/lang/String; = "camera_config"

.field public static final CAN_LOG_IMAGE:Ljava/lang/String; = "can_log_image"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.google.unveil"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.google.unveil"

.field public static final CREATED_DATE:Ljava/lang/String; = "created"

.field public static final CROP_CONTEXT_SIZE:Ljava/lang/String; = "crop_context_size"

.field public static final CROP_RECT:Ljava/lang/String; = "crop_rect"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "created DESC"

.field public static final DOCID:Ljava/lang/String; = "docid"

.field public static final FLASH_MODE:Ljava/lang/String; = "flash_mode"

.field public static final FOCUS_STATE:Ljava/lang/String; = "focus_state"

.field public static final FULL_PROJECTION:[Ljava/lang/String; = null

.field public static final IMAGE_DATA:Ljava/lang/String; = "image_data"

.field public static final IMAGE_ROTATED:Ljava/lang/String; = "image_rotated"

.field public static final IMAGE_SIZE:Ljava/lang/String; = "image_size"

.field public static final IMAGE_URL:Ljava/lang/String; = "image_url"

.field public static final JPEG_QUALITY:Ljava/lang/String; = "jpeg_quality"

.field public static final MS_SINCE_EPOCH:Ljava/lang/String; = "ms_since_epoch"

.field public static final ORIENTATION_RELATIVE_TO_CAMERA:Ljava/lang/String; = "orientation_relative_to_camera"

.field public static final ORIENTATION_RELATIVE_TO_DEVICE:Ljava/lang/String; = "orientation_relative_to_device"

.field public static final PREVIEW_SIZE:Ljava/lang/String; = "preview_size"

.field public static final QUERY_PARAMS:Ljava/lang/String; = "query_params"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final QUERY_TYPE:Ljava/lang/String; = "query_type"

.field public static final REPLAY_ID:Ljava/lang/String; = "replay_id"

.field public static final RESTRICTS:Ljava/lang/String; = "restricts"

.field public static final SEQUENCE_NUMBER:Ljava/lang/String; = "sequence_number"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final SOURCE_LANGUAGE:Ljava/lang/String; = "source_language"

.field public static final TABLE_NAME:Ljava/lang/String; = "queries"

.field public static final TEXT:Ljava/lang/String; = "text"

.field public static final THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field public static final TRANSMITTED_RECT:Ljava/lang/String; = "transmitted_rect"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 498
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "query_params"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "barcode"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "camera_config"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "crop_rect"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "crop_context_size"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "docid"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "flash_mode"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "focus_state"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "image_data"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "image_rotated"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "image_size"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "image_url"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "jpeg_quality"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ms_since_epoch"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "orientation_relative_to_camera"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "orientation_relative_to_device"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "query_type"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "replay_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "restricts"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sequence_number"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "source"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "preview_size"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "transmitted_rect"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "source_language"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "can_log_image"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/unveil/env/UnveilContentProvider$Queries;->FULL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3
    .parameter "context"

    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/unveil/R$string;->unveil_content_provider_authority:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "queries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
