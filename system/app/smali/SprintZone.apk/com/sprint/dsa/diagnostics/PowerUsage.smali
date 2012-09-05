.class public final enum Lcom/sprint/dsa/diagnostics/PowerUsage;
.super Ljava/lang/Enum;
.source "PowerUsage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprint/dsa/diagnostics/PowerUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sprint/dsa/diagnostics/PowerUsage;

.field public static final enum HIGH:Lcom/sprint/dsa/diagnostics/PowerUsage;

.field public static final enum HIGHER:Lcom/sprint/dsa/diagnostics/PowerUsage;

.field public static final enum HIGHEST:Lcom/sprint/dsa/diagnostics/PowerUsage;

.field public static final enum LOW:Lcom/sprint/dsa/diagnostics/PowerUsage;

.field public static final enum LOWEST:Lcom/sprint/dsa/diagnostics/PowerUsage;

.field public static final MAX_VALUE:I

.field public static final enum MEDIUM:Lcom/sprint/dsa/diagnostics/PowerUsage;

.field public static final enum NONE:Lcom/sprint/dsa/diagnostics/PowerUsage;


# instance fields
.field public iconResourceId:I

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/sprint/dsa/diagnostics/PowerUsage;

    const-string v1, "HIGHEST"

    const/4 v2, 0x6

    const v3, 0x7f020012

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sprint/dsa/diagnostics/PowerUsage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->HIGHEST:Lcom/sprint/dsa/diagnostics/PowerUsage;

    .line 11
    new-instance v0, Lcom/sprint/dsa/diagnostics/PowerUsage;

    const-string v1, "HIGHER"

    const/4 v2, 0x5

    const v3, 0x7f020008

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sprint/dsa/diagnostics/PowerUsage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->HIGHER:Lcom/sprint/dsa/diagnostics/PowerUsage;

    .line 12
    new-instance v0, Lcom/sprint/dsa/diagnostics/PowerUsage;

    const-string v1, "HIGH"

    const v2, 0x7f020008

    invoke-direct {v0, v1, v6, v8, v2}, Lcom/sprint/dsa/diagnostics/PowerUsage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->HIGH:Lcom/sprint/dsa/diagnostics/PowerUsage;

    .line 13
    new-instance v0, Lcom/sprint/dsa/diagnostics/PowerUsage;

    const-string v1, "MEDIUM"

    const v2, 0x7f020005

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/sprint/dsa/diagnostics/PowerUsage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->MEDIUM:Lcom/sprint/dsa/diagnostics/PowerUsage;

    .line 14
    new-instance v0, Lcom/sprint/dsa/diagnostics/PowerUsage;

    const-string v1, "LOW"

    const v2, 0x7f02000a

    invoke-direct {v0, v1, v8, v6, v2}, Lcom/sprint/dsa/diagnostics/PowerUsage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->LOW:Lcom/sprint/dsa/diagnostics/PowerUsage;

    .line 15
    new-instance v0, Lcom/sprint/dsa/diagnostics/PowerUsage;

    const-string v1, "LOWEST"

    const/4 v2, 0x5

    const v3, 0x7f02000a

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sprint/dsa/diagnostics/PowerUsage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->LOWEST:Lcom/sprint/dsa/diagnostics/PowerUsage;

    .line 16
    new-instance v0, Lcom/sprint/dsa/diagnostics/PowerUsage;

    const-string v1, "NONE"

    const/4 v2, 0x6

    const v3, 0x7f02000b

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sprint/dsa/diagnostics/PowerUsage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->NONE:Lcom/sprint/dsa/diagnostics/PowerUsage;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sprint/dsa/diagnostics/PowerUsage;

    sget-object v1, Lcom/sprint/dsa/diagnostics/PowerUsage;->HIGHEST:Lcom/sprint/dsa/diagnostics/PowerUsage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sprint/dsa/diagnostics/PowerUsage;->HIGHER:Lcom/sprint/dsa/diagnostics/PowerUsage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sprint/dsa/diagnostics/PowerUsage;->HIGH:Lcom/sprint/dsa/diagnostics/PowerUsage;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sprint/dsa/diagnostics/PowerUsage;->MEDIUM:Lcom/sprint/dsa/diagnostics/PowerUsage;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sprint/dsa/diagnostics/PowerUsage;->LOW:Lcom/sprint/dsa/diagnostics/PowerUsage;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sprint/dsa/diagnostics/PowerUsage;->LOWEST:Lcom/sprint/dsa/diagnostics/PowerUsage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sprint/dsa/diagnostics/PowerUsage;->NONE:Lcom/sprint/dsa/diagnostics/PowerUsage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->ENUM$VALUES:[Lcom/sprint/dsa/diagnostics/PowerUsage;

    .line 18
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->HIGHEST:Lcom/sprint/dsa/diagnostics/PowerUsage;

    iget v0, v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->value:I

    sput v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->MAX_VALUE:I

    .line 8
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 6
    .parameter
    .parameter
    .parameter "value"
    .parameter "iconResourceId"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput v0, p0, Lcom/sprint/dsa/diagnostics/PowerUsage;->value:I

    .line 21
    iput v0, p0, Lcom/sprint/dsa/diagnostics/PowerUsage;->iconResourceId:I

    .line 25
    iput p3, p0, Lcom/sprint/dsa/diagnostics/PowerUsage;->value:I

    .line 26
    iput p4, p0, Lcom/sprint/dsa/diagnostics/PowerUsage;->iconResourceId:I

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sprint/dsa/diagnostics/PowerUsage;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/sprint/dsa/diagnostics/PowerUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/PowerUsage;

    return-object v0
.end method

.method public static values()[Lcom/sprint/dsa/diagnostics/PowerUsage;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->ENUM$VALUES:[Lcom/sprint/dsa/diagnostics/PowerUsage;

    array-length v1, v0

    new-array v2, v1, [Lcom/sprint/dsa/diagnostics/PowerUsage;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter "context"

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sprint/dsa/diagnostics/PowerUsage;->iconResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/sprint/dsa/diagnostics/PowerUsage;->value:I

    return v0
.end method
