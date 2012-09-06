.class public Lr/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ln/ac;

.field private final b:Ln/Q;

.field private final c:Ln/Q;

.field private final d:Ln/aa;

.field private final e:F

.field private final f:Z

.field private final g:Z

.field private final h:I

.field private final i:Ljava/util/ArrayList;

.field private j:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ln/ac;Ln/Q;Ln/Q;ZZI)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lr/ak;->a:Ln/ac;

    .line 72
    iput-object p2, p0, Lr/ak;->b:Ln/Q;

    .line 73
    iput-object p3, p0, Lr/ak;->c:Ln/Q;

    .line 74
    iput-boolean p4, p0, Lr/ak;->f:Z

    .line 75
    iput-boolean p5, p0, Lr/ak;->g:Z

    .line 76
    iput p6, p0, Lr/ak;->h:I

    .line 79
    invoke-static {p2, p3}, Ln/aa;->a(Ln/Q;Ln/Q;)Ln/aa;

    move-result-object v0

    iget v1, p0, Lr/ak;->h:I

    invoke-virtual {v0, v1}, Ln/aa;->b(I)Ln/aa;

    move-result-object v0

    iput-object v0, p0, Lr/ak;->d:Ln/aa;

    .line 83
    iget-object v0, p0, Lr/ak;->b:Ln/Q;

    iget-object v1, p0, Lr/ak;->c:Ln/Q;

    invoke-static {v0, v1}, Ln/S;->b(Ln/Q;Ln/Q;)F

    move-result v0

    iput v0, p0, Lr/ak;->e:F

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr/ak;->i:Ljava/util/ArrayList;

    .line 85
    return-void
.end method

.method static synthetic a(Lr/ak;)Ln/Q;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lr/ak;->c:Ln/Q;

    return-object v0
.end method

.method static a(Lr/ak;Lr/ak;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x80

    const/16 v5, 0x50

    const/4 v0, 0x0

    .line 127
    iget v1, p0, Lr/ak;->e:F

    iget v2, p1, Lr/ak;->e:F

    invoke-static {v1, v2}, Ln/S;->a(FF)F

    move-result v1

    const/high16 v2, 0x4307

    cmpl-float v1, v1, v2

    if-lez v1, :cond_14

    .line 156
    :cond_13
    :goto_13
    return v0

    .line 132
    :cond_14
    iget-object v1, p0, Lr/ak;->a:Ln/ac;

    invoke-virtual {v1}, Ln/ac;->f()I

    move-result v1

    .line 133
    iget-object v2, p1, Lr/ak;->a:Ln/ac;

    invoke-virtual {v2}, Ln/ac;->f()I

    move-result v2

    .line 134
    iget-object v3, p0, Lr/ak;->a:Ln/ac;

    invoke-virtual {v3}, Ln/ac;->j()Z

    move-result v3

    .line 135
    iget-object v4, p1, Lr/ak;->a:Ln/ac;

    invoke-virtual {v4}, Ln/ac;->j()Z

    move-result v4

    .line 138
    if-lt v1, v6, :cond_32

    if-gt v2, v5, :cond_32

    if-eqz v4, :cond_13

    .line 143
    :cond_32
    if-lt v2, v6, :cond_38

    if-gt v1, v5, :cond_38

    if-eqz v3, :cond_13

    .line 150
    :cond_38
    if-eqz v3, :cond_44

    if-nez v4, :cond_44

    iget-boolean v1, p0, Lr/ak;->g:Z

    if-nez v1, :cond_44

    iget-boolean v1, p0, Lr/ak;->f:Z

    if-eqz v1, :cond_13

    .line 153
    :cond_44
    if-eqz v4, :cond_50

    if-nez v3, :cond_50

    iget-boolean v1, p1, Lr/ak;->g:Z

    if-nez v1, :cond_50

    iget-boolean v1, p1, Lr/ak;->f:Z

    if-eqz v1, :cond_13

    .line 156
    :cond_50
    const/4 v0, 0x1

    goto :goto_13
.end method

.method static synthetic b(Lr/ak;)Ln/Q;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lr/ak;->b:Ln/Q;

    return-object v0
.end method

.method static synthetic c(Lr/ak;)Ln/ac;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lr/ak;->a:Ln/ac;

    return-object v0
.end method

.method static synthetic d(Lr/ak;)F
    .registers 2
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lr/ak;->e:F

    return v0
.end method

.method static synthetic e(Lr/ak;)Ln/aa;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lr/ak;->d:Ln/aa;

    return-object v0
.end method

.method static synthetic f(Lr/ak;)Z
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lr/ak;->g:Z

    return v0
.end method

.method static synthetic g(Lr/ak;)Z
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lr/ak;->f:Z

    return v0
.end method

.method static synthetic h(Lr/ak;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lr/ak;->i:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lr/ak;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lr/ak;->j:Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public b()Ln/ac;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lr/ak;->a:Ln/ac;

    return-object v0
.end method

.method public c()Ln/Q;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lr/ak;->b:Ln/Q;

    return-object v0
.end method

.method public d()Ln/Q;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lr/ak;->c:Ln/Q;

    return-object v0
.end method

.method public e()F
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lr/ak;->e:F

    return v0
.end method

.method public f()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lr/ak;->j:Ljava/lang/Object;

    return-object v0
.end method
