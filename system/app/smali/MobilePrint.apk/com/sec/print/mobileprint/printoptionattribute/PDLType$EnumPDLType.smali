.class public final enum Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;
.super Ljava/lang/Enum;
.source "PDLType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumPDLType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

.field public static final enum PDLTYPE_AUTO:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

.field public static final enum PDLTYPE_DIRECTPRINT:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

.field public static final enum PDLTYPE_PCL3GUI:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

.field public static final enum PDLTYPE_PCL6:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

.field public static final enum PDLTYPE_SPL:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;


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

    .line 10
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    const-string v1, "PDLTYPE_AUTO"

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_AUTO:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    .line 11
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    const-string v1, "PDLTYPE_PCL6"

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_PCL6:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    .line 12
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    const-string v1, "PDLTYPE_SPL"

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_SPL:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    .line 13
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    const-string v1, "PDLTYPE_DIRECTPRINT"

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_DIRECTPRINT:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    .line 14
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    const-string v1, "PDLTYPE_PCL3GUI"

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_PCL3GUI:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_AUTO:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_PCL6:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_SPL:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_DIRECTPRINT:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_PCL3GUI:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->$VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->mValue:I

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;
    .registers 2
    .parameter "name"

    .prologue
    .line 9
    const-class v0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    return-object v0
.end method

.method public static values()[Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->$VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    invoke-virtual {v0}, [Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->mValue:I

    return v0
.end method
