.class public Lk;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:[B

.field private static final f:[B

.field private static final g:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x100

    const/16 v1, 0x40

    .line 159
    const-class v0, Lk;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_3c

    const/4 v0, 0x1

    :goto_d
    sput-boolean v0, Lk;->a:Z

    .line 231
    new-array v0, v1, [B

    fill-array-data v0, :array_3e

    sput-object v0, Lk;->b:[B

    .line 249
    new-array v0, v2, [B

    fill-array-data v0, :array_62

    sput-object v0, Lk;->c:[B

    .line 291
    new-array v0, v1, [B

    fill-array-data v0, :array_e6

    sput-object v0, Lk;->d:[B

    .line 307
    new-array v0, v2, [B

    fill-array-data v0, :array_10a

    sput-object v0, Lk;->e:[B

    .line 354
    new-array v0, v1, [B

    fill-array-data v0, :array_18e

    sput-object v0, Lk;->f:[B

    .line 372
    const/16 v0, 0x101

    new-array v0, v0, [B

    fill-array-data v0, :array_1b2

    sput-object v0, Lk;->g:[B

    return-void

    .line 159
    :cond_3c
    const/4 v0, 0x0

    goto :goto_d

    .line 231
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

    .line 249
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

    .line 291
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

    .line 307
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

    .line 354
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

    .line 372
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
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a([B[BI)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lk;->b([B[BII)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1325
    invoke-static {p0}, Lk;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/Serializable;)Ljava/lang/String;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    invoke-static {p0}, Lk;->b(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 727
    const/4 v0, 0x0

    .line 729
    :try_start_1
    array-length v1, p0

    invoke-static {p0, v1}, Lk;->a([BI)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_12

    move-result-object v0

    .line 733
    :cond_6
    sget-boolean v1, Lk;->a:Z

    if-nez v1, :cond_21

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 730
    :catch_12
    move-exception v1

    .line 731
    sget-boolean v2, Lk;->a:Z

    if-nez v2, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 734
    :cond_21
    return-object v0
.end method

.method private static a([BI)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 840
    if-nez p0, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot serialize a null array."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-gez p1, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot have length offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    add-int/lit8 v0, p1, 0x0

    array-length v1, p0

    if-le v0, v1, :cond_4f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have offset of %d and length of %d with array of length %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    div-int/lit8 v0, p1, 0x3

    mul-int/lit8 v0, v0, 0x4

    rem-int/lit8 v1, p1, 0x3

    if-lez v1, :cond_6e

    const/4 v1, 0x4

    :goto_58
    add-int/2addr v0, v1

    new-array v3, v0, [B

    sub-int v6, p1, v4

    move v4, v5

    move v7, v5

    :goto_5f
    if-ge v7, v6, :cond_70

    add-int/lit8 v1, v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lk;->a([BII[BII)[B

    add-int/lit8 v0, v7, 0x3

    add-int/lit8 v1, v4, 0x4

    move v4, v1

    move v7, v0

    goto :goto_5f

    :cond_6e
    move v1, v5

    goto :goto_58

    :cond_70
    if-ge v7, p1, :cond_99

    add-int/lit8 v1, v7, 0x0

    sub-int v2, p1, v7

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lk;->a([BII[BII)[B

    add-int/lit8 v0, v4, 0x4

    :goto_7c
    array-length v1, v3

    sub-int/2addr v1, v8

    if-gt v0, v1, :cond_8f

    new-array v1, v0, [B

    invoke-static {v3, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 844
    :goto_86
    :try_start_86
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_8d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_86 .. :try_end_8d} :catch_91

    move-object v0, v1

    .line 847
    :goto_8e
    return-object v0

    :cond_8f
    move-object v0, v3

    .line 840
    goto :goto_86

    .line 847
    :catch_91
    move-exception v1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto :goto_8e

    :cond_99
    move v0, v4

    goto :goto_7c
.end method

.method static synthetic a()[B
    .registers 1

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-static {v0}, Lk;->a(I)[B

    move-result-object v0

    return-object v0
.end method

.method private static final a(I)[B
    .registers 3
    .parameter

    .prologue
    .line 440
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    .line 441
    sget-object v0, Lk;->e:[B

    .line 445
    :goto_8
    return-object v0

    .line 442
    :cond_9
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_12

    .line 443
    sget-object v0, Lk;->g:[B

    goto :goto_8

    .line 445
    :cond_12
    sget-object v0, Lk;->c:[B

    goto :goto_8
.end method

.method private static a([BII[BII)[B
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x3d

    const/4 v3, 0x0

    .line 508
    and-int/lit8 v0, p5, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_30

    sget-object v0, Lk;->d:[B

    .line 521
    :goto_b
    if-lez p2, :cond_3c

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    :goto_13
    const/4 v2, 0x1

    if-le p2, v2, :cond_3e

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x10

    :goto_1e
    or-int/2addr v1, v2

    const/4 v2, 0x2

    if-le p2, v2, :cond_40

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    :goto_2a
    or-int/2addr v1, v2

    .line 525
    packed-switch p2, :pswitch_data_a0

    move-object v0, p3

    .line 549
    :goto_2f
    return-object v0

    .line 508
    :cond_30
    and-int/lit8 v0, p5, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_39

    sget-object v0, Lk;->f:[B

    goto :goto_b

    :cond_39
    sget-object v0, Lk;->b:[B

    goto :goto_b

    :cond_3c
    move v1, v3

    .line 521
    goto :goto_13

    :cond_3e
    move v2, v3

    goto :goto_1e

    :cond_40
    move v2, v3

    goto :goto_2a

    .line 528
    :pswitch_42
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 529
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 530
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 531
    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v1, v1, 0x3f

    aget-byte v0, v0, v1

    aput-byte v0, p3, v2

    move-object v0, p3

    .line 532
    goto :goto_2f

    .line 535
    :pswitch_66
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 536
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 537
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v1, v1, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-byte v0, v0, v1

    aput-byte v0, p3, v2

    .line 538
    add-int/lit8 v0, p4, 0x3

    aput-byte v4, p3, v0

    move-object v0, p3

    .line 539
    goto :goto_2f

    .line 542
    :pswitch_86
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 543
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v1, v1, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-byte v0, v0, v1

    aput-byte v0, p3, v2

    .line 544
    add-int/lit8 v0, p4, 0x2

    aput-byte v4, p3, v0

    .line 545
    add-int/lit8 v0, p4, 0x3

    aput-byte v4, p3, v0

    move-object v0, p3

    .line 546
    goto :goto_2f

    .line 525
    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_86
        :pswitch_66
        :pswitch_42
    .end packed-switch
.end method

.method static synthetic a([B[BII)[B
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 159
    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move v4, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lk;->a([BII[BII)[B

    return-object p0
.end method

.method private static b([B[BII)I
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x3d

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1044
    if-nez p0, :cond_10

    .line 1045
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source array was null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1047
    :cond_10
    if-nez p1, :cond_1a

    .line 1048
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Destination array was null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1050
    :cond_1a
    array-length v0, p0

    if-lt v6, v0, :cond_38

    .line 1051
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source array with length %d cannot have offset of %d and still process four bytes."

    new-array v2, v3, [Ljava/lang/Object;

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1054
    :cond_38
    if-ltz p2, :cond_3f

    add-int/lit8 v0, p2, 0x2

    array-length v1, p1

    if-lt v0, v1, :cond_5a

    .line 1055
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Destination array with length %d cannot have offset of %d and still store three bytes."

    new-array v2, v3, [Ljava/lang/Object;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1060
    :cond_5a
    invoke-static {p3}, Lk;->a(I)[B

    move-result-object v0

    .line 1063
    aget-byte v1, p0, v3

    if-ne v1, v2, :cond_7a

    .line 1067
    aget-byte v1, p0, v4

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    aget-byte v2, p0, v5

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0xc

    or-int/2addr v0, v1

    .line 1070
    ushr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    move v0, v5

    .line 1106
    :goto_79
    return v0

    .line 1075
    :cond_7a
    aget-byte v1, p0, v6

    if-ne v1, v2, :cond_a6

    .line 1080
    aget-byte v1, p0, v4

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    aget-byte v2, p0, v5

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    aget-byte v2, p0, v3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v1

    .line 1084
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 1085
    add-int/lit8 v1, p2, 0x1

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    move v0, v3

    .line 1086
    goto :goto_79

    .line 1096
    :cond_a6
    aget-byte v1, p0, v4

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    aget-byte v2, p0, v5

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    aget-byte v2, p0, v3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    aget-byte v2, p0, v6

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    .line 1102
    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 1103
    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 1104
    add-int/lit8 v1, p2, 0x2

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    move v0, v6

    .line 1106
    goto :goto_79
.end method

.method private static b(Ljava/io/Serializable;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 664
    if-nez p0, :cond_b

    .line 665
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot serialize a null object."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_b
    :try_start_b
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_66
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_37

    .line 678
    :try_start_10
    new-instance v1, Lk$a;

    invoke-direct {v1, v0}, Lk$a;-><init>(Ljava/io/OutputStream;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_6a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_80

    .line 679
    :try_start_15
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_71
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_87

    .line 687
    :try_start_1a
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_78
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_8e

    .line 695
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_56

    .line 696
    :goto_20
    const/4 v2, 0x0

    :try_start_21
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_58

    .line 697
    :goto_24
    :try_start_24
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_5a

    .line 698
    :goto_27
    :try_start_27
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_5c

    .line 703
    :goto_2a
    :try_start_2a
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "US-ASCII"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_35
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2a .. :try_end_35} :catch_4a

    move-object v0, v1

    .line 707
    :goto_36
    return-object v0

    .line 689
    :catch_37
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    :goto_3a
    :try_start_3a
    throw v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 695
    :catchall_3b
    move-exception v0

    :goto_3c
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_5e

    .line 696
    :goto_3f
    const/4 v1, 0x0

    :try_start_40
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_60

    .line 697
    :goto_43
    :try_start_43
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_62

    .line 698
    :goto_46
    :try_start_46
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_64

    :goto_49
    throw v0

    .line 707
    :catch_4a
    move-exception v1

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto :goto_36

    :catch_56
    move-exception v2

    goto :goto_20

    :catch_58
    move-exception v2

    goto :goto_24

    :catch_5a
    move-exception v1

    goto :goto_27

    .line 699
    :catch_5c
    move-exception v1

    goto :goto_2a

    :catch_5e
    move-exception v1

    goto :goto_3f

    :catch_60
    move-exception v1

    goto :goto_43

    :catch_62
    move-exception v1

    goto :goto_46

    :catch_64
    move-exception v1

    goto :goto_49

    .line 695
    :catchall_66
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    goto :goto_3c

    :catchall_6a
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_3c

    :catchall_71
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v4

    goto :goto_3c

    :catchall_78
    move-exception v3

    move-object v4, v3

    move-object v3, v0

    move-object v0, v4

    move-object v5, v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_3c

    .line 689
    :catch_80
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_3a

    :catch_87
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v4

    goto :goto_3a

    :catch_8e
    move-exception v3

    move-object v4, v3

    move-object v3, v0

    move-object v0, v4

    move-object v5, v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_3a
.end method

.method private static b(Ljava/lang/String;)[B
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1251
    if-nez p0, :cond_c

    .line 1252
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Input string was null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1257
    :cond_c
    :try_start_c
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_11} :catch_5f

    move-result-object v0

    .line 1265
    :goto_12
    array-length v1, v0

    invoke-static {v0, v1}, Lk;->b([BI)[B

    move-result-object v0

    .line 1269
    if-eqz v0, :cond_5e

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_5e

    .line 1272
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 1273
    const v2, 0x8b1f

    if-ne v2, v1, :cond_5e

    .line 1277
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 1281
    :try_start_34
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_75
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_39} :catch_a5

    .line 1282
    :try_start_39
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_93
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3e} :catch_aa

    .line 1283
    :try_start_3e
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_98
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_ae

    .line 1285
    :goto_43
    :try_start_43
    invoke-virtual {v4, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v5

    if-ltz v5, :cond_65

    .line 1286
    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_9c
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4d} :catch_4e

    goto :goto_43

    .line 1293
    :catch_4e
    move-exception v1

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_52
    :try_start_52
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_a0

    .line 1298
    :try_start_55
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_87

    .line 1299
    :goto_58
    :try_start_58
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_89

    .line 1300
    :goto_5b
    :try_start_5b
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_8b

    .line 1306
    :cond_5e
    :goto_5e
    return-object v0

    .line 1260
    :catch_5f
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_12

    .line 1290
    :cond_65
    :try_start_65
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_9c
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_4e

    move-result-object v0

    .line 1298
    :try_start_69
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_83

    .line 1299
    :goto_6c
    :try_start_6c
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_85

    .line 1300
    :goto_6f
    :try_start_6f
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_5e

    .line 1301
    :catch_73
    move-exception v1

    goto :goto_5e

    .line 1298
    :catchall_75
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    move-object v3, v5

    :goto_79
    :try_start_79
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7c} :catch_8d

    .line 1299
    :goto_7c
    :try_start_7c
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_8f

    .line 1300
    :goto_7f
    :try_start_7f
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_91

    :goto_82
    throw v0

    :catch_83
    move-exception v1

    goto :goto_6c

    :catch_85
    move-exception v1

    goto :goto_6f

    :catch_87
    move-exception v1

    goto :goto_58

    :catch_89
    move-exception v1

    goto :goto_5b

    .line 1301
    :catch_8b
    move-exception v1

    goto :goto_5e

    :catch_8d
    move-exception v1

    goto :goto_7c

    :catch_8f
    move-exception v1

    goto :goto_7f

    :catch_91
    move-exception v1

    goto :goto_82

    .line 1298
    :catchall_93
    move-exception v0

    move-object v1, v2

    move-object v3, v5

    move-object v2, v5

    goto :goto_79

    :catchall_98
    move-exception v0

    move-object v1, v2

    move-object v2, v5

    goto :goto_79

    :catchall_9c
    move-exception v0

    move-object v1, v2

    move-object v2, v4

    goto :goto_79

    :catchall_a0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_79

    .line 1293
    :catch_a5
    move-exception v1

    move-object v2, v5

    move-object v3, v5

    move-object v4, v5

    goto :goto_52

    :catch_aa
    move-exception v1

    move-object v3, v5

    move-object v4, v5

    goto :goto_52

    :catch_ae
    move-exception v1

    move-object v4, v3

    move-object v3, v5

    goto :goto_52
.end method

.method private static b([BI)[B
    .registers 14
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

    .line 1161
    if-nez p0, :cond_f

    .line 1162
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot decode null source array."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1164
    :cond_f
    add-int/lit8 v0, p1, 0x0

    array-length v1, p0

    if-le v0, v1, :cond_35

    .line 1165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source array with length %d cannot have offset of %d and process %d bytes."

    new-array v2, v11, [Ljava/lang/Object;

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1169
    :cond_35
    if-nez p1, :cond_3a

    .line 1170
    new-array v0, v8, [B

    .line 1217
    :goto_39
    return-object v0

    .line 1171
    :cond_3a
    if-ge p1, v2, :cond_55

    .line 1172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Base64-encoded string must have at least four characters, but length specified was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1176
    :cond_55
    invoke-static {v8}, Lk;->a(I)[B

    move-result-object v0

    .line 1178
    mul-int/lit8 v1, p1, 0x3

    div-int/lit8 v1, v1, 0x4

    .line 1179
    new-array v1, v1, [B

    .line 1182
    new-array v2, v2, [B

    move v3, v8

    move v4, v8

    move v5, v8

    .line 1187
    :goto_64
    add-int/lit8 v6, p1, 0x0

    if-ge v3, v6, :cond_b4

    .line 1189
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v0, v6

    .line 1194
    const/4 v7, -0x5

    if-lt v6, v7, :cond_8f

    .line 1195
    const/4 v7, -0x1

    if-lt v6, v7, :cond_af

    .line 1196
    add-int/lit8 v6, v4, 0x1

    aget-byte v7, p0, v3

    aput-byte v7, v2, v4

    .line 1197
    if-le v6, v11, :cond_b2

    .line 1198
    invoke-static {v2, v1, v5, v8}, Lk;->b([B[BII)I

    move-result v4

    add-int/2addr v4, v5

    .line 1202
    aget-byte v5, p0, v3

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_ad

    move v0, v4

    .line 1215
    :goto_88
    new-array v2, v0, [B

    .line 1216
    invoke-static {v1, v8, v2, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 1217
    goto :goto_39

    .line 1210
    :cond_8f
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

    :cond_ad
    move v5, v4

    move v4, v8

    .line 1187
    :cond_af
    :goto_af
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    :cond_b2
    move v4, v6

    goto :goto_af

    :cond_b4
    move v0, v5

    goto :goto_88
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1350
    invoke-static {p0}, Lk;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 1354
    :try_start_5
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_30
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_a} :catch_25

    .line 1360
    :try_start_a
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_33
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_49
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_f} :catch_3e

    .line 1367
    :try_start_f
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_38
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_4e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_12} :catch_43

    move-result-object v2

    .line 1392
    :try_start_13
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_28

    .line 1393
    :goto_16
    :try_start_16
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_2a

    .line 1396
    :goto_19
    return-object v2

    .line 1385
    :catch_1a
    move-exception v0

    move-object v1, v2

    :goto_1c
    :try_start_1c
    throw v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    .line 1392
    :catchall_1d
    move-exception v0

    :goto_1e
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_2c

    .line 1393
    :goto_21
    :try_start_21
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_2e

    :goto_24
    throw v0

    .line 1388
    :catch_25
    move-exception v0

    move-object v1, v2

    :goto_27
    :try_start_27
    throw v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_1d

    :catch_28
    move-exception v1

    goto :goto_16

    .line 1394
    :catch_2a
    move-exception v0

    goto :goto_19

    :catch_2c
    move-exception v2

    goto :goto_21

    :catch_2e
    move-exception v1

    goto :goto_24

    .line 1392
    :catchall_30
    move-exception v0

    move-object v1, v2

    goto :goto_1e

    :catchall_33
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_1e

    :catchall_38
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1e

    .line 1388
    :catch_3e
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_27

    :catch_43
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_27

    .line 1385
    :catch_49
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_1c

    :catch_4e
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1c
.end method
