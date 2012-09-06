.class public LS/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/g;


# instance fields
.field private final a:[LS/g;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>(LS/g;LS/g;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [LS/g;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0}, LS/a;-><init>([LS/g;)V

    .line 32
    return-void
.end method

.method public constructor <init>([LS/g;)V
    .registers 3
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, LS/a;->b:Ljava/util/Map;

    .line 35
    iput-object p1, p0, LS/a;->a:[LS/g;

    .line 36
    invoke-direct {p0}, LS/a;->b()V

    .line 37
    return-void
.end method

.method private b()V
    .registers 1

    .prologue
    .line 152
    return-void
.end method

.method private f(C)LS/g;
    .registers 5
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, LS/a;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS/g;

    .line 41
    if-nez v0, :cond_2c

    .line 42
    const/4 v1, 0x0

    :goto_10
    iget-object v2, p0, LS/a;->a:[LS/g;

    array-length v2, v2

    if-ge v1, v2, :cond_2c

    .line 43
    iget-object v2, p0, LS/a;->a:[LS/g;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, LS/g;->a(C)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 44
    iget-object v0, p0, LS/a;->a:[LS/g;

    aget-object v0, v0, v1

    .line 45
    iget-object v1, p0, LS/a;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_2c
    return-object v0

    .line 42
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, LS/a;->a:[LS/g;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    .line 158
    iget-object v2, p0, LS/a;->a:[LS/g;

    aget-object v2, v2, v0

    invoke-interface {v2}, LS/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 160
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(C)Z
    .registers 3
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, LS/a;->f(C)LS/g;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public a(CLS/e;II)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, LS/a;->f(C)LS/g;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_b

    .line 62
    invoke-interface {v0, p1, p2, p3, p4}, LS/g;->a(CLS/e;II)Z

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b(C)I
    .registers 4
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, LS/a;->f(C)LS/g;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_b

    .line 72
    invoke-interface {v0, p1}, LS/g;->b(C)I

    move-result v0

    .line 78
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, LS/a;->a:[LS/g;

    iget-object v1, p0, LS/a;->a:[LS/g;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, LS/g;->b(C)I

    move-result v0

    goto :goto_a
.end method

.method public c(C)I
    .registers 4
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p1}, LS/a;->f(C)LS/g;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_b

    .line 85
    invoke-interface {v0, p1}, LS/g;->c(C)I

    move-result v0

    .line 91
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, LS/a;->a:[LS/g;

    iget-object v1, p0, LS/a;->a:[LS/g;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, LS/g;->c(C)I

    move-result v0

    goto :goto_a
.end method

.method public d(C)I
    .registers 4
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, LS/a;->f(C)LS/g;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_b

    .line 98
    invoke-interface {v0, p1}, LS/g;->d(C)I

    move-result v0

    .line 104
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, LS/a;->a:[LS/g;

    iget-object v1, p0, LS/a;->a:[LS/g;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, LS/g;->d(C)I

    move-result v0

    goto :goto_a
.end method

.method public e(C)LS/f;
    .registers 3
    .parameter

    .prologue
    .line 122
    invoke-direct {p0, p1}, LS/a;->f(C)LS/g;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_b

    .line 124
    invoke-interface {v0, p1}, LS/g;->e(C)LS/f;

    move-result-object v0

    .line 126
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public g()Lcom/google/googlenav/common/util/l;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 109
    .line 110
    iget-object v1, p0, LS/a;->a:[LS/g;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v0

    .line 111
    iget-object v2, p0, LS/a;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v1

    .line 112
    new-instance v1, Lcom/google/googlenav/common/util/l;

    const-string v3, "CompositeIconProvider"

    invoke-direct {v1, v3, v2}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    .line 114
    :goto_17
    iget-object v2, p0, LS/a;->a:[LS/g;

    array-length v2, v2

    if-ge v0, v2, :cond_2b

    .line 115
    iget-object v2, p0, LS/a;->a:[LS/g;

    aget-object v2, v2, v0

    invoke-interface {v2}, LS/g;->g()Lcom/google/googlenav/common/util/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/util/l;->a(Lcom/google/googlenav/common/util/l;)Lcom/google/googlenav/common/util/l;

    move-result-object v1

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 117
    :cond_2b
    return-object v1
.end method
