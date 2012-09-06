.class public LKd;
.super Ljava/lang/Object;
.source "KixPageInfo.java"

# interfaces
.implements LKF;


# instance fields
.field private a:F

.field private a:I

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "LKG;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LKd;->a:Ljava/util/Set;

    .line 22
    iput v2, p0, LKd;->a:I

    .line 23
    iput v1, p0, LKd;->b:I

    .line 24
    iput v1, p0, LKd;->c:I

    .line 25
    iput v1, p0, LKd;->d:I

    .line 26
    iput v1, p0, LKd;->e:I

    .line 27
    iput v2, p0, LKd;->f:I

    .line 28
    iput v1, p0, LKd;->g:I

    .line 29
    iput v1, p0, LKd;->h:I

    .line 30
    iput v1, p0, LKd;->i:I

    .line 31
    iput v1, p0, LKd;->j:I

    .line 32
    const/high16 v0, 0x3f80

    iput v0, p0, LKd;->a:F

    .line 33
    iput-boolean v1, p0, LKd;->a:Z

    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 109
    iget v0, p0, LKd;->b:I

    iget v1, p0, LKd;->g:I

    if-ne v0, v1, :cond_c

    iget v0, p0, LKd;->c:I

    iget v1, p0, LKd;->h:I

    if-eq v0, v1, :cond_2c

    .line 110
    :cond_c
    iget v0, p0, LKd;->b:I

    iput v0, p0, LKd;->g:I

    .line 111
    iget v0, p0, LKd;->c:I

    iput v0, p0, LKd;->h:I

    .line 112
    invoke-virtual {p0}, LKd;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LKG;

    .line 113
    invoke-interface {v0}, LKG;->b()V

    goto :goto_1c

    .line 116
    :cond_2c
    return-void
.end method

.method private d()V
    .registers 4

    .prologue
    .line 119
    iget v0, p0, LKd;->a:I

    iget v1, p0, LKd;->f:I

    if-eq v0, v1, :cond_24

    .line 120
    iget v0, p0, LKd;->a:I

    iput v0, p0, LKd;->f:I

    .line 121
    invoke-virtual {p0}, LKd;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LKG;

    .line 122
    iget v2, p0, LKd;->a:I

    invoke-interface {v0, v2}, LKG;->a(I)V

    goto :goto_12

    .line 125
    :cond_24
    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 128
    iget v0, p0, LKd;->i:I

    iget v1, p0, LKd;->d:I

    if-ne v0, v1, :cond_c

    iget v0, p0, LKd;->j:I

    iget v1, p0, LKd;->e:I

    if-eq v0, v1, :cond_2c

    .line 129
    :cond_c
    iget v0, p0, LKd;->d:I

    iput v0, p0, LKd;->i:I

    .line 130
    iget v0, p0, LKd;->e:I

    iput v0, p0, LKd;->j:I

    .line 131
    invoke-virtual {p0}, LKd;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LKG;

    .line 132
    invoke-interface {v0}, LKG;->a()V

    goto :goto_1c

    .line 135
    :cond_2c
    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 157
    iget v0, p0, LKd;->a:F

    return v0
.end method

.method public a()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, LKd;->b:I

    return v0
.end method

.method public a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "LKG;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, LKd;->a:Ljava/util/Set;

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, LKd;->a:Z

    .line 163
    return-void
.end method

.method public a(F)V
    .registers 4
    .parameter

    .prologue
    .line 146
    iget v0, p0, LKd;->a:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    .line 153
    :cond_6
    return-void

    .line 149
    :cond_7
    iput p1, p0, LKd;->a:F

    .line 150
    invoke-virtual {p0}, LKd;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LKG;

    .line 151
    invoke-interface {v0, p1}, LKG;->a(F)V

    goto :goto_11
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 93
    iput p1, p0, LKd;->a:I

    .line 94
    iget-boolean v0, p0, LKd;->a:Z

    if-nez v0, :cond_9

    .line 95
    invoke-direct {p0}, LKd;->d()V

    .line 97
    :cond_9
    return-void
.end method

.method public a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 84
    iput p1, p0, LKd;->b:I

    .line 85
    iput p2, p0, LKd;->c:I

    .line 86
    iget-boolean v0, p0, LKd;->a:Z

    if-nez v0, :cond_b

    .line 87
    invoke-direct {p0}, LKd;->c()V

    .line 89
    :cond_b
    return-void
.end method

.method public a(LKG;)V
    .registers 3
    .parameter

    .prologue
    .line 72
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, LKd;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, LKd;->c:I

    return v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, LKd;->a:Z

    .line 168
    invoke-direct {p0}, LKd;->d()V

    .line 169
    invoke-direct {p0}, LKd;->c()V

    .line 170
    invoke-direct {p0}, LKd;->e()V

    .line 171
    return-void
.end method

.method public b(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 101
    iput p1, p0, LKd;->d:I

    .line 102
    iput p2, p0, LKd;->e:I

    .line 103
    iget-boolean v0, p0, LKd;->a:Z

    if-nez v0, :cond_b

    .line 104
    invoke-direct {p0}, LKd;->e()V

    .line 106
    :cond_b
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, LKd;->a:I

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, LKd;->d:I

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, LKd;->e:I

    return v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x2

    return v0
.end method
