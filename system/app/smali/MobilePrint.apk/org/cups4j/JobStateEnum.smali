.class public final enum Lorg/cups4j/JobStateEnum;
.super Ljava/lang/Enum;
.source "JobStateEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/cups4j/JobStateEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ABORTED:Lorg/cups4j/JobStateEnum;

.field public static final enum CANCELED:Lorg/cups4j/JobStateEnum;

.field public static final enum COMPLETED:Lorg/cups4j/JobStateEnum;

.field private static final synthetic ENUM$VALUES:[Lorg/cups4j/JobStateEnum;

.field public static final enum PENDING:Lorg/cups4j/JobStateEnum;

.field public static final enum PENDING_HELD:Lorg/cups4j/JobStateEnum;

.field public static final enum PROCESSING:Lorg/cups4j/JobStateEnum;

.field public static final enum PROCESSING_STOPPED:Lorg/cups4j/JobStateEnum;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    new-instance v0, Lorg/cups4j/JobStateEnum;

    const-string v1, "PENDING"

    const-string v2, "pending"

    invoke-direct {v0, v1, v4, v2}, Lorg/cups4j/JobStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/cups4j/JobStateEnum;->PENDING:Lorg/cups4j/JobStateEnum;

    new-instance v0, Lorg/cups4j/JobStateEnum;

    const-string v1, "PENDING_HELD"

    const-string v2, "pending-held"

    invoke-direct {v0, v1, v5, v2}, Lorg/cups4j/JobStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/cups4j/JobStateEnum;->PENDING_HELD:Lorg/cups4j/JobStateEnum;

    new-instance v0, Lorg/cups4j/JobStateEnum;

    const-string v1, "PROCESSING"

    const-string v2, "processing"

    invoke-direct {v0, v1, v6, v2}, Lorg/cups4j/JobStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/cups4j/JobStateEnum;->PROCESSING:Lorg/cups4j/JobStateEnum;

    new-instance v0, Lorg/cups4j/JobStateEnum;

    const-string v1, "PROCESSING_STOPPED"

    .line 26
    const-string v2, "processing-stopped"

    invoke-direct {v0, v1, v7, v2}, Lorg/cups4j/JobStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/cups4j/JobStateEnum;->PROCESSING_STOPPED:Lorg/cups4j/JobStateEnum;

    new-instance v0, Lorg/cups4j/JobStateEnum;

    const-string v1, "CANCELED"

    const-string v2, "canceled"

    invoke-direct {v0, v1, v8, v2}, Lorg/cups4j/JobStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/cups4j/JobStateEnum;->CANCELED:Lorg/cups4j/JobStateEnum;

    new-instance v0, Lorg/cups4j/JobStateEnum;

    const-string v1, "ABORTED"

    const/4 v2, 0x5

    const-string v3, "aborted"

    invoke-direct {v0, v1, v2, v3}, Lorg/cups4j/JobStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/cups4j/JobStateEnum;->ABORTED:Lorg/cups4j/JobStateEnum;

    new-instance v0, Lorg/cups4j/JobStateEnum;

    const-string v1, "COMPLETED"

    const/4 v2, 0x6

    .line 27
    const-string v3, "completed"

    invoke-direct {v0, v1, v2, v3}, Lorg/cups4j/JobStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/cups4j/JobStateEnum;->COMPLETED:Lorg/cups4j/JobStateEnum;

    .line 24
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/cups4j/JobStateEnum;

    sget-object v1, Lorg/cups4j/JobStateEnum;->PENDING:Lorg/cups4j/JobStateEnum;

    aput-object v1, v0, v4

    sget-object v1, Lorg/cups4j/JobStateEnum;->PENDING_HELD:Lorg/cups4j/JobStateEnum;

    aput-object v1, v0, v5

    sget-object v1, Lorg/cups4j/JobStateEnum;->PROCESSING:Lorg/cups4j/JobStateEnum;

    aput-object v1, v0, v6

    sget-object v1, Lorg/cups4j/JobStateEnum;->PROCESSING_STOPPED:Lorg/cups4j/JobStateEnum;

    aput-object v1, v0, v7

    sget-object v1, Lorg/cups4j/JobStateEnum;->CANCELED:Lorg/cups4j/JobStateEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/cups4j/JobStateEnum;->ABORTED:Lorg/cups4j/JobStateEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/cups4j/JobStateEnum;->COMPLETED:Lorg/cups4j/JobStateEnum;

    aput-object v2, v0, v1

    sput-object v0, Lorg/cups4j/JobStateEnum;->ENUM$VALUES:[Lorg/cups4j/JobStateEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lorg/cups4j/JobStateEnum;->value:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/cups4j/JobStateEnum;
    .registers 6
    .parameter "value"

    .prologue
    .line 45
    if-eqz p0, :cond_a

    .line 46
    invoke-static {}, Lorg/cups4j/JobStateEnum;->values()[Lorg/cups4j/JobStateEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_8
    if-lt v1, v3, :cond_c

    .line 52
    :cond_a
    const/4 v0, 0x0

    :cond_b
    return-object v0

    .line 46
    :cond_c
    aget-object v0, v2, v1

    .line 47
    .local v0, jobState:Lorg/cups4j/JobStateEnum;
    iget-object v4, v0, Lorg/cups4j/JobStateEnum;->value:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/cups4j/JobStateEnum;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/cups4j/JobStateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/cups4j/JobStateEnum;

    return-object v0
.end method

.method public static values()[Lorg/cups4j/JobStateEnum;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/cups4j/JobStateEnum;->ENUM$VALUES:[Lorg/cups4j/JobStateEnum;

    array-length v1, v0

    new-array v2, v1, [Lorg/cups4j/JobStateEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/cups4j/JobStateEnum;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lorg/cups4j/JobStateEnum;->value:Ljava/lang/String;

    return-object v0
.end method
