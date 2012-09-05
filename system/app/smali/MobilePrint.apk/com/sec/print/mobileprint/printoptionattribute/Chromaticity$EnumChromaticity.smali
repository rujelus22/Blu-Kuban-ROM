.class public final enum Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;
.super Ljava/lang/Enum;
.source "Chromaticity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumChromaticity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;

.field public static final enum COLOR:Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;

.field public static final enum MONOCHROME:Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 25
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;

    const-string v1, "MONOCHROME"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;->MONOCHROME:Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;

    .line 27
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;

    const-string v1, "COLOR"

    invoke-direct {v0, v1, v2, v4}, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;->COLOR:Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;

    .line 23
    new-array v0, v4, [Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;->MONOCHROME:Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;->COLOR:Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;->$VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;

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
    iput p3, p0, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;->mValue:I

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;
    .registers 2
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;

    return-object v0
.end method

.method public static values()[Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;->$VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;

    invoke-virtual {v0}, [Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;->mValue:I

    return v0
.end method
