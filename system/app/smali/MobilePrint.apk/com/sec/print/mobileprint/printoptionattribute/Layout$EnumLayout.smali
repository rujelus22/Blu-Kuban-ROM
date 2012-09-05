.class public final enum Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;
.super Ljava/lang/Enum;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/printoptionattribute/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

.field public static final enum LAYOUT_16UP:Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

.field public static final enum LAYOUT_1UP:Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

.field public static final enum LAYOUT_2UP:Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

.field public static final enum LAYOUT_4UP:Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

.field public static final enum LAYOUT_6UP:Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

.field public static final enum LAYOUT_9UP:Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 10
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    const-string v1, "LAYOUT_1UP"

    invoke-direct {v0, v1, v7, v4}, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->LAYOUT_1UP:Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    .line 11
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    const-string v1, "LAYOUT_2UP"

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->LAYOUT_2UP:Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    .line 12
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    const-string v1, "LAYOUT_4UP"

    invoke-direct {v0, v1, v5, v6}, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->LAYOUT_4UP:Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    .line 13
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    const-string v1, "LAYOUT_6UP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->LAYOUT_6UP:Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    .line 14
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    const-string v1, "LAYOUT_9UP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->LAYOUT_9UP:Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    .line 15
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    const-string v1, "LAYOUT_16UP"

    const/4 v2, 0x5

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->LAYOUT_16UP:Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->LAYOUT_1UP:Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->LAYOUT_2UP:Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->LAYOUT_4UP:Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->LAYOUT_6UP:Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->LAYOUT_9UP:Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->LAYOUT_16UP:Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->$VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->mValue:I

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;
    .registers 2
    .parameter "name"

    .prologue
    .line 9
    const-class v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    return-object v0
.end method

.method public static values()[Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->$VALUES:[Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    invoke-virtual {v0}, [Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->mValue:I

    return v0
.end method
