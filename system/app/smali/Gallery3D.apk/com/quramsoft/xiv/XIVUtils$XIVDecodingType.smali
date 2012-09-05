.class public final enum Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;
.super Ljava/lang/Enum;
.source "XIVUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quramsoft/xiv/XIVUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "XIVDecodingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;

.field public static final enum LARGE_THUMNAIL_IMAGE:Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;

.field public static final enum ZOOM_IMAGE:Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 545
    new-instance v0, Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;

    const-string v1, "LARGE_THUMNAIL_IMAGE"

    invoke-direct {v0, v1, v2}, Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;->LARGE_THUMNAIL_IMAGE:Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;

    .line 546
    new-instance v0, Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;

    const-string v1, "ZOOM_IMAGE"

    invoke-direct {v0, v1, v3}, Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;->ZOOM_IMAGE:Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;

    .line 543
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;

    sget-object v1, Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;->LARGE_THUMNAIL_IMAGE:Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;->ZOOM_IMAGE:Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;->ENUM$VALUES:[Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 543
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;

    return-object v0
.end method

.method public static values()[Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;->ENUM$VALUES:[Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;

    array-length v1, v0

    new-array v2, v1, [Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
