.class public final enum Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;
.super Ljava/lang/Enum;
.source "Orientation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/printoptionattribute/Orientation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;

.field public static final enum ORIENTATION_LANDSCAPE:Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;

.field public static final enum ORIENTATION_PORTRAINT:Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 22
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;

    const-string v1, "ORIENTATION_PORTRAINT"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;->ORIENTATION_PORTRAINT:Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;

    .line 24
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;

    const-string v1, "ORIENTATION_LANDSCAPE"

    invoke-direct {v0, v1, v2, v4}, Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;->ORIENTATION_LANDSCAPE:Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;

    .line 20
    new-array v0, v4, [Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;->ORIENTATION_PORTRAINT:Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;->ORIENTATION_LANDSCAPE:Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;->$VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;->mValue:I

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;
    .registers 2
    .parameter "name"

    .prologue
    .line 20
    const-class v0, Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;

    return-object v0
.end method

.method public static values()[Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;->$VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;

    invoke-virtual {v0}, [Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;->mValue:I

    return v0
.end method
