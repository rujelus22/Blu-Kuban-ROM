.class public final enum Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;
.super Ljava/lang/Enum;
.source "ImageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/pagedata/ImageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumRotate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

.field public static final enum ROTATE_0:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

.field public static final enum ROTATE_180:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

.field public static final enum ROTATE_270:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

.field public static final enum ROTATE_90:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 88
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    const-string v1, "ROTATE_0"

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->ROTATE_0:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    .line 90
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    const-string v1, "ROTATE_90"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->ROTATE_90:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    .line 92
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    const-string v1, "ROTATE_180"

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->ROTATE_180:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    .line 94
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    const-string v1, "ROTATE_270"

    invoke-direct {v0, v1, v4, v6}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->ROTATE_270:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    .line 85
    new-array v0, v6, [Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    sget-object v1, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->ROTATE_0:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->ROTATE_90:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->ROTATE_180:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->ROTATE_270:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->$VALUES:[Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

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
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput p3, p0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->mValue:I

    .line 101
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;
    .registers 2
    .parameter "name"

    .prologue
    .line 85
    const-class v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    return-object v0
.end method

.method public static values()[Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;
    .registers 1

    .prologue
    .line 85
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->$VALUES:[Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    invoke-virtual {v0}, [Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumRotate;->mValue:I

    return v0
.end method
