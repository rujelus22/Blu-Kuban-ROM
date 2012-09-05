.class public Lcom/sec/android/framework/draw/LicenseManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:[I

.field private static c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x3

    .line 9
    new-array v0, v3, [I

    const/4 v1, 0x1

    const/16 v2, 0x9

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x8

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/framework/draw/LicenseManager;->b:[I

    .line 10
    new-array v0, v3, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/sec/android/framework/draw/LicenseManager;->c:[I

    .line 7
    return-void

    .line 10
    nop

    :array_18
    .array-data 0x4
        0xdbt 0x7t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkModelNumber()Z
    .registers 2

    .prologue
    .line 68
    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    if-nez v0, :cond_16e

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "google_sdk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "GT-I9220"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "GT-P7300"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "GT-P7500"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "GT-P7560"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "GT-P6200"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SHV-E120S"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SHV-E160S"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SHV-E160K"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SHV-E160U"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SHV-E160L"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SAMSUNG-SGH-I717"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "GT-N7000"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "Full Android on SMDKC210"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SHW-M300"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SHW-M380"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "GT-P7510"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "GT-P7310"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SCH-I905"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SHV-E110"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SAMSUNG-SGH-I957"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SGH-I957"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SGH-T859"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SGH-N014"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SC-01D"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "GT-P6210"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "GT-P6800"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "GT-P6810"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "GT-I815"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SCH-P739"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SCH-I815"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SHV-E140S"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SHV-E140K"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SHV-E140L"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "GT-P7320"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SGH-T869"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SHW-M305W"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SHV-E150S"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "GT-P7580"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "GT-P7570"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "GT-P7501"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "GT-P7511"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "GT-I9228"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SCH-I889"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "GT-P7511"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "GT-P7501"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SCH-i889"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SGH-I815"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SC-02D"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "GT-N7000B"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    const-string v1, "SHW-M430W"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_16e
    sget-object v0, Lcom/sec/android/framework/draw/LicenseManager;->a:Ljava/util/HashSet;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final printErrorMessage()V
    .registers 5

    .prologue
    .line 75
    const-string v0, "DIOTEK/DRAW"

    .line 76
    const-string v1, "This engine isn\'t allowed to run on %s.\nPlease contact us to get license (%s)."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 77
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "m.biz@diotek.co.kr"

    aput-object v4, v2, v3

    .line 75
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public static final printReleaseInfo()V
    .registers 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 89
    const-string v0, "DIOTEK/DRAW"

    const-string v1, "Version : %s.\nRelease Date : %s."

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "%d.%d.%d"

    new-array v4, v9, [Ljava/lang/Object;

    sget-object v5, Lcom/sec/android/framework/draw/LicenseManager;->b:[I

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    sget-object v5, Lcom/sec/android/framework/draw/LicenseManager;->b:[I

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    sget-object v5, Lcom/sec/android/framework/draw/LicenseManager;->b:[I

    aget v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 90
    const-string v3, "%d/%02d/%02d"

    new-array v4, v9, [Ljava/lang/Object;

    sget-object v5, Lcom/sec/android/framework/draw/LicenseManager;->c:[I

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    sget-object v5, Lcom/sec/android/framework/draw/LicenseManager;->c:[I

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    sget-object v5, Lcom/sec/android/framework/draw/LicenseManager;->c:[I

    aget v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 89
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method
