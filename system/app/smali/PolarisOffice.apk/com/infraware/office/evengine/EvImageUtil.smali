.class public Lcom/infraware/office/evengine/EvImageUtil;
.super Ljava/lang/Object;
.source "EvImageUtil.java"


# static fields
.field static mEvImageUtil:Lcom/infraware/office/evengine/EvImageUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/office/evengine/EvImageUtil;->mEvImageUtil:Lcom/infraware/office/evengine/EvImageUtil;

    .line 5
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getEvImageUtil()Lcom/infraware/office/evengine/EvImageUtil;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/infraware/office/evengine/EvImageUtil;->mEvImageUtil:Lcom/infraware/office/evengine/EvImageUtil;

    if-nez v0, :cond_b

    .line 12
    new-instance v0, Lcom/infraware/office/evengine/EvImageUtil;

    invoke-direct {v0}, Lcom/infraware/office/evengine/EvImageUtil;-><init>()V

    sput-object v0, Lcom/infraware/office/evengine/EvImageUtil;->mEvImageUtil:Lcom/infraware/office/evengine/EvImageUtil;

    .line 14
    :cond_b
    sget-object v0, Lcom/infraware/office/evengine/EvImageUtil;->mEvImageUtil:Lcom/infraware/office/evengine/EvImageUtil;

    return-object v0
.end method


# virtual methods
.method CreateBitmap(II)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "w"
    .parameter "h"

    .prologue
    .line 19
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 21
    :goto_6
    return-object v1

    .line 20
    :catch_7
    move-exception v0

    .line 21
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method ScaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "src"
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 27
    const/4 v1, 0x1

    :try_start_1
    invoke-static {p1, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v1

    .line 29
    :goto_5
    return-object v1

    .line 28
    :catch_6
    move-exception v0

    .line 29
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    goto :goto_5
.end method
