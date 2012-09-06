.class public LaI/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/util/Set;

.field private final d:J

.field private final e:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/util/Set;IJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, LaI/s;->a:Ljava/lang/String;

    .line 115
    iput p2, p0, LaI/s;->b:I

    .line 116
    iput-object p3, p0, LaI/s;->c:Ljava/util/Set;

    .line 117
    iput p4, p0, LaI/s;->e:I

    .line 118
    iput-wide p5, p0, LaI/s;->d:J

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/util/Set;IJLaI/t;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct/range {p0 .. p6}, LaI/s;-><init>(Ljava/lang/String;ILjava/util/Set;IJ)V

    return-void
.end method

.method public static a(Ljava/lang/String;)LaI/s;
    .registers 2
    .parameter

    .prologue
    .line 153
    new-instance v0, LaI/u;

    invoke-direct {v0}, LaI/u;-><init>()V

    invoke-virtual {v0, p0}, LaI/u;->a(Ljava/lang/String;)LaI/u;

    move-result-object v0

    invoke-virtual {v0}, LaI/u;->a()LaI/s;

    move-result-object v0

    return-object v0
.end method

.method public static a([Ljava/lang/String;)LaI/s;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 174
    new-instance v0, LaI/u;

    invoke-direct {v0}, LaI/u;-><init>()V

    .line 176
    array-length v1, p0

    if-nez v1, :cond_12

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one argument (= query) is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_12
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, LaI/u;->a(Ljava/lang/String;)LaI/u;

    .line 182
    :try_start_18
    array-length v1, p0

    if-le v1, v2, :cond_25

    .line 183
    const/4 v1, 0x2

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, LaI/u;->a(I)LaI/u;

    .line 185
    :cond_25
    array-length v1, p0

    if-le v1, v3, :cond_32

    .line 186
    const/4 v1, 0x3

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, LaI/u;->b(I)LaI/u;
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_32} :catch_37

    .line 192
    :cond_32
    invoke-virtual {v0}, LaI/u;->a()LaI/s;

    move-result-object v0

    return-object v0

    .line 188
    :catch_37
    move-exception v0

    .line 189
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot parse feature type restrict"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a()Lcom/google/common/collect/ImmutableSet;
    .registers 1

    .prologue
    .line 49
    invoke-static {}, LaI/o;->a()LaI/o;

    move-result-object v0

    .line 50
    if-nez v0, :cond_b

    .line 51
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->f()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 53
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {v0}, LaI/o;->g()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, LaI/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, LaI/s;->b:I

    return v0
.end method

.method public d()Ljava/util/Set;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, LaI/s;->c:Ljava/util/Set;

    return-object v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, LaI/s;->e:I

    return v0
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 142
    iget v0, p0, LaI/s;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public g()J
    .registers 3

    .prologue
    .line 146
    iget-wide v0, p0, LaI/s;->d:J

    return-wide v0
.end method

.method public h()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    iget v1, p0, LaI/s;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    iget v2, p0, LaI/s;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 164
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, LaI/s;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    return-object v3
.end method
