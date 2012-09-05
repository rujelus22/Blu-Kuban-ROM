.class public final enum Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;
.super Ljava/lang/Enum;
.source "SourceType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/printoptionattribute/SourceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumSourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;

.field public static final enum PRINT_SOURCE_DOCUMENT:Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;

.field public static final enum PRINT_SOURCE_PHOTO:Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 28
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;

    const-string v1, "PRINT_SOURCE_PHOTO"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;->PRINT_SOURCE_PHOTO:Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;

    .line 30
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;

    const-string v1, "PRINT_SOURCE_DOCUMENT"

    invoke-direct {v0, v1, v2, v4}, Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;->PRINT_SOURCE_DOCUMENT:Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;

    .line 26
    new-array v0, v4, [Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;->PRINT_SOURCE_PHOTO:Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;->PRINT_SOURCE_DOCUMENT:Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;->$VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;->mValue:I

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;
    .registers 2
    .parameter "name"

    .prologue
    .line 26
    const-class v0, Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;

    return-object v0
.end method

.method public static values()[Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;->$VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;

    invoke-virtual {v0}, [Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;->mValue:I

    return v0
.end method
