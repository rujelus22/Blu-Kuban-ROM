.class final enum Lcom/anddoes/launcher/as;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/anddoes/launcher/as;

.field public static final enum b:Lcom/anddoes/launcher/as;

.field private static final synthetic c:[Lcom/anddoes/launcher/as;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/anddoes/launcher/as;

    const-string v1, "LoadWidgetPreviewData"

    invoke-direct {v0, v1, v2}, Lcom/anddoes/launcher/as;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anddoes/launcher/as;->a:Lcom/anddoes/launcher/as;

    new-instance v0, Lcom/anddoes/launcher/as;

    const-string v1, "LoadHolographicIconsData"

    invoke-direct {v0, v1, v3}, Lcom/anddoes/launcher/as;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anddoes/launcher/as;->b:Lcom/anddoes/launcher/as;

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/anddoes/launcher/as;

    sget-object v1, Lcom/anddoes/launcher/as;->a:Lcom/anddoes/launcher/as;

    aput-object v1, v0, v2

    sget-object v1, Lcom/anddoes/launcher/as;->b:Lcom/anddoes/launcher/as;

    aput-object v1, v0, v3

    sput-object v0, Lcom/anddoes/launcher/as;->c:[Lcom/anddoes/launcher/as;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/anddoes/launcher/as;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/anddoes/launcher/as;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/as;

    return-object v0
.end method

.method public static values()[Lcom/anddoes/launcher/as;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/anddoes/launcher/as;->c:[Lcom/anddoes/launcher/as;

    array-length v1, v0

    new-array v2, v1, [Lcom/anddoes/launcher/as;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
