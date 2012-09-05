.class public Lcom/swype/android/connect/compat/CompatBase64;
.super Ljava/lang/Object;
.source "CompatBase64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/connect/compat/CompatBase64$OutputStream;,
        Lcom/swype/android/connect/compat/CompatBase64$InputStream;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DECODE:I = 0x0

.field public static final DONT_GUNZIP:I = 0x4

.field public static final DO_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field public static final GZIP:I = 0x2

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field public static final NO_OPTIONS:I = 0x0

.field public static final ORDERED:I = 0x20

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "US-ASCII"

.field public static final URL_SAFE:I = 0x10

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final _ORDERED_ALPHABET:[B

.field private static final _ORDERED_DECODABET:[B

.field private static final _STANDARD_ALPHABET:[B

.field private static final _STANDARD_DECODABET:[B

.field private static final _URL_SAFE_ALPHABET:[B

.field private static final _URL_SAFE_DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x100

    const/16 v1, 0x40

    .line 40
    const-class v0, Lcom/swype/android/connect/compat/CompatBase64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_3c

    const/4 v0, 0x1

    :goto_d
    sput-boolean v0, Lcom/swype/android/connect/compat/CompatBase64;->$assertionsDisabled:Z

    .line 112
    new-array v0, v1, [B

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/swype/android/connect/compat/CompatBase64;->_STANDARD_ALPHABET:[B

    .line 130
    new-array v0, v2, [B

    fill-array-data v0, :array_62

    sput-object v0, Lcom/swype/android/connect/compat/CompatBase64;->_STANDARD_DECODABET:[B

    .line 172
    new-array v0, v1, [B

    fill-array-data v0, :array_e6

    sput-object v0, Lcom/swype/android/connect/compat/CompatBase64;->_URL_SAFE_ALPHABET:[B

    .line 188
    new-array v0, v2, [B

    fill-array-data v0, :array_10a

    sput-object v0, Lcom/swype/android/connect/compat/CompatBase64;->_URL_SAFE_DECODABET:[B

    .line 235
    new-array v0, v1, [B

    fill-array-data v0, :array_18e

    sput-object v0, Lcom/swype/android/connect/compat/CompatBase64;->_ORDERED_ALPHABET:[B

    .line 253
    const/16 v0, 0x101

    new-array v0, v0, [B

    fill-array-data v0, :array_1b2

    sput-object v0, Lcom/swype/android/connect/compat/CompatBase64;->_ORDERED_DECODABET:[B

    return-void

    .line 40
    :cond_3c
    const/4 v0, 0x0

    goto :goto_d

    .line 112
    :array_3e
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 130
    :array_62
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data

    .line 172
    :array_e6
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 188
    :array_10a
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data

    .line 235
    :array_18e
    .array-data 0x1
        0x2dt
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data

    .line 253
    :array_1b2
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0xf7t
        0xf7t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x25t
        0xf7t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3et
        0x3ft
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    invoke-static {p0}, Lcom/swype/android/connect/compat/CompatBase64;->getDecodabet(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100([BII[BII)[B
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 40
    invoke-static/range {p0 .. p5}, Lcom/swype/android/connect/compat/CompatBase64;->encode3to4([BII[BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200([BI[BII)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 40
    invoke-static {p0, p1, p2, p3, p4}, Lcom/swype/android/connect/compat/CompatBase64;->decode4to3([BI[BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$300([B[BII)[B
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    invoke-static {p0, p1, p2, p3}, Lcom/swype/android/connect/compat/CompatBase64;->encode3to4([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 2
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1114
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/swype/android/connect/compat/CompatBase64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1132
    if-nez p0, :cond_d

    .line 1133
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Input string was null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1138
    :cond_d
    :try_start_d
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_12} :catch_66

    move-result-object v0

    .line 1146
    :goto_13
    array-length v1, v0

    invoke-static {v0, v4, v1, p1}, Lcom/swype/android/connect/compat/CompatBase64;->decode([BIII)[B

    move-result-object v0

    .line 1150
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_6c

    move v1, v6

    .line 1151
    :goto_1d
    if-eqz v0, :cond_65

    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_65

    if-nez v1, :cond_65

    .line 1153
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v6

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 1154
    const v2, 0x8b1f

    if-ne v2, v1, :cond_65

    .line 1158
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 1159
    :try_start_3b
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_7e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_40} :catch_ae

    .line 1163
    :try_start_40
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_9c
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_45} :catch_b3

    .line 1164
    :try_start_45
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_a1
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4a} :catch_b7

    .line 1166
    :goto_4a
    :try_start_4a
    invoke-virtual {v4, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v5

    if-ltz v5, :cond_6e

    .line 1167
    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_a5
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_54} :catch_55

    goto :goto_4a

    .line 1174
    :catch_55
    move-exception v1

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_59
    :try_start_59
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_a9

    .line 1179
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_90

    .line 1180
    :goto_5f
    :try_start_5f
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_92

    .line 1181
    :goto_62
    :try_start_62
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_94

    .line 1187
    :cond_65
    :goto_65
    return-object v0

    .line 1141
    :catch_66
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_13

    :cond_6c
    move v1, v4

    .line 1150
    goto :goto_1d

    .line 1171
    :cond_6e
    :try_start_6e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_a5
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_55

    move-result-object v0

    .line 1179
    :try_start_72
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_8c

    .line 1180
    :goto_75
    :try_start_75
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_8e

    .line 1181
    :goto_78
    :try_start_78
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_65

    .line 1182
    :catch_7c
    move-exception v1

    goto :goto_65

    .line 1179
    :catchall_7e
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    move-object v3, v5

    :goto_82
    :try_start_82
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_96

    .line 1180
    :goto_85
    :try_start_85
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_98

    .line 1181
    :goto_88
    :try_start_88
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_9a

    :goto_8b
    throw v0

    :catch_8c
    move-exception v1

    goto :goto_75

    :catch_8e
    move-exception v1

    goto :goto_78

    :catch_90
    move-exception v1

    goto :goto_5f

    :catch_92
    move-exception v1

    goto :goto_62

    .line 1182
    :catch_94
    move-exception v1

    goto :goto_65

    :catch_96
    move-exception v1

    goto :goto_85

    :catch_98
    move-exception v1

    goto :goto_88

    :catch_9a
    move-exception v1

    goto :goto_8b

    .line 1179
    :catchall_9c
    move-exception v0

    move-object v1, v2

    move-object v3, v5

    move-object v2, v5

    goto :goto_82

    :catchall_a1
    move-exception v0

    move-object v1, v2

    move-object v2, v5

    goto :goto_82

    :catchall_a5
    move-exception v0

    move-object v1, v2

    move-object v2, v4

    goto :goto_82

    :catchall_a9
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_82

    .line 1174
    :catch_ae
    move-exception v1

    move-object v2, v5

    move-object v3, v5

    move-object v4, v5

    goto :goto_59

    :catch_b3
    move-exception v1

    move-object v3, v5

    move-object v4, v5

    goto :goto_59

    :catch_b7
    move-exception v1

    move-object v4, v3

    move-object v3, v5

    goto :goto_59
.end method

.method public static decode([B)[B
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1010
    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Lcom/swype/android/connect/compat/CompatBase64;->decode([BIII)[B

    move-result-object v0

    .line 1016
    return-object v0
.end method

.method public static decode([BIII)[B
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1042
    if-nez p0, :cond_f

    .line 1043
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot decode null source array."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1045
    :cond_f
    if-ltz p1, :cond_16

    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_37

    .line 1046
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source array with length %d cannot have offset of %d and process %d bytes."

    new-array v2, v11, [Ljava/lang/Object;

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1050
    :cond_37
    if-nez p2, :cond_3c

    .line 1051
    new-array v0, v8, [B

    .line 1098
    :goto_3b
    return-object v0

    .line 1052
    :cond_3c
    if-ge p2, v2, :cond_57

    .line 1053
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Base64-encoded string must have at least four characters, but length specified was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    :cond_57
    invoke-static {p3}, Lcom/swype/android/connect/compat/CompatBase64;->getDecodabet(I)[B

    move-result-object v0

    .line 1059
    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    .line 1060
    new-array v1, v1, [B

    .line 1063
    new-array v2, v2, [B

    move v3, p1

    move v4, v8

    move v5, v8

    .line 1065
    :goto_66
    add-int v6, p1, p2

    if-ge v3, v6, :cond_b6

    .line 1070
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v0, v6

    .line 1075
    const/4 v7, -0x5

    if-lt v6, v7, :cond_91

    .line 1076
    const/4 v7, -0x1

    if-lt v6, v7, :cond_b1

    .line 1077
    add-int/lit8 v6, v4, 0x1

    aget-byte v7, p0, v3

    aput-byte v7, v2, v4

    .line 1078
    if-le v6, v11, :cond_b4

    .line 1079
    invoke-static {v2, v8, v1, v5, p3}, Lcom/swype/android/connect/compat/CompatBase64;->decode4to3([BI[BII)I

    move-result v4

    add-int/2addr v4, v5

    .line 1083
    aget-byte v5, p0, v3

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_af

    move v0, v4

    .line 1096
    :goto_8a
    new-array v2, v0, [B

    .line 1097
    invoke-static {v1, v8, v2, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 1098
    goto :goto_3b

    .line 1091
    :cond_91
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad Base64 input character decimal %d in array position %d"

    new-array v2, v10, [Ljava/lang/Object;

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_af
    move v5, v4

    move v4, v8

    .line 1068
    :cond_b1
    :goto_b1
    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    :cond_b4
    move v4, v6

    goto :goto_b1

    :cond_b6
    move v0, v5

    goto :goto_8a
.end method

.method private static decode4to3([BI[BII)I
    .registers 13
    .parameter "source"
    .parameter "srcOffset"
    .parameter "destination"
    .parameter "destOffset"
    .parameter "options"

    .prologue
    const/16 v5, 0x3d

    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 925
    if-nez p0, :cond_f

    .line 926
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Source array was null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 928
    :cond_f
    if-nez p2, :cond_19

    .line 929
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Destination array was null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 931
    :cond_19
    if-ltz p1, :cond_20

    add-int/lit8 v2, p1, 0x3

    array-length v3, p0

    if-lt v2, v3, :cond_3b

    .line 932
    :cond_20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Source array with length %d cannot have offset of %d and still process four bytes."

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 935
    :cond_3b
    if-ltz p3, :cond_42

    add-int/lit8 v2, p3, 0x2

    array-length v3, p2

    if-lt v2, v3, :cond_5d

    .line 936
    :cond_42
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Destination array with length %d cannot have offset of %d and still store three bytes."

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 941
    :cond_5d
    invoke-static {p4}, Lcom/swype/android/connect/compat/CompatBase64;->getDecodabet(I)[B

    move-result-object v0

    .line 944
    .local v0, DECODABET:[B
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    if-ne v2, v5, :cond_82

    .line 948
    aget-byte v2, p0, p1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int v1, v2, v3

    .line 951
    .local v1, outBuff:I
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    move v2, v6

    .line 987
    :goto_81
    return v2

    .line 956
    .end local v1           #outBuff:I
    :cond_82
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    if-ne v2, v5, :cond_b5

    .line 961
    aget-byte v2, p0, p1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    or-int v1, v2, v3

    .line 965
    .restart local v1       #outBuff:I
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 966
    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    move v2, v4

    .line 967
    goto :goto_81

    .line 977
    .end local v1           #outBuff:I
    :cond_b5
    aget-byte v2, p0, p1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 983
    .restart local v1       #outBuff:I
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 984
    add-int/lit8 v2, p3, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 985
    add-int/lit8 v2, p3, 0x2

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    .line 987
    const/4 v2, 0x3

    goto :goto_81
.end method

.method public static decodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1502
    invoke-static {p0}, Lcom/swype/android/connect/compat/CompatBase64;->decodeFromFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 1503
    const/4 v1, 0x0

    .line 1505
    :try_start_5
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_18
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_16

    .line 1507
    :try_start_f
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_21
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_24

    .line 1513
    :try_start_12
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_1d

    .line 1515
    :goto_15
    return-void

    .line 1509
    :catch_16
    move-exception v0

    :goto_17
    :try_start_17
    throw v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 1513
    :catchall_18
    move-exception v0

    :goto_19
    :try_start_19
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1f

    .line 1514
    :goto_1c
    throw v0

    .line 1515
    :catch_1d
    move-exception v0

    goto :goto_15

    :catch_1f
    move-exception v1

    goto :goto_1c

    .line 1513
    :catchall_21
    move-exception v0

    move-object v1, v2

    goto :goto_19

    .line 1509
    :catch_24
    move-exception v0

    move-object v1, v2

    goto :goto_17
.end method

.method public static decodeFromFile(Ljava/lang/String;)[B
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1368
    const/4 v0, 0x0

    .line 1373
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-lez v2, :cond_3f

    .line 1381
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is too big for this convenience method ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes)."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_70
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_35} :catch_35

    .line 1400
    :catch_35
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_39
    :try_start_39
    throw v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    .line 1404
    :catchall_3a
    move-exception v0

    :goto_3b
    :try_start_3b
    invoke-virtual {v1}, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_6e

    :goto_3e
    throw v0

    .line 1383
    :cond_3f
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [B

    .line 1386
    new-instance v3, Lcom/swype/android/connect/compat/CompatBase64$InputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    invoke-direct {v3, v4, v1}, Lcom/swype/android/connect/compat/CompatBase64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_56
    .catchall {:try_start_3f .. :try_end_56} :catchall_70
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_56} :catch_35

    move v0, v6

    .line 1391
    :goto_57
    const/16 v1, 0x1000

    :try_start_59
    invoke-virtual {v3, v2, v0, v1}, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_61

    .line 1392
    add-int/2addr v0, v1

    goto :goto_57

    .line 1396
    :cond_61
    new-array v1, v0, [B

    .line 1397
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_68
    .catchall {:try_start_59 .. :try_end_68} :catchall_75
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_68} :catch_78

    .line 1404
    :try_start_68
    invoke-virtual {v3}, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_6c

    .line 1407
    :goto_6b
    return-object v1

    .line 1405
    :catch_6c
    move-exception v0

    goto :goto_6b

    :catch_6e
    move-exception v1

    goto :goto_3e

    .line 1404
    :catchall_70
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3b

    :catchall_75
    move-exception v0

    move-object v1, v3

    goto :goto_3b

    .line 1400
    :catch_78
    move-exception v0

    move-object v1, v3

    goto :goto_39
.end method

.method public static decodeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1333
    const/4 v0, 0x0

    .line 1335
    :try_start_1
    new-instance v1, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_19

    .line 1337
    :try_start_c
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->write([B)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_1e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_2c

    .line 1343
    :try_start_15
    invoke-virtual {v1}, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_23

    .line 1344
    :goto_18
    return-void

    .line 1339
    :catch_19
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1d
    :try_start_1d
    throw v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    .line 1343
    :catchall_1e
    move-exception v0

    :goto_1f
    :try_start_1f
    invoke-virtual {v1}, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_25

    :goto_22
    throw v0

    .line 1344
    :catch_23
    move-exception v0

    goto :goto_18

    :catch_25
    move-exception v1

    goto :goto_22

    .line 1343
    :catchall_27
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1f

    .line 1339
    :catch_2c
    move-exception v0

    goto :goto_1d
.end method

.method public static decodeToObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "encodedObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1206
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/swype/android/connect/compat/CompatBase64;->decodeToObject(Ljava/lang/String;ILjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static decodeToObject(Ljava/lang/String;ILjava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1231
    invoke-static {p0, p1}, Lcom/swype/android/connect/compat/CompatBase64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1235
    :try_start_5
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_3a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_53
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_a} :catch_2f

    .line 1241
    if-nez p2, :cond_1c

    .line 1242
    :try_start_c
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_3d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_22
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_11} :catch_48

    .line 1262
    :goto_11
    :try_start_11
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_42
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_56
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_14} :catch_4d

    move-result-object v2

    .line 1271
    :try_start_15
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_32

    .line 1272
    :goto_18
    :try_start_18
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_34

    .line 1275
    :goto_1b
    return-object v2

    .line 1248
    :cond_1c
    :try_start_1c
    new-instance v0, Lcom/swype/android/connect/compat/CompatBase64$1;

    invoke-direct {v0, v1, p2}, Lcom/swype/android/connect/compat/CompatBase64$1;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_3d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_22
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_21} :catch_48

    goto :goto_11

    .line 1264
    :catch_22
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    :goto_26
    :try_start_26
    throw v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    .line 1271
    :catchall_27
    move-exception v0

    :goto_28
    :try_start_28
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_36

    .line 1272
    :goto_2b
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_38

    :goto_2e
    throw v0

    .line 1267
    :catch_2f
    move-exception v0

    move-object v1, v2

    :goto_31
    :try_start_31
    throw v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_27

    :catch_32
    move-exception v1

    goto :goto_18

    .line 1273
    :catch_34
    move-exception v0

    goto :goto_1b

    :catch_36
    move-exception v2

    goto :goto_2b

    :catch_38
    move-exception v1

    goto :goto_2e

    .line 1271
    :catchall_3a
    move-exception v0

    move-object v1, v2

    goto :goto_28

    :catchall_3d
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_28

    :catchall_42
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_28

    .line 1267
    :catch_48
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_31

    :catch_4d
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_31

    .line 1264
    :catch_53
    move-exception v0

    move-object v1, v2

    goto :goto_26

    :catch_56
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_26
.end method

.method public static encode(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 448
    new-array v0, v4, [B

    .line 449
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 451
    :goto_7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 452
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 453
    invoke-virtual {p0, v0, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 454
    invoke-static {v1, v0, v2, v3}, Lcom/swype/android/connect/compat/CompatBase64;->encode3to4([B[BII)[B

    .line 455
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_7

    .line 457
    :cond_1f
    return-void
.end method

.method public static encode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 472
    new-array v0, v5, [B

    .line 473
    new-array v1, v6, [B

    .line 475
    :cond_7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 476
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 477
    invoke-virtual {p0, v0, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 478
    invoke-static {v1, v0, v2, v4}, Lcom/swype/android/connect/compat/CompatBase64;->encode3to4([B[BII)[B

    move v2, v4

    .line 479
    :goto_1c
    if-ge v2, v6, :cond_7

    .line 480
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 483
    :cond_29
    return-void
.end method

.method private static encode3to4([BII[BII)[B
    .registers 12
    .parameter "source"
    .parameter "srcOffset"
    .parameter "numSigBytes"
    .parameter "destination"
    .parameter "destOffset"
    .parameter "options"

    .prologue
    const/16 v5, 0x3d

    const/4 v4, 0x0

    .line 389
    invoke-static {p5}, Lcom/swype/android/connect/compat/CompatBase64;->getAlphabet(I)[B

    move-result-object v0

    .line 402
    .local v0, ALPHABET:[B
    if-lez p2, :cond_2c

    aget-byte v2, p0, p1

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x8

    :goto_f
    const/4 v3, 0x1

    if-le p2, v3, :cond_2e

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    :goto_1a
    or-int/2addr v2, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_30

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x18

    :goto_26
    or-int v1, v2, v3

    .line 406
    .local v1, inBuff:I
    packed-switch p2, :pswitch_data_8e

    .line 430
    :goto_2b
    return-object p3

    .end local v1           #inBuff:I
    :cond_2c
    move v2, v4

    .line 402
    goto :goto_f

    :cond_2e
    move v3, v4

    goto :goto_1a

    :cond_30
    move v3, v4

    goto :goto_26

    .line 409
    .restart local v1       #inBuff:I
    :pswitch_32
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 410
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 411
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 412
    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v3, v1, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    goto :goto_2b

    .line 416
    :pswitch_55
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 417
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 418
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 419
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2b

    .line 423
    :pswitch_74
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 424
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 425
    add-int/lit8 v2, p4, 0x2

    aput-byte v5, p3, v2

    .line 426
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2b

    .line 406
    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_74
        :pswitch_55
        :pswitch_32
    .end packed-switch
.end method

.method private static encode3to4([B[BII)[B
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 357
    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move v4, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/swype/android/connect/compat/CompatBase64;->encode3to4([BII[BII)[B

    .line 358
    return-object p0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .registers 6
    .parameter "source"

    .prologue
    .line 608
    const/4 v0, 0x0

    .line 610
    .local v0, encoded:Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_2
    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/swype/android/connect/compat/CompatBase64;->encodeBytes([BIII)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_14

    move-result-object v0

    .line 614
    :cond_8
    sget-boolean v2, Lcom/swype/android/connect/compat/CompatBase64;->$assertionsDisabled:Z

    if-nez v2, :cond_24

    if-nez v0, :cond_24

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 611
    :catch_14
    move-exception v2

    move-object v1, v2

    .line 612
    .local v1, ex:Ljava/io/IOException;
    sget-boolean v2, Lcom/swype/android/connect/compat/CompatBase64;->$assertionsDisabled:Z

    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 615
    .end local v1           #ex:Ljava/io/IOException;
    :cond_24
    return-object v0
.end method

.method public static encodeBytes([BI)Ljava/lang/String;
    .registers 4
    .parameter "source"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 650
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/swype/android/connect/compat/CompatBase64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .registers 7
    .parameter "source"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 676
    const/4 v0, 0x0

    .line 678
    .local v0, encoded:Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_2
    invoke-static {p0, p1, p2, v2}, Lcom/swype/android/connect/compat/CompatBase64;->encodeBytes([BIII)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_12

    move-result-object v0

    .line 682
    :cond_6
    sget-boolean v2, Lcom/swype/android/connect/compat/CompatBase64;->$assertionsDisabled:Z

    if-nez v2, :cond_21

    if-nez v0, :cond_21

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 679
    :catch_12
    move-exception v1

    .line 680
    .local v1, ex:Ljava/io/IOException;
    sget-boolean v2, Lcom/swype/android/connect/compat/CompatBase64;->$assertionsDisabled:Z

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 683
    .end local v1           #ex:Ljava/io/IOException;
    :cond_21
    return-object v0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 721
    invoke-static {p0, p1, p2, p3}, Lcom/swype/android/connect/compat/CompatBase64;->encodeBytesToBytes([BIII)[B

    move-result-object v0

    .line 725
    :try_start_4
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_b} :catch_d

    move-object v0, v1

    .line 728
    :goto_c
    return-object v0

    :catch_d
    move-exception v1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto :goto_c
.end method

.method public static encodeBytesToBytes([B)[B
    .registers 6
    .parameter "source"

    .prologue
    .line 748
    const/4 v0, 0x0

    .line 750
    .local v0, encoded:[B
    const/4 v2, 0x0

    :try_start_2
    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/swype/android/connect/compat/CompatBase64;->encodeBytesToBytes([BIII)[B
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_9

    move-result-object v0

    .line 754
    :cond_8
    return-object v0

    .line 751
    :catch_9
    move-exception v2

    move-object v1, v2

    .line 752
    .local v1, ex:Ljava/io/IOException;
    sget-boolean v2, Lcom/swype/android/connect/compat/CompatBase64;->$assertionsDisabled:Z

    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOExceptions only come from GZipping, which is turned off: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static encodeBytesToBytes([BIII)[B
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 778
    if-nez p0, :cond_a

    .line 779
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot serialize a null array."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 782
    :cond_a
    if-gez p1, :cond_25

    .line 783
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot have negative offset: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 786
    :cond_25
    if-gez p2, :cond_40

    .line 787
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot have length offset: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 790
    :cond_40
    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_6a

    .line 791
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot have offset of %d and length of %d with array of length %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 798
    :cond_6a
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_a6

    .line 799
    const/4 v0, 0x0

    .line 800
    const/4 v1, 0x0

    .line 801
    const/4 v2, 0x0

    .line 805
    :try_start_71
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_11d
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_76} :catch_96

    .line 806
    :try_start_76
    new-instance v0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;

    or-int/lit8 p3, p3, 0x1

    invoke-direct {v0, v3, p3}, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_7d
    .catchall {:try_start_76 .. :try_end_7d} :catchall_123
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7d} :catch_135

    .line 807
    :try_start_7d
    new-instance p3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p3, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_129
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_82} :catch_13b

    .line 809
    :try_start_82
    invoke-virtual {p3, p0, p1, p2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 810
    invoke-virtual {p3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_88
    .catchall {:try_start_82 .. :try_end_88} :catchall_12f
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_88} :catch_141

    .line 818
    :try_start_88
    invoke-virtual {p3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_10e

    .line 819
    :goto_8b
    :try_start_8b
    invoke-virtual {v0}, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->close()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_111

    .line 820
    :goto_8e
    :try_start_8e
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_114

    .line 823
    :goto_91
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 878
    :goto_95
    return-object p0

    .line 812
    :catch_96
    move-exception p0

    move-object p1, v2

    move-object p2, v1

    move-object p3, v0

    :goto_9a
    :try_start_9a
    throw p0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_9b

    .line 818
    :catchall_9b
    move-exception p0

    :goto_9c
    :try_start_9c
    invoke-virtual {p2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_117

    .line 819
    :goto_9f
    :try_start_9f
    invoke-virtual {p1}, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->close()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a2} :catch_119

    .line 820
    :goto_a2
    :try_start_a2
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a5} :catch_11b

    :goto_a5
    throw p0

    .line 828
    :cond_a6
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_ec

    const/4 v0, 0x1

    move v6, v0

    .line 837
    :goto_ac
    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_ef

    const/4 v1, 0x4

    :goto_b5
    add-int/2addr v0, v1

    .line 838
    if-eqz v6, :cond_bb

    .line 839
    div-int/lit8 v1, v0, 0x4c

    add-int/2addr v0, v1

    .line 841
    :cond_bb
    new-array v3, v0, [B

    .line 844
    const/4 v0, 0x0

    .line 845
    const/4 v1, 0x0

    .line 846
    const/4 v2, 0x2

    sub-int v7, p2, v2

    .line 847
    const/4 v2, 0x0

    move v8, v2

    move v4, v1

    move v9, v0

    .line 848
    :goto_c6
    if-ge v9, v7, :cond_f1

    .line 849
    add-int v1, v9, p1

    const/4 v2, 0x3

    move-object v0, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/swype/android/connect/compat/CompatBase64;->encode3to4([BII[BII)[B

    .line 851
    add-int/lit8 v0, v8, 0x4

    .line 852
    if-eqz v6, :cond_149

    const/16 v1, 0x4c

    if-lt v0, v1, :cond_149

    .line 854
    add-int/lit8 v0, v4, 0x4

    const/16 v1, 0xa

    aput-byte v1, v3, v0

    .line 855
    add-int/lit8 v0, v4, 0x1

    .line 856
    const/4 v1, 0x0

    move v10, v1

    move v1, v0

    move v0, v10

    .line 848
    :goto_e4
    add-int/lit8 v2, v9, 0x3

    add-int/lit8 v1, v1, 0x4

    move v8, v0

    move v4, v1

    move v9, v2

    goto :goto_c6

    .line 828
    :cond_ec
    const/4 v0, 0x0

    move v6, v0

    goto :goto_ac

    .line 837
    :cond_ef
    const/4 v1, 0x0

    goto :goto_b5

    .line 860
    :cond_f1
    if-ge v9, p2, :cond_147

    .line 861
    add-int v1, v9, p1

    sub-int v2, p2, v9

    move-object v0, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/swype/android/connect/compat/CompatBase64;->encode3to4([BII[BII)[B

    .line 862
    add-int/lit8 p0, v4, 0x4

    .line 867
    :goto_fe
    array-length p1, v3

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    if-gt p0, p1, :cond_10c

    .line 872
    new-array p1, p0, [B

    .line 873
    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {v3, p2, p1, p3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, p1

    .line 875
    goto :goto_95

    :cond_10c
    move-object p0, v3

    .line 878
    goto :goto_95

    :catch_10e
    move-exception p0

    goto/16 :goto_8b

    :catch_111
    move-exception p0

    goto/16 :goto_8e

    .line 821
    :catch_114
    move-exception p0

    goto/16 :goto_91

    :catch_117
    move-exception p2

    goto :goto_9f

    :catch_119
    move-exception p1

    goto :goto_a2

    :catch_11b
    move-exception p1

    goto :goto_a5

    .line 818
    :catchall_11d
    move-exception p0

    move-object p1, v2

    move-object p2, v1

    move-object p3, v0

    goto/16 :goto_9c

    :catchall_123
    move-exception p0

    move-object p1, v2

    move-object p2, v1

    move-object p3, v3

    goto/16 :goto_9c

    :catchall_129
    move-exception p0

    move-object p1, v0

    move-object p2, v1

    move-object p3, v3

    goto/16 :goto_9c

    :catchall_12f
    move-exception p0

    move-object p1, v0

    move-object p2, p3

    move-object p3, v3

    goto/16 :goto_9c

    .line 812
    :catch_135
    move-exception p0

    move-object p1, v2

    move-object p2, v1

    move-object p3, v3

    goto/16 :goto_9a

    :catch_13b
    move-exception p0

    move-object p1, v0

    move-object p2, v1

    move-object p3, v3

    goto/16 :goto_9a

    :catch_141
    move-exception p0

    move-object p1, v0

    move-object p2, p3

    move-object p3, v3

    goto/16 :goto_9a

    :cond_147
    move p0, v4

    goto :goto_fe

    :cond_149
    move v1, v4

    goto :goto_e4
.end method

.method public static encodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1474
    invoke-static {p0}, Lcom/swype/android/connect/compat/CompatBase64;->encodeFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1475
    const/4 v1, 0x0

    .line 1477
    :try_start_5
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_1e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_1c

    .line 1479
    :try_start_f
    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_27
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_2a

    .line 1485
    :try_start_18
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_23

    .line 1487
    :goto_1b
    return-void

    .line 1481
    :catch_1c
    move-exception v0

    :goto_1d
    :try_start_1d
    throw v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    .line 1485
    :catchall_1e
    move-exception v0

    :goto_1f
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_25

    .line 1486
    :goto_22
    throw v0

    .line 1487
    :catch_23
    move-exception v0

    goto :goto_1b

    :catch_25
    move-exception v1

    goto :goto_22

    .line 1485
    :catchall_27
    move-exception v0

    move-object v1, v2

    goto :goto_1f

    .line 1481
    :catch_2a
    move-exception v0

    move-object v1, v2

    goto :goto_1d
.end method

.method public static encodeFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1429
    const/4 v0, 0x0

    .line 1434
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x3ff6666666666666L

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0

    add-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0x28

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [B

    .line 1437
    new-instance v3, Lcom/swype/android/connect/compat/CompatBase64$InputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x1

    invoke-direct {v3, v4, v1}, Lcom/swype/android/connect/compat/CompatBase64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_53
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2e} :catch_45

    move v0, v6

    .line 1445
    :goto_2f
    const/16 v1, 0x1000

    :try_start_31
    invoke-virtual {v3, v2, v0, v1}, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_39

    .line 1446
    add-int/2addr v0, v1

    goto :goto_2f

    .line 1450
    :cond_39
    new-instance v1, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "US-ASCII"

    invoke-direct {v1, v2, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_58
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_41} :catch_5b

    .line 1457
    :try_start_41
    invoke-virtual {v3}, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_4f

    .line 1460
    :goto_44
    return-object v1

    .line 1453
    :catch_45
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_49
    :try_start_49
    throw v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    .line 1457
    :catchall_4a
    move-exception v0

    :goto_4b
    :try_start_4b
    invoke-virtual {v1}, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_51

    :goto_4e
    throw v0

    .line 1458
    :catch_4f
    move-exception v0

    goto :goto_44

    :catch_51
    move-exception v1

    goto :goto_4e

    .line 1457
    :catchall_53
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4b

    :catchall_58
    move-exception v0

    move-object v1, v3

    goto :goto_4b

    .line 1453
    :catch_5b
    move-exception v0

    move-object v1, v3

    goto :goto_49
.end method

.method public static encodeObject(Ljava/io/Serializable;)Ljava/lang/String;
    .registers 2
    .parameter "serializableObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/swype/android/connect/compat/CompatBase64;->encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 545
    if-nez p0, :cond_b

    .line 546
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot serialize a null object."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_b
    :try_start_b
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_4b

    .line 559
    :try_start_10
    new-instance v1, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;

    or-int/lit8 v2, p1, 0x1

    invoke-direct {v1, v0, v2}, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_7f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_9f

    .line 560
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_44

    .line 562
    :try_start_1b
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_87
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_a7

    .line 563
    :try_start_20
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_8f
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_af

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    .line 568
    :goto_28
    :try_start_28
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_96
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_b6

    .line 576
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_6a

    .line 577
    :goto_2e
    :try_start_2e
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_6c

    .line 578
    :goto_31
    :try_start_31
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_6e

    .line 579
    :goto_34
    :try_start_34
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_70

    .line 584
    :goto_37
    :try_start_37
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "US-ASCII"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_42
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_37 .. :try_end_42} :catch_5e

    move-object v0, v1

    .line 588
    :goto_43
    return-object v0

    .line 566
    :cond_44
    :try_start_44
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_87
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_49} :catch_a7

    move-object v3, v4

    goto :goto_28

    .line 570
    :catch_4b
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    move-object v3, v4

    :goto_4f
    :try_start_4f
    throw v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    .line 576
    :catchall_50
    move-exception v0

    :goto_51
    :try_start_51
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_72

    .line 577
    :goto_54
    :try_start_54
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_74

    .line 578
    :goto_57
    :try_start_57
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_76

    .line 579
    :goto_5a
    :try_start_5a
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_78

    :goto_5d
    throw v0

    .line 588
    :catch_5e
    move-exception v1

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto :goto_43

    :catch_6a
    move-exception v2

    goto :goto_2e

    :catch_6c
    move-exception v2

    goto :goto_31

    :catch_6e
    move-exception v1

    goto :goto_34

    .line 580
    :catch_70
    move-exception v1

    goto :goto_37

    :catch_72
    move-exception v1

    goto :goto_54

    :catch_74
    move-exception v1

    goto :goto_57

    :catch_76
    move-exception v1

    goto :goto_5a

    :catch_78
    move-exception v1

    goto :goto_5d

    .line 576
    :catchall_7a
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    move-object v3, v4

    goto :goto_51

    :catchall_7f
    move-exception v1

    move-object v2, v4

    move-object v3, v4

    move-object v5, v1

    move-object v1, v4

    move-object v4, v0

    move-object v0, v5

    goto :goto_51

    :catchall_87
    move-exception v2

    move-object v3, v1

    move-object v1, v4

    move-object v5, v4

    move-object v4, v0

    move-object v0, v2

    move-object v2, v5

    goto :goto_51

    :catchall_8f
    move-exception v3

    move-object v5, v3

    move-object v3, v1

    move-object v1, v4

    move-object v4, v0

    move-object v0, v5

    goto :goto_51

    :catchall_96
    move-exception v4

    move-object v5, v4

    move-object v4, v0

    move-object v0, v5

    move-object v6, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_51

    .line 570
    :catch_9f
    move-exception v1

    move-object v2, v4

    move-object v3, v4

    move-object v5, v1

    move-object v1, v4

    move-object v4, v0

    move-object v0, v5

    goto :goto_4f

    :catch_a7
    move-exception v2

    move-object v3, v1

    move-object v1, v4

    move-object v5, v4

    move-object v4, v0

    move-object v0, v2

    move-object v2, v5

    goto :goto_4f

    :catch_af
    move-exception v3

    move-object v5, v3

    move-object v3, v1

    move-object v1, v4

    move-object v4, v0

    move-object v0, v5

    goto :goto_4f

    :catch_b6
    move-exception v4

    move-object v5, v4

    move-object v4, v0

    move-object v0, v5

    move-object v6, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_4f
.end method

.method public static encodeToFile([BLjava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1297
    if-nez p0, :cond_a

    .line 1298
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Data to encode was null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1301
    :cond_a
    const/4 v0, 0x0

    .line 1303
    :try_start_b
    new-instance v1, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_2b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_1d

    .line 1305
    :try_start_16
    invoke-virtual {v1, p0}, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->write([B)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_22
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_30

    .line 1311
    :try_start_19
    invoke-virtual {v1}, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_27

    .line 1312
    :goto_1c
    return-void

    .line 1307
    :catch_1d
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_21
    :try_start_21
    throw v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    .line 1311
    :catchall_22
    move-exception v0

    :goto_23
    :try_start_23
    invoke-virtual {v1}, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_29

    :goto_26
    throw v0

    .line 1312
    :catch_27
    move-exception v0

    goto :goto_1c

    :catch_29
    move-exception v1

    goto :goto_26

    .line 1311
    :catchall_2b
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_23

    .line 1307
    :catch_30
    move-exception v0

    goto :goto_21
.end method

.method private static final getAlphabet(I)[B
    .registers 3
    .parameter "options"

    .prologue
    .line 303
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    .line 304
    sget-object v0, Lcom/swype/android/connect/compat/CompatBase64;->_URL_SAFE_ALPHABET:[B

    .line 308
    :goto_8
    return-object v0

    .line 305
    :cond_9
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_12

    .line 306
    sget-object v0, Lcom/swype/android/connect/compat/CompatBase64;->_ORDERED_ALPHABET:[B

    goto :goto_8

    .line 308
    :cond_12
    sget-object v0, Lcom/swype/android/connect/compat/CompatBase64;->_STANDARD_ALPHABET:[B

    goto :goto_8
.end method

.method private static final getDecodabet(I)[B
    .registers 3
    .parameter "options"

    .prologue
    .line 321
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    .line 322
    sget-object v0, Lcom/swype/android/connect/compat/CompatBase64;->_URL_SAFE_DECODABET:[B

    .line 326
    :goto_8
    return-object v0

    .line 323
    :cond_9
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_12

    .line 324
    sget-object v0, Lcom/swype/android/connect/compat/CompatBase64;->_ORDERED_DECODABET:[B

    goto :goto_8

    .line 326
    :cond_12
    sget-object v0, Lcom/swype/android/connect/compat/CompatBase64;->_STANDARD_DECODABET:[B

    goto :goto_8
.end method
