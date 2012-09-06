.class public final enum Lcom/anddoes/launcher/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/anddoes/launcher/m;

.field public static final enum b:Lcom/anddoes/launcher/m;

.field public static final enum c:Lcom/anddoes/launcher/m;

.field private static final synthetic d:[Lcom/anddoes/launcher/m;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/anddoes/launcher/m;

    const-string v1, "ANDROID_OS"

    invoke-direct {v0, v1, v2}, Lcom/anddoes/launcher/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anddoes/launcher/m;->a:Lcom/anddoes/launcher/m;

    new-instance v0, Lcom/anddoes/launcher/m;

    const-string v1, "APP_VERSION"

    invoke-direct {v0, v1, v3}, Lcom/anddoes/launcher/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anddoes/launcher/m;->b:Lcom/anddoes/launcher/m;

    new-instance v0, Lcom/anddoes/launcher/m;

    const-string v1, "DEVICE_NAME"

    invoke-direct {v0, v1, v4}, Lcom/anddoes/launcher/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anddoes/launcher/m;->c:Lcom/anddoes/launcher/m;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/anddoes/launcher/m;

    sget-object v1, Lcom/anddoes/launcher/m;->a:Lcom/anddoes/launcher/m;

    aput-object v1, v0, v2

    sget-object v1, Lcom/anddoes/launcher/m;->b:Lcom/anddoes/launcher/m;

    aput-object v1, v0, v3

    sget-object v1, Lcom/anddoes/launcher/m;->c:Lcom/anddoes/launcher/m;

    aput-object v1, v0, v4

    sput-object v0, Lcom/anddoes/launcher/m;->d:[Lcom/anddoes/launcher/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/anddoes/launcher/m;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/anddoes/launcher/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/m;

    return-object v0
.end method

.method public static values()[Lcom/anddoes/launcher/m;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/anddoes/launcher/m;->d:[Lcom/anddoes/launcher/m;

    array-length v1, v0

    new-array v2, v1, [Lcom/anddoes/launcher/m;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
