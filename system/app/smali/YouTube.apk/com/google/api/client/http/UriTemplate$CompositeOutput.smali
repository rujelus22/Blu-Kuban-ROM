.class final enum Lcom/google/api/client/http/UriTemplate$CompositeOutput;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/client/http/UriTemplate$CompositeOutput;

.field public static final enum AMP:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

.field public static final enum DOT:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

.field public static final enum FORWARD_SLASH:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

.field public static final enum HASH:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

.field public static final enum PLUS:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

.field public static final enum QUERY:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

.field public static final enum SEMI_COLON:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

.field public static final enum SIMPLE:Lcom/google/api/client/http/UriTemplate$CompositeOutput;


# instance fields
.field private final explodeJoiner:Ljava/lang/String;

.field private final outputPrefix:Ljava/lang/String;

.field private final propertyPrefix:Ljava/lang/Character;

.field private final requiresVarAssignment:Z

.field private final reservedExpansion:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    .line 88
    new-instance v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    const-string v1, "PLUS"

    const/4 v2, 0x0

    const/16 v3, 0x2b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, ""

    const-string v5, ","

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->PLUS:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .line 91
    new-instance v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    const-string v1, "HASH"

    const/4 v2, 0x1

    const/16 v3, 0x23

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "#"

    const-string v5, ","

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->HASH:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .line 94
    new-instance v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    const-string v1, "DOT"

    const/4 v2, 0x2

    const/16 v3, 0x2e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "."

    const-string v5, "."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->DOT:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .line 97
    new-instance v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    const-string v1, "FORWARD_SLASH"

    const/4 v2, 0x3

    const/16 v3, 0x2f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "/"

    const-string v5, "/"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->FORWARD_SLASH:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .line 100
    new-instance v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    const-string v1, "SEMI_COLON"

    const/4 v2, 0x4

    const/16 v3, 0x3b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, ";"

    const-string v5, ";"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->SEMI_COLON:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .line 103
    new-instance v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    const-string v1, "QUERY"

    const/4 v2, 0x5

    const/16 v3, 0x3f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "?"

    const-string v5, "&"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->QUERY:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .line 106
    new-instance v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    const-string v1, "AMP"

    const/4 v2, 0x6

    const/16 v3, 0x26

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "&"

    const-string v5, "&"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->AMP:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .line 109
    new-instance v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    const-string v1, "SIMPLE"

    const/4 v2, 0x7

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ","

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->SIMPLE:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .line 85
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->PLUS:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->HASH:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->DOT:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->FORWARD_SLASH:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->SEMI_COLON:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->QUERY:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->AMP:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->SIMPLE:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->$VALUES:[Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput-object p3, p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->propertyPrefix:Ljava/lang/Character;

    .line 130
    invoke-static {p4}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->outputPrefix:Ljava/lang/String;

    .line 131
    invoke-static {p5}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->explodeJoiner:Ljava/lang/String;

    .line 132
    iput-boolean p6, p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->requiresVarAssignment:Z

    .line 133
    iput-boolean p7, p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->reservedExpansion:Z

    .line 134
    if-eqz p3, :cond_20

    .line 135
    sget-object v0, Lcom/google/api/client/http/UriTemplate;->a:Ljava/util/Map;

    invoke-interface {v0, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/client/http/UriTemplate$CompositeOutput;
    .registers 2
    .parameter

    .prologue
    .line 85
    const-class v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    return-object v0
.end method

.method public static values()[Lcom/google/api/client/http/UriTemplate$CompositeOutput;
    .registers 1

    .prologue
    .line 85
    sget-object v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->$VALUES:[Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    invoke-virtual {v0}, [Lcom/google/api/client/http/UriTemplate$CompositeOutput;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    return-object v0
.end method


# virtual methods
.method final getEncodedValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->reservedExpansion:Z

    if-eqz v0, :cond_9

    .line 180
    invoke-static {p1}, Lcom/google/api/client/util/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_8
    return-object v0

    .line 182
    :cond_9
    invoke-static {p1}, Lcom/google/api/client/util/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method final getExplodeJoiner()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->explodeJoiner:Ljava/lang/String;

    return-object v0
.end method

.method final getOutputPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->outputPrefix:Ljava/lang/String;

    return-object v0
.end method

.method final getVarNameStartIndex()I
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->propertyPrefix:Ljava/lang/Character;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method final requiresVarAssignment()Z
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->requiresVarAssignment:Z

    return v0
.end method
