.class final enum Lorg/simpleframework/xml/transform/DateType;
.super Ljava/lang/Enum;
.source "DateType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/simpleframework/xml/transform/DateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/simpleframework/xml/transform/DateType;

.field public static final enum FULL:Lorg/simpleframework/xml/transform/DateType;

.field public static final enum LONG:Lorg/simpleframework/xml/transform/DateType;

.field public static final enum NORMAL:Lorg/simpleframework/xml/transform/DateType;

.field public static final enum SHORT:Lorg/simpleframework/xml/transform/DateType;


# instance fields
.field private format:Lorg/simpleframework/xml/transform/DateType$DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lorg/simpleframework/xml/transform/DateType;

    const-string v1, "FULL"

    const-string v2, "yyyy-MM-dd HH:mm:ss.S z"

    invoke-direct {v0, v1, v3, v2}, Lorg/simpleframework/xml/transform/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/xml/transform/DateType;->FULL:Lorg/simpleframework/xml/transform/DateType;

    .line 43
    new-instance v0, Lorg/simpleframework/xml/transform/DateType;

    const-string v1, "LONG"

    const-string v2, "yyyy-MM-dd HH:mm:ss z"

    invoke-direct {v0, v1, v4, v2}, Lorg/simpleframework/xml/transform/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/xml/transform/DateType;->LONG:Lorg/simpleframework/xml/transform/DateType;

    .line 48
    new-instance v0, Lorg/simpleframework/xml/transform/DateType;

    const-string v1, "NORMAL"

    const-string v2, "yyyy-MM-dd z"

    invoke-direct {v0, v1, v5, v2}, Lorg/simpleframework/xml/transform/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/xml/transform/DateType;->NORMAL:Lorg/simpleframework/xml/transform/DateType;

    .line 53
    new-instance v0, Lorg/simpleframework/xml/transform/DateType;

    const-string v1, "SHORT"

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v1, v6, v2}, Lorg/simpleframework/xml/transform/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/xml/transform/DateType;->SHORT:Lorg/simpleframework/xml/transform/DateType;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/simpleframework/xml/transform/DateType;

    sget-object v1, Lorg/simpleframework/xml/transform/DateType;->FULL:Lorg/simpleframework/xml/transform/DateType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/simpleframework/xml/transform/DateType;->LONG:Lorg/simpleframework/xml/transform/DateType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/simpleframework/xml/transform/DateType;->NORMAL:Lorg/simpleframework/xml/transform/DateType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/simpleframework/xml/transform/DateType;->SHORT:Lorg/simpleframework/xml/transform/DateType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/simpleframework/xml/transform/DateType;->$VALUES:[Lorg/simpleframework/xml/transform/DateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    new-instance v0, Lorg/simpleframework/xml/transform/DateType$DateFormat;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/transform/DateType$DateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/simpleframework/xml/transform/DateType;->format:Lorg/simpleframework/xml/transform/DateType$DateFormat;

    .line 69
    return-void
.end method

.method public static getDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 2
    .parameter

    .prologue
    .line 109
    invoke-static {p0}, Lorg/simpleframework/xml/transform/DateType;->getType(Ljava/lang/String;)Lorg/simpleframework/xml/transform/DateType;

    move-result-object v0

    .line 110
    invoke-direct {v0}, Lorg/simpleframework/xml/transform/DateType;->getFormat()Lorg/simpleframework/xml/transform/DateType$DateFormat;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/transform/DateType$DateFormat;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private getFormat()Lorg/simpleframework/xml/transform/DateType$DateFormat;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/simpleframework/xml/transform/DateType;->format:Lorg/simpleframework/xml/transform/DateType$DateFormat;

    return-object v0
.end method

.method public static getText(Ljava/util/Date;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 93
    sget-object v0, Lorg/simpleframework/xml/transform/DateType;->FULL:Lorg/simpleframework/xml/transform/DateType;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/DateType;->getFormat()Lorg/simpleframework/xml/transform/DateType$DateFormat;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/transform/DateType$DateFormat;->getText(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/lang/String;)Lorg/simpleframework/xml/transform/DateType;
    .registers 3
    .parameter

    .prologue
    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 128
    const/16 v1, 0x17

    if-le v0, v1, :cond_b

    .line 129
    sget-object v0, Lorg/simpleframework/xml/transform/DateType;->FULL:Lorg/simpleframework/xml/transform/DateType;

    .line 137
    :goto_a
    return-object v0

    .line 131
    :cond_b
    const/16 v1, 0x14

    if-le v0, v1, :cond_12

    .line 132
    sget-object v0, Lorg/simpleframework/xml/transform/DateType;->LONG:Lorg/simpleframework/xml/transform/DateType;

    goto :goto_a

    .line 134
    :cond_12
    const/16 v1, 0xb

    if-le v0, v1, :cond_19

    .line 135
    sget-object v0, Lorg/simpleframework/xml/transform/DateType;->NORMAL:Lorg/simpleframework/xml/transform/DateType;

    goto :goto_a

    .line 137
    :cond_19
    sget-object v0, Lorg/simpleframework/xml/transform/DateType;->SHORT:Lorg/simpleframework/xml/transform/DateType;

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/simpleframework/xml/transform/DateType;
    .registers 2
    .parameter

    .prologue
    .line 33
    const-class v0, Lorg/simpleframework/xml/transform/DateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/transform/DateType;

    return-object v0
.end method

.method public static final values()[Lorg/simpleframework/xml/transform/DateType;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lorg/simpleframework/xml/transform/DateType;->$VALUES:[Lorg/simpleframework/xml/transform/DateType;

    invoke-virtual {v0}, [Lorg/simpleframework/xml/transform/DateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/simpleframework/xml/transform/DateType;

    return-object v0
.end method
