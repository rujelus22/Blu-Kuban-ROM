.class public final enum Lcom/google/net/async/Connection$ConnectionMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CLIENT:Lcom/google/net/async/Connection$ConnectionMode;

.field private static final synthetic ENUM$VALUES:[Lcom/google/net/async/Connection$ConnectionMode;

.field public static final enum SERVER:Lcom/google/net/async/Connection$ConnectionMode;

.field public static final enum UNKNOWN:Lcom/google/net/async/Connection$ConnectionMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-instance v0, Lcom/google/net/async/Connection$ConnectionMode;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/net/async/Connection$ConnectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/net/async/Connection$ConnectionMode;->UNKNOWN:Lcom/google/net/async/Connection$ConnectionMode;

    .line 104
    new-instance v0, Lcom/google/net/async/Connection$ConnectionMode;

    const-string v1, "CLIENT"

    invoke-direct {v0, v1, v3}, Lcom/google/net/async/Connection$ConnectionMode;-><init>(Ljava/lang/String;I)V

    .line 105
    sput-object v0, Lcom/google/net/async/Connection$ConnectionMode;->CLIENT:Lcom/google/net/async/Connection$ConnectionMode;

    .line 106
    new-instance v0, Lcom/google/net/async/Connection$ConnectionMode;

    const-string v1, "SERVER"

    invoke-direct {v0, v1, v4}, Lcom/google/net/async/Connection$ConnectionMode;-><init>(Ljava/lang/String;I)V

    .line 107
    sput-object v0, Lcom/google/net/async/Connection$ConnectionMode;->SERVER:Lcom/google/net/async/Connection$ConnectionMode;

    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/net/async/Connection$ConnectionMode;

    sget-object v1, Lcom/google/net/async/Connection$ConnectionMode;->UNKNOWN:Lcom/google/net/async/Connection$ConnectionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/net/async/Connection$ConnectionMode;->CLIENT:Lcom/google/net/async/Connection$ConnectionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/net/async/Connection$ConnectionMode;->SERVER:Lcom/google/net/async/Connection$ConnectionMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/net/async/Connection$ConnectionMode;->ENUM$VALUES:[Lcom/google/net/async/Connection$ConnectionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/net/async/Connection$ConnectionMode;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/google/net/async/Connection$ConnectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/net/async/Connection$ConnectionMode;

    return-object v0
.end method

.method public static values()[Lcom/google/net/async/Connection$ConnectionMode;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/net/async/Connection$ConnectionMode;->ENUM$VALUES:[Lcom/google/net/async/Connection$ConnectionMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/net/async/Connection$ConnectionMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
