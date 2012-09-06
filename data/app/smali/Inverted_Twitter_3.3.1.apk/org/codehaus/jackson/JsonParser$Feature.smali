.class public final enum Lorg/codehaus/jackson/JsonParser$Feature;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/codehaus/jackson/JsonParser$Feature;

.field public static final enum b:Lorg/codehaus/jackson/JsonParser$Feature;

.field public static final enum c:Lorg/codehaus/jackson/JsonParser$Feature;

.field public static final enum d:Lorg/codehaus/jackson/JsonParser$Feature;

.field public static final enum e:Lorg/codehaus/jackson/JsonParser$Feature;

.field public static final enum f:Lorg/codehaus/jackson/JsonParser$Feature;

.field public static final enum g:Lorg/codehaus/jackson/JsonParser$Feature;

.field public static final enum h:Lorg/codehaus/jackson/JsonParser$Feature;

.field private static final synthetic i:[Lorg/codehaus/jackson/JsonParser$Feature;


# instance fields
.field final _defaultState:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/codehaus/jackson/JsonParser$Feature;

    const-string v1, "AUTO_CLOSE_SOURCE"

    invoke-direct {v0, v1, v3, v4}, Lorg/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->a:Lorg/codehaus/jackson/JsonParser$Feature;

    new-instance v0, Lorg/codehaus/jackson/JsonParser$Feature;

    const-string v1, "ALLOW_COMMENTS"

    invoke-direct {v0, v1, v4, v3}, Lorg/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->b:Lorg/codehaus/jackson/JsonParser$Feature;

    new-instance v0, Lorg/codehaus/jackson/JsonParser$Feature;

    const-string v1, "ALLOW_UNQUOTED_FIELD_NAMES"

    invoke-direct {v0, v1, v5, v3}, Lorg/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->c:Lorg/codehaus/jackson/JsonParser$Feature;

    new-instance v0, Lorg/codehaus/jackson/JsonParser$Feature;

    const-string v1, "ALLOW_SINGLE_QUOTES"

    invoke-direct {v0, v1, v6, v3}, Lorg/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->d:Lorg/codehaus/jackson/JsonParser$Feature;

    new-instance v0, Lorg/codehaus/jackson/JsonParser$Feature;

    const-string v1, "ALLOW_UNQUOTED_CONTROL_CHARS"

    invoke-direct {v0, v1, v7, v3}, Lorg/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->e:Lorg/codehaus/jackson/JsonParser$Feature;

    new-instance v0, Lorg/codehaus/jackson/JsonParser$Feature;

    const-string v1, "ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->f:Lorg/codehaus/jackson/JsonParser$Feature;

    new-instance v0, Lorg/codehaus/jackson/JsonParser$Feature;

    const-string v1, "INTERN_FIELD_NAMES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lorg/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->g:Lorg/codehaus/jackson/JsonParser$Feature;

    new-instance v0, Lorg/codehaus/jackson/JsonParser$Feature;

    const-string v1, "CANONICALIZE_FIELD_NAMES"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lorg/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->h:Lorg/codehaus/jackson/JsonParser$Feature;

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/codehaus/jackson/JsonParser$Feature;

    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->a:Lorg/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->b:Lorg/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->c:Lorg/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v0, v5

    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->d:Lorg/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v0, v6

    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->e:Lorg/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/codehaus/jackson/JsonParser$Feature;->f:Lorg/codehaus/jackson/JsonParser$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/codehaus/jackson/JsonParser$Feature;->g:Lorg/codehaus/jackson/JsonParser$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/codehaus/jackson/JsonParser$Feature;->h:Lorg/codehaus/jackson/JsonParser$Feature;

    aput-object v2, v0, v1

    sput-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->i:[Lorg/codehaus/jackson/JsonParser$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lorg/codehaus/jackson/JsonParser$Feature;->_defaultState:Z

    return-void
.end method

.method public static a()I
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lorg/codehaus/jackson/JsonParser$Feature;->values()[Lorg/codehaus/jackson/JsonParser$Feature;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_1a

    aget-object v4, v2, v1

    iget-boolean v5, v4, Lorg/codehaus/jackson/JsonParser$Feature;->_defaultState:Z

    if-eqz v5, :cond_17

    const/4 v5, 0x1

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonParser$Feature;->ordinal()I

    move-result v4

    shl-int v4, v5, v4

    or-int/2addr v0, v4

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1a
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser$Feature;
    .registers 2

    const-class v0, Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonParser$Feature;

    return-object v0
.end method

.method public static values()[Lorg/codehaus/jackson/JsonParser$Feature;
    .registers 1

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->i:[Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v0}, [Lorg/codehaus/jackson/JsonParser$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/JsonParser$Feature;

    return-object v0
.end method


# virtual methods
.method public final a(I)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser$Feature;->ordinal()I

    move-result v1

    shl-int v1, v0, v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_b

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final b()I
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser$Feature;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
