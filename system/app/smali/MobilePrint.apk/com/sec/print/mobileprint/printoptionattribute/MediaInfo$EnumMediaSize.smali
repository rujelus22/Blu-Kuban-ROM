.class public final enum Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;
.super Ljava/lang/Enum;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumMediaSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_A4:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_A5:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_A6:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_B5ENV:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_C5:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_C6ENV:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_COM10:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_CUSTOM:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_DL:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_ENV_NO9:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_ENV_PERSONAL:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_EXEC:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_FOLIO:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_JISB5:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_LEGAL:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_LETTER:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_MONARCH:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_OFICIO:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_PHOTO_BOARDERLESS_3_5X5IN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_PHOTO_BOARDERLESS_4X6IN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_PHOTO_BOARDERLESS_5X7IN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

.field public static final enum MEDIA_SIZE_STATEMENT:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 19
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_LETTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_LETTER:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 21
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_LEGAL"

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_LEGAL:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 23
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_OFICIO"

    const/4 v2, 0x2

    const/16 v3, 0xbe

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_OFICIO:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 25
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_FOLIO"

    const/4 v2, 0x3

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_FOLIO:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 27
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_A4"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v8}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_A4:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 29
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_B5ENV"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_B5ENV:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 31
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_JISB5"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_JISB5:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 33
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_STATEMENT"

    invoke-direct {v0, v1, v7, v6}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_STATEMENT:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 35
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_EXEC"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v7}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_EXEC:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 37
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_A5"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v8, v2}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_A5:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 39
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_A6"

    const/16 v2, 0xa

    const/16 v3, 0x46

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_A6:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 41
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_MONARCH"

    const/16 v2, 0xb

    const/16 v3, 0x25

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_MONARCH:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 43
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_COM10"

    const/16 v2, 0xc

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_COM10:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 45
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_DL"

    const/16 v2, 0xd

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_DL:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 47
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_C5"

    const/16 v2, 0xe

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_C5:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 49
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_C6ENV"

    const/16 v2, 0xf

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_C6ENV:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 51
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_ENV_NO9"

    const/16 v2, 0x10

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_ENV_NO9:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 53
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_ENV_PERSONAL"

    const/16 v2, 0x11

    const/16 v3, 0x26

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_ENV_PERSONAL:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 55
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_PHOTO_BOARDERLESS_3_5X5IN"

    const/16 v2, 0x12

    const/16 v3, 0xfa

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_PHOTO_BOARDERLESS_3_5X5IN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 56
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_PHOTO_BOARDERLESS_4X6IN"

    const/16 v2, 0x13

    const/16 v3, 0xfc

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_PHOTO_BOARDERLESS_4X6IN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 57
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_PHOTO_BOARDERLESS_5X7IN"

    const/16 v2, 0x14

    const/16 v3, 0xfe

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_PHOTO_BOARDERLESS_5X7IN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 58
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const-string v1, "MEDIA_SIZE_CUSTOM"

    const/16 v2, 0x15

    const/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_CUSTOM:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 17
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_LETTER:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_LEGAL:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_OFICIO:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_FOLIO:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_A4:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_B5ENV:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_JISB5:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_STATEMENT:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v1, v0, v7

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_EXEC:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_A5:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v1, v0, v8

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_A6:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_MONARCH:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_COM10:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_DL:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_C5:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_C6ENV:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_ENV_NO9:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_ENV_PERSONAL:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_PHOTO_BOARDERLESS_3_5X5IN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_PHOTO_BOARDERLESS_4X6IN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_PHOTO_BOARDERLESS_5X7IN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_CUSTOM:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->$VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "val"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->mValue:I

    .line 66
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;
    .registers 2
    .parameter "name"

    .prologue
    .line 17
    const-class v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    return-object v0
.end method

.method public static values()[Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->$VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    invoke-virtual {v0}, [Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->mValue:I

    return v0
.end method
