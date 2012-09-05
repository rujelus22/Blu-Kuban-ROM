.class public final enum Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;
.super Ljava/lang/Enum;
.source "ImageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/pagedata/ImageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumOutputMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

.field public static final enum OUTPUT_TYPE_CUSTOM_SIZE:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

.field public static final enum OUTPUT_TYPE_FIT_TO_PAGE:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 26
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    const-string v1, "OUTPUT_TYPE_FIT_TO_PAGE"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->OUTPUT_TYPE_FIT_TO_PAGE:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    .line 29
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    const-string v1, "OUTPUT_TYPE_CUSTOM_SIZE"

    invoke-direct {v0, v1, v2, v4}, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->OUTPUT_TYPE_CUSTOM_SIZE:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    .line 24
    new-array v0, v4, [Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    sget-object v1, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->OUTPUT_TYPE_FIT_TO_PAGE:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->OUTPUT_TYPE_CUSTOM_SIZE:Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->$VALUES:[Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->mValue:I

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;
    .registers 2
    .parameter "name"

    .prologue
    .line 24
    const-class v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->$VALUES:[Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    invoke-virtual {v0}, [Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/ImageData$EnumOutputMode;->mValue:I

    return v0
.end method
