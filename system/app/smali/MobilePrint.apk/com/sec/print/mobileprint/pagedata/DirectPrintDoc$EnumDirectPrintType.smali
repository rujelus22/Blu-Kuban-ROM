.class public final enum Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;
.super Ljava/lang/Enum;
.source "DirectPrintDoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumDirectPrintType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

.field public static final enum DIRECT_PRINT_TYPE_BMP:Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

.field public static final enum DIRECT_PRINT_TYPE_JPEG:Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

.field public static final enum DIRECT_PRINT_TYPE_PDF:Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

.field public static final enum DIRECT_PRINT_TYPE_PNG:Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

.field public static final enum DIRECT_PRINT_TYPE_TIFF:Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    const-string v1, "DIRECT_PRINT_TYPE_PDF"

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->DIRECT_PRINT_TYPE_PDF:Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    .line 24
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    const-string v1, "DIRECT_PRINT_TYPE_TIFF"

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->DIRECT_PRINT_TYPE_TIFF:Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    .line 25
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    const-string v1, "DIRECT_PRINT_TYPE_JPEG"

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->DIRECT_PRINT_TYPE_JPEG:Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    .line 26
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    const-string v1, "DIRECT_PRINT_TYPE_BMP"

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->DIRECT_PRINT_TYPE_BMP:Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    .line 27
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    const-string v1, "DIRECT_PRINT_TYPE_PNG"

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->DIRECT_PRINT_TYPE_PNG:Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    sget-object v1, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->DIRECT_PRINT_TYPE_PDF:Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->DIRECT_PRINT_TYPE_TIFF:Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->DIRECT_PRINT_TYPE_JPEG:Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->DIRECT_PRINT_TYPE_BMP:Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->DIRECT_PRINT_TYPE_PNG:Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->$VALUES:[Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->mValue:I

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;
    .registers 2
    .parameter "name"

    .prologue
    .line 21
    const-class v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    return-object v0
.end method

.method public static values()[Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->$VALUES:[Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    invoke-virtual {v0}, [Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/sec/print/mobileprint/pagedata/DirectPrintDoc$EnumDirectPrintType;->mValue:I

    return v0
.end method