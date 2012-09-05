.class public final enum Lfg;
.super Ljava/lang/Enum;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfg;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfg;

.field public static final enum END_ARRAY:Lfg;

.field public static final enum END_OBJECT:Lfg;

.field public static final enum FIELD_NAME:Lfg;

.field public static final enum NOT_AVAILABLE:Lfg;

.field public static final enum START_ARRAY:Lfg;

.field public static final enum START_OBJECT:Lfg;

.field public static final enum VALUE_EMBEDDED_OBJECT:Lfg;

.field public static final enum VALUE_FALSE:Lfg;

.field public static final enum VALUE_NULL:Lfg;

.field public static final enum VALUE_NUMBER_FLOAT:Lfg;

.field public static final enum VALUE_NUMBER_INT:Lfg;

.field public static final enum VALUE_STRING:Lfg;

.field public static final enum VALUE_TRUE:Lfg;


# instance fields
.field final _serialized:Ljava/lang/String;

.field final _serializedBytes:[B

.field final _serializedChars:[C


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 28
    new-instance v0, Lfg;

    const-string v1, "NOT_AVAILABLE"

    invoke-direct {v0, v1, v5, v4}, Lfg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfg;->NOT_AVAILABLE:Lfg;

    .line 34
    new-instance v0, Lfg;

    const-string v1, "START_OBJECT"

    const-string v2, "{"

    invoke-direct {v0, v1, v6, v2}, Lfg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfg;->START_OBJECT:Lfg;

    .line 40
    new-instance v0, Lfg;

    const-string v1, "END_OBJECT"

    const-string v2, "}"

    invoke-direct {v0, v1, v7, v2}, Lfg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfg;->END_OBJECT:Lfg;

    .line 46
    new-instance v0, Lfg;

    const-string v1, "START_ARRAY"

    const-string v2, "["

    invoke-direct {v0, v1, v8, v2}, Lfg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfg;->START_ARRAY:Lfg;

    .line 52
    new-instance v0, Lfg;

    const-string v1, "END_ARRAY"

    const/4 v2, 0x4

    const-string v3, "]"

    invoke-direct {v0, v1, v2, v3}, Lfg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfg;->END_ARRAY:Lfg;

    .line 58
    new-instance v0, Lfg;

    const-string v1, "FIELD_NAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lfg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfg;->FIELD_NAME:Lfg;

    .line 72
    new-instance v0, Lfg;

    const-string v1, "VALUE_EMBEDDED_OBJECT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lfg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfg;->VALUE_EMBEDDED_OBJECT:Lfg;

    .line 79
    new-instance v0, Lfg;

    const-string v1, "VALUE_STRING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lfg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfg;->VALUE_STRING:Lfg;

    .line 87
    new-instance v0, Lfg;

    const-string v1, "VALUE_NUMBER_INT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v4}, Lfg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfg;->VALUE_NUMBER_INT:Lfg;

    .line 95
    new-instance v0, Lfg;

    const-string v1, "VALUE_NUMBER_FLOAT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v4}, Lfg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    .line 101
    new-instance v0, Lfg;

    const-string v1, "VALUE_TRUE"

    const/16 v2, 0xa

    const-string v3, "true"

    invoke-direct {v0, v1, v2, v3}, Lfg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfg;->VALUE_TRUE:Lfg;

    .line 107
    new-instance v0, Lfg;

    const-string v1, "VALUE_FALSE"

    const/16 v2, 0xb

    const-string v3, "false"

    invoke-direct {v0, v1, v2, v3}, Lfg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfg;->VALUE_FALSE:Lfg;

    .line 113
    new-instance v0, Lfg;

    const-string v1, "VALUE_NULL"

    const/16 v2, 0xc

    const-string v3, "null"

    invoke-direct {v0, v1, v2, v3}, Lfg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfg;->VALUE_NULL:Lfg;

    .line 7
    const/16 v0, 0xd

    new-array v0, v0, [Lfg;

    sget-object v1, Lfg;->NOT_AVAILABLE:Lfg;

    aput-object v1, v0, v5

    sget-object v1, Lfg;->START_OBJECT:Lfg;

    aput-object v1, v0, v6

    sget-object v1, Lfg;->END_OBJECT:Lfg;

    aput-object v1, v0, v7

    sget-object v1, Lfg;->START_ARRAY:Lfg;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lfg;->END_ARRAY:Lfg;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lfg;->FIELD_NAME:Lfg;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfg;->VALUE_EMBEDDED_OBJECT:Lfg;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lfg;->VALUE_STRING:Lfg;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lfg;->VALUE_NUMBER_INT:Lfg;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lfg;->VALUE_TRUE:Lfg;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lfg;->VALUE_FALSE:Lfg;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lfg;->VALUE_NULL:Lfg;

    aput-object v2, v0, v1

    sput-object v0, Lfg;->$VALUES:[Lfg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
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
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 128
    if-nez p3, :cond_d

    .line 129
    iput-object v0, p0, Lfg;->_serialized:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lfg;->_serializedChars:[C

    .line 131
    iput-object v0, p0, Lfg;->_serializedBytes:[B

    .line 142
    :cond_c
    return-void

    .line 133
    :cond_d
    iput-object p3, p0, Lfg;->_serialized:Ljava/lang/String;

    .line 134
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lfg;->_serializedChars:[C

    .line 136
    iget-object v0, p0, Lfg;->_serializedChars:[C

    array-length v0, v0

    .line 137
    new-array v1, v0, [B

    iput-object v1, p0, Lfg;->_serializedBytes:[B

    .line 138
    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_c

    .line 139
    iget-object v2, p0, Lfg;->_serializedBytes:[B

    iget-object v3, p0, Lfg;->_serializedChars:[C

    aget-char v3, v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d
.end method

.method public static valueOf(Ljava/lang/String;)Lfg;
    .registers 2
    .parameter

    .prologue
    .line 7
    const-class v0, Lfg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfg;

    return-object p0
.end method

.method public static values()[Lfg;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lfg;->$VALUES:[Lfg;

    invoke-virtual {v0}, [Lfg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfg;

    return-object v0
.end method


# virtual methods
.method public final asCharArray()[C
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lfg;->_serializedChars:[C

    return-object v0
.end method

.method public final asString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lfg;->_serialized:Ljava/lang/String;

    return-object v0
.end method

.method public final isNumeric()Z
    .registers 2

    .prologue
    .line 149
    sget-object v0, Lfg;->VALUE_NUMBER_INT:Lfg;

    if-eq p0, v0, :cond_8

    sget-object v0, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isScalarValue()Z
    .registers 3

    .prologue
    .line 159
    invoke-virtual {p0}, Lfg;->ordinal()I

    move-result v0

    sget-object v1, Lfg;->VALUE_EMBEDDED_OBJECT:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
