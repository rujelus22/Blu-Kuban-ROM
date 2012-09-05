.class public Lcom/sec/android/socialhub/util/SocialHubEmailColor;
.super Ljava/lang/Object;
.source "SocialHubEmailColor.java"


# static fields
.field private static final mColor:[I

.field public static final mColorSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/sec/android/socialhub/util/SocialHubEmailColor;->mColor:[I

    .line 35
    sget-object v0, Lcom/sec/android/socialhub/util/SocialHubEmailColor;->mColor:[I

    array-length v0, v0

    sput v0, Lcom/sec/android/socialhub/util/SocialHubEmailColor;->mColorSize:I

    return-void

    .line 12
    nop

    :array_10
    .array-data 0x4
        0x2dt 0x0t 0x2t 0x7ft
        0x2et 0x0t 0x2t 0x7ft
        0x2ft 0x0t 0x2t 0x7ft
        0x30t 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
        0x32t 0x0t 0x2t 0x7ft
        0x33t 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
        0x35t 0x0t 0x2t 0x7ft
        0x36t 0x0t 0x2t 0x7ft
        0x37t 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
        0x39t 0x0t 0x2t 0x7ft
        0x3at 0x0t 0x2t 0x7ft
        0x3bt 0x0t 0x2t 0x7ft
        0x3ct 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
        0x3ft 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountColor(I)I
    .registers 3
    .parameter "id"

    .prologue
    .line 44
    sget-object v0, Lcom/sec/android/socialhub/util/SocialHubEmailColor;->mColor:[I

    sget v1, Lcom/sec/android/socialhub/util/SocialHubEmailColor;->mColorSize:I

    rem-int v1, p0, v1

    aget v0, v0, v1

    return v0
.end method
