.class public final enum Lorg/cups4j/WhichJobsEnum;
.super Ljava/lang/Enum;
.source "WhichJobsEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/cups4j/WhichJobsEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lorg/cups4j/WhichJobsEnum;

.field public static final enum COMPLETED:Lorg/cups4j/WhichJobsEnum;

.field private static final synthetic ENUM$VALUES:[Lorg/cups4j/WhichJobsEnum;

.field public static final enum NOT_COMPLETED:Lorg/cups4j/WhichJobsEnum;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lorg/cups4j/WhichJobsEnum;

    const-string v1, "COMPLETED"

    const-string v2, "completed"

    invoke-direct {v0, v1, v3, v2}, Lorg/cups4j/WhichJobsEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/cups4j/WhichJobsEnum;->COMPLETED:Lorg/cups4j/WhichJobsEnum;

    new-instance v0, Lorg/cups4j/WhichJobsEnum;

    const-string v1, "NOT_COMPLETED"

    const-string v2, "not-completed"

    invoke-direct {v0, v1, v4, v2}, Lorg/cups4j/WhichJobsEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/cups4j/WhichJobsEnum;->NOT_COMPLETED:Lorg/cups4j/WhichJobsEnum;

    new-instance v0, Lorg/cups4j/WhichJobsEnum;

    const-string v1, "ALL"

    const-string v2, "all"

    invoke-direct {v0, v1, v5, v2}, Lorg/cups4j/WhichJobsEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/cups4j/WhichJobsEnum;->ALL:Lorg/cups4j/WhichJobsEnum;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/cups4j/WhichJobsEnum;

    sget-object v1, Lorg/cups4j/WhichJobsEnum;->COMPLETED:Lorg/cups4j/WhichJobsEnum;

    aput-object v1, v0, v3

    sget-object v1, Lorg/cups4j/WhichJobsEnum;->NOT_COMPLETED:Lorg/cups4j/WhichJobsEnum;

    aput-object v1, v0, v4

    sget-object v1, Lorg/cups4j/WhichJobsEnum;->ALL:Lorg/cups4j/WhichJobsEnum;

    aput-object v1, v0, v5

    sput-object v0, Lorg/cups4j/WhichJobsEnum;->ENUM$VALUES:[Lorg/cups4j/WhichJobsEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lorg/cups4j/WhichJobsEnum;->value:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/cups4j/WhichJobsEnum;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/cups4j/WhichJobsEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/cups4j/WhichJobsEnum;

    return-object v0
.end method

.method public static values()[Lorg/cups4j/WhichJobsEnum;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/cups4j/WhichJobsEnum;->ENUM$VALUES:[Lorg/cups4j/WhichJobsEnum;

    array-length v1, v0

    new-array v2, v1, [Lorg/cups4j/WhichJobsEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lorg/cups4j/WhichJobsEnum;->value:Ljava/lang/String;

    return-object v0
.end method
