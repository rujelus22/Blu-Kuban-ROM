.class public final enum Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;
.super Ljava/lang/Enum;
.source "Duplex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/printoptionattribute/Duplex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumDuplex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

.field public static final enum DUPLEX_ONE_SIDE:Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

.field public static final enum DUPLEX_PRINTER_DEFAULT:Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

.field public static final enum DUPLEX_TWO_SIDE_LONG_EDGE:Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

.field public static final enum DUPLEX_TWO_SIDE_SHORT_EDGE:Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    const-string v1, "DUPLEX_ONE_SIDE"

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;->DUPLEX_ONE_SIDE:Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    .line 24
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    const-string v1, "DUPLEX_TWO_SIDE_LONG_EDGE"

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;->DUPLEX_TWO_SIDE_LONG_EDGE:Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    .line 26
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    const-string v1, "DUPLEX_TWO_SIDE_SHORT_EDGE"

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;->DUPLEX_TWO_SIDE_SHORT_EDGE:Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    .line 27
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    const-string v1, "DUPLEX_PRINTER_DEFAULT"

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;->DUPLEX_PRINTER_DEFAULT:Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;->DUPLEX_ONE_SIDE:Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;->DUPLEX_TWO_SIDE_LONG_EDGE:Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;->DUPLEX_TWO_SIDE_SHORT_EDGE:Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;->DUPLEX_PRINTER_DEFAULT:Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;->$VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

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
    iput p3, p0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;->mValue:I

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;
    .registers 2
    .parameter "name"

    .prologue
    .line 20
    const-class v0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    return-object v0
.end method

.method public static values()[Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;->$VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    invoke-virtual {v0}, [Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;->mValue:I

    return v0
.end method
