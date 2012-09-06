.class final enum Ladu;
.super Ljava/lang/Enum;
.source "UriTemplate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ladu;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ladu;

.field private static final synthetic a:[Ladu;

.field public static final enum b:Ladu;

.field public static final enum c:Ladu;

.field public static final enum d:Ladu;

.field public static final enum e:Ladu;

.field public static final enum f:Ladu;

.field public static final enum g:Ladu;

.field public static final enum h:Ladu;


# instance fields
.field private final a:Ljava/lang/Character;

.field private final a:Ljava/lang/String;

.field private final a:Z

.field private final b:Ljava/lang/String;

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    .line 94
    new-instance v0, Ladu;

    const-string v1, "PLUS"

    const/4 v2, 0x0

    const/16 v3, 0x2b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, ""

    const-string v5, ","

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Ladu;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Ladu;->a:Ladu;

    .line 97
    new-instance v0, Ladu;

    const-string v1, "HASH"

    const/4 v2, 0x1

    const/16 v3, 0x23

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "#"

    const-string v5, ","

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Ladu;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Ladu;->b:Ladu;

    .line 100
    new-instance v0, Ladu;

    const-string v1, "DOT"

    const/4 v2, 0x2

    const/16 v3, 0x2e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "."

    const-string v5, "."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ladu;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Ladu;->c:Ladu;

    .line 103
    new-instance v0, Ladu;

    const-string v1, "FORWARD_SLASH"

    const/4 v2, 0x3

    const/16 v3, 0x2f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "/"

    const-string v5, "/"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ladu;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Ladu;->d:Ladu;

    .line 106
    new-instance v0, Ladu;

    const-string v1, "SEMI_COLON"

    const/4 v2, 0x4

    const/16 v3, 0x3b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, ";"

    const-string v5, ";"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ladu;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Ladu;->e:Ladu;

    .line 109
    new-instance v0, Ladu;

    const-string v1, "QUERY"

    const/4 v2, 0x5

    const/16 v3, 0x3f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "?"

    const-string v5, "&"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ladu;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Ladu;->f:Ladu;

    .line 112
    new-instance v0, Ladu;

    const-string v1, "AMP"

    const/4 v2, 0x6

    const/16 v3, 0x26

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "&"

    const-string v5, "&"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ladu;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Ladu;->g:Ladu;

    .line 115
    new-instance v0, Ladu;

    const-string v1, "SIMPLE"

    const/4 v2, 0x7

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ","

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ladu;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Ladu;->h:Ladu;

    .line 91
    const/16 v0, 0x8

    new-array v0, v0, [Ladu;

    const/4 v1, 0x0

    sget-object v2, Ladu;->a:Ladu;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ladu;->b:Ladu;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ladu;->c:Ladu;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ladu;->d:Ladu;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ladu;->e:Ladu;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ladu;->f:Ladu;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ladu;->g:Ladu;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ladu;->h:Ladu;

    aput-object v2, v0, v1

    sput-object v0, Ladu;->a:[Ladu;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    iput-object p3, p0, Ladu;->a:Ljava/lang/Character;

    .line 136
    invoke-static {p4}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ladu;->a:Ljava/lang/String;

    .line 137
    invoke-static {p5}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ladu;->b:Ljava/lang/String;

    .line 138
    iput-boolean p6, p0, Ladu;->a:Z

    .line 139
    iput-boolean p7, p0, Ladu;->b:Z

    .line 140
    if-eqz p3, :cond_20

    .line 141
    sget-object v0, Ladt;->a:Ljava/util/Map;

    invoke-interface {v0, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ladu;
    .registers 2
    .parameter

    .prologue
    .line 91
    const-class v0, Ladu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ladu;

    return-object v0
.end method

.method public static values()[Ladu;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Ladu;->a:[Ladu;

    invoke-virtual {v0}, [Ladu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ladu;

    return-object v0
.end method


# virtual methods
.method a()I
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Ladu;->a:Ljava/lang/Character;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Ladu;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 184
    iget-boolean v0, p0, Ladu;->b:Z

    if-eqz v0, :cond_9

    .line 186
    invoke-static {p1}, LaeD;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_8
    return-object v0

    .line 188
    :cond_9
    invoke-static {p1}, LaeD;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method a()Z
    .registers 2

    .prologue
    .line 163
    iget-boolean v0, p0, Ladu;->a:Z

    return v0
.end method

.method b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Ladu;->b:Ljava/lang/String;

    return-object v0
.end method
