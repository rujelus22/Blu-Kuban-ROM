.class public final Lcom/sec/android/app/sns/type/SnsSpType;
.super Ljava/lang/Object;
.source "SnsSpType.java"


# static fields
.field public static final LIST:[I

.field public static final NAME:[Ljava/lang/String;

.field public static final SUPPORTED_LIST:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x10

    .line 84
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "facebook"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "myspace"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "twitter"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bebo"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "friendster"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "skyrock"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "kaixin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "renren"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "linkedin"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "vz"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "plurk"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lastfm"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "orkut"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mixi"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "me2day"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "qzone"

    aput-object v2, v0, v1

    const-string v1, "multisp"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    .line 89
    new-array v0, v3, [I

    fill-array-data v0, :array_70

    sput-object v0, Lcom/sec/android/app/sns/type/SnsSpType;->LIST:[I

    .line 94
    sget-object v0, Lcom/sec/android/app/sns/type/SnsSpType;->LIST:[I

    sput-object v0, Lcom/sec/android/app/sns/type/SnsSpType;->SUPPORTED_LIST:[I

    return-void

    .line 89
    :array_70
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
