.class public final enum Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;
.super Ljava/lang/Enum;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumMediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_ARCHIVE:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_BOND:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_CARD_STOCK:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_COATED:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_COLOR:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_COTTON:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_ENVELOPE:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_EXTRATHICK:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_LABELS:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_LETTERHEAD:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_MATTEPHOTO111_130:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_MATTEPHOTO131_175:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_MATTEPHOTO176_222:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_PHOTO:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_PHOTO111_130:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_PHOTO131_175:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_PHOTO176_220:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_PLAIN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_PREPRINTED:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_PREPUNCHED:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_PRINTERDEFAULT:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_RECYCLED:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_THICK:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_THICKER:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_THIN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

.field public static final enum MEDIA_TYPE_TRANSPARENCY:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_PRINTERDEFAULT"

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PRINTERDEFAULT:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 76
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_PLAIN"

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PLAIN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 77
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_THICK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_THICK:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 78
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_THICKER"

    const/16 v2, 0x33

    invoke-direct {v0, v1, v7, v2}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_THICKER:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 79
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_EXTRATHICK"

    const/16 v2, 0x3a

    invoke-direct {v0, v1, v8, v2}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_EXTRATHICK:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 80
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_THIN"

    const/4 v2, 0x5

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_THIN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 81
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_BOND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v6}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_BOND:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 82
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_COLOR"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_COLOR:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 83
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_CARD_STOCK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v8}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_CARD_STOCK:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 84
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_LABELS"

    const/16 v2, 0x9

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_LABELS:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 85
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_TRANSPARENCY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v7}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_TRANSPARENCY:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 86
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_ENVELOPE"

    const/16 v2, 0xb

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_ENVELOPE:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 87
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_PREPRINTED"

    const/16 v2, 0xc

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PREPRINTED:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 88
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_COTTON"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_COTTON:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 89
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_RECYCLED"

    const/16 v2, 0xe

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_RECYCLED:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 90
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_ARCHIVE"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_ARCHIVE:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 91
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_LETTERHEAD"

    const/16 v2, 0x10

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_LETTERHEAD:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 92
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_PREPUNCHED"

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PREPUNCHED:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 93
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_PHOTO111_130"

    const/16 v2, 0x12

    const/16 v3, 0x43

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PHOTO111_130:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 94
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_PHOTO131_175"

    const/16 v2, 0x13

    const/16 v3, 0x44

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PHOTO131_175:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 95
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_PHOTO176_220"

    const/16 v2, 0x14

    const/16 v3, 0x45

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PHOTO176_220:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 96
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_MATTEPHOTO111_130"

    const/16 v2, 0x15

    const/16 v3, 0x46

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_MATTEPHOTO111_130:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 97
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_MATTEPHOTO131_175"

    const/16 v2, 0x16

    const/16 v3, 0x47

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_MATTEPHOTO131_175:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 98
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_MATTEPHOTO176_222"

    const/16 v2, 0x17

    const/16 v3, 0x48

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_MATTEPHOTO176_222:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 99
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_PHOTO"

    const/16 v2, 0x18

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PHOTO:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 100
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    const-string v1, "MEDIA_TYPE_COATED"

    const/16 v2, 0x19

    const/16 v3, 0x65

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_COATED:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 74
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PRINTERDEFAULT:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PLAIN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_THICK:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_THICKER:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_EXTRATHICK:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_THIN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_BOND:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_COLOR:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_CARD_STOCK:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_LABELS:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_TRANSPARENCY:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_ENVELOPE:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PREPRINTED:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_COTTON:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_RECYCLED:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_ARCHIVE:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_LETTERHEAD:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PREPUNCHED:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PHOTO111_130:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PHOTO131_175:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PHOTO176_220:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_MATTEPHOTO111_130:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_MATTEPHOTO131_175:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_MATTEPHOTO176_222:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PHOTO:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_COATED:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->$VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

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
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput p3, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->mValue:I

    .line 106
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;
    .registers 2
    .parameter "name"

    .prologue
    .line 74
    const-class v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    return-object v0
.end method

.method public static values()[Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->$VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    invoke-virtual {v0}, [Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->mValue:I

    return v0
.end method
