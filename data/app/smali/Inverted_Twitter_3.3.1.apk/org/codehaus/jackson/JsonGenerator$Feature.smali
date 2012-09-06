.class public final enum Lorg/codehaus/jackson/JsonGenerator$Feature;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/codehaus/jackson/JsonGenerator$Feature;

.field public static final enum b:Lorg/codehaus/jackson/JsonGenerator$Feature;

.field public static final enum c:Lorg/codehaus/jackson/JsonGenerator$Feature;

.field public static final enum d:Lorg/codehaus/jackson/JsonGenerator$Feature;

.field public static final enum e:Lorg/codehaus/jackson/JsonGenerator$Feature;

.field public static final enum f:Lorg/codehaus/jackson/JsonGenerator$Feature;

.field private static final synthetic g:[Lorg/codehaus/jackson/JsonGenerator$Feature;


# instance fields
.field final _defaultState:Z

.field final _mask:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lorg/codehaus/jackson/JsonGenerator$Feature;

    const-string v1, "AUTO_CLOSE_TARGET"

    invoke-direct {v0, v1, v4, v3}, Lorg/codehaus/jackson/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->a:Lorg/codehaus/jackson/JsonGenerator$Feature;

    new-instance v0, Lorg/codehaus/jackson/JsonGenerator$Feature;

    const-string v1, "AUTO_CLOSE_JSON_CONTENT"

    invoke-direct {v0, v1, v3, v3}, Lorg/codehaus/jackson/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->b:Lorg/codehaus/jackson/JsonGenerator$Feature;

    new-instance v0, Lorg/codehaus/jackson/JsonGenerator$Feature;

    const-string v1, "QUOTE_FIELD_NAMES"

    invoke-direct {v0, v1, v5, v3}, Lorg/codehaus/jackson/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->c:Lorg/codehaus/jackson/JsonGenerator$Feature;

    new-instance v0, Lorg/codehaus/jackson/JsonGenerator$Feature;

    const-string v1, "QUOTE_NON_NUMERIC_NUMBERS"

    invoke-direct {v0, v1, v6, v3}, Lorg/codehaus/jackson/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->d:Lorg/codehaus/jackson/JsonGenerator$Feature;

    new-instance v0, Lorg/codehaus/jackson/JsonGenerator$Feature;

    const-string v1, "WRITE_NUMBERS_AS_STRINGS"

    invoke-direct {v0, v1, v7, v4}, Lorg/codehaus/jackson/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->e:Lorg/codehaus/jackson/JsonGenerator$Feature;

    new-instance v0, Lorg/codehaus/jackson/JsonGenerator$Feature;

    const-string v1, "FLUSH_PASSED_TO_STREAM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->f:Lorg/codehaus/jackson/JsonGenerator$Feature;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/codehaus/jackson/JsonGenerator$Feature;

    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->a:Lorg/codehaus/jackson/JsonGenerator$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->b:Lorg/codehaus/jackson/JsonGenerator$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->c:Lorg/codehaus/jackson/JsonGenerator$Feature;

    aput-object v1, v0, v5

    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->d:Lorg/codehaus/jackson/JsonGenerator$Feature;

    aput-object v1, v0, v6

    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->e:Lorg/codehaus/jackson/JsonGenerator$Feature;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/codehaus/jackson/JsonGenerator$Feature;->f:Lorg/codehaus/jackson/JsonGenerator$Feature;

    aput-object v2, v0, v1

    sput-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->g:[Lorg/codehaus/jackson/JsonGenerator$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 6

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lorg/codehaus/jackson/JsonGenerator$Feature;->_defaultState:Z

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator$Feature;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/JsonGenerator$Feature;->_mask:I

    return-void
.end method

.method public static a()I
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lorg/codehaus/jackson/JsonGenerator$Feature;->values()[Lorg/codehaus/jackson/JsonGenerator$Feature;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_15

    aget-object v4, v2, v1

    iget-boolean v5, v4, Lorg/codehaus/jackson/JsonGenerator$Feature;->_defaultState:Z

    if-eqz v5, :cond_12

    iget v4, v4, Lorg/codehaus/jackson/JsonGenerator$Feature;->_mask:I

    or-int/2addr v0, v4

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/jackson/JsonGenerator$Feature;
    .registers 2

    const-class v0, Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonGenerator$Feature;

    return-object v0
.end method

.method public static values()[Lorg/codehaus/jackson/JsonGenerator$Feature;
    .registers 1

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->g:[Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {v0}, [Lorg/codehaus/jackson/JsonGenerator$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/JsonGenerator$Feature;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .registers 2

    iget v0, p0, Lorg/codehaus/jackson/JsonGenerator$Feature;->_mask:I

    return v0
.end method
