.class public final enum Lcom/anddoes/launcher/af;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/anddoes/launcher/af;

.field public static final enum b:Lcom/anddoes/launcher/af;

.field public static final enum c:Lcom/anddoes/launcher/af;

.field private static final synthetic d:[Lcom/anddoes/launcher/af;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 188
    new-instance v0, Lcom/anddoes/launcher/af;

    const-string v1, "PrimaryApps"

    invoke-direct {v0, v1, v2}, Lcom/anddoes/launcher/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anddoes/launcher/af;->a:Lcom/anddoes/launcher/af;

    new-instance v0, Lcom/anddoes/launcher/af;

    const-string v1, "SecondaryApps"

    invoke-direct {v0, v1, v3}, Lcom/anddoes/launcher/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anddoes/launcher/af;->b:Lcom/anddoes/launcher/af;

    new-instance v0, Lcom/anddoes/launcher/af;

    const-string v1, "Widgets"

    invoke-direct {v0, v1, v4}, Lcom/anddoes/launcher/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anddoes/launcher/af;->c:Lcom/anddoes/launcher/af;

    .line 187
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/anddoes/launcher/af;

    sget-object v1, Lcom/anddoes/launcher/af;->a:Lcom/anddoes/launcher/af;

    aput-object v1, v0, v2

    sget-object v1, Lcom/anddoes/launcher/af;->b:Lcom/anddoes/launcher/af;

    aput-object v1, v0, v3

    sget-object v1, Lcom/anddoes/launcher/af;->c:Lcom/anddoes/launcher/af;

    aput-object v1, v0, v4

    sput-object v0, Lcom/anddoes/launcher/af;->d:[Lcom/anddoes/launcher/af;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/anddoes/launcher/af;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/anddoes/launcher/af;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/af;

    return-object v0
.end method

.method public static values()[Lcom/anddoes/launcher/af;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/anddoes/launcher/af;->d:[Lcom/anddoes/launcher/af;

    array-length v1, v0

    new-array v2, v1, [Lcom/anddoes/launcher/af;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
