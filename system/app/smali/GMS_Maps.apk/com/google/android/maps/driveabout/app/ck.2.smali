.class public Lcom/google/android/maps/driveabout/app/cK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lo/I;

.field protected b:Z

.field protected c:Z

.field protected d:Z

.field protected e:Lcom/google/android/maps/driveabout/vector/D;

.field protected f:I

.field protected g:Z

.field protected final h:Lcom/google/android/maps/driveabout/app/ci;

.field protected i:Landroid/content/Context;

.field private j:Z

.field private final k:Lcom/google/android/maps/driveabout/app/bw;

.field private final l:Lcom/google/android/maps/driveabout/app/cL;

.field private final m:Lcom/google/android/maps/driveabout/app/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/a;Lcom/google/android/maps/driveabout/app/bw;Lcom/google/android/maps/driveabout/app/cL;Lcom/google/android/maps/driveabout/vector/ee;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->a:Lcom/google/android/maps/driveabout/vector/D;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cK;->e:Lcom/google/android/maps/driveabout/vector/D;

    .line 37
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cK;->i:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cK;->m:Lcom/google/android/maps/driveabout/app/a;

    .line 39
    new-instance v0, Lcom/google/android/maps/driveabout/app/ci;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/app/ci;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cK;->h:Lcom/google/android/maps/driveabout/app/ci;

    .line 40
    if-eqz p5, :cond_19

    .line 41
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cK;->h:Lcom/google/android/maps/driveabout/app/ci;

    invoke-virtual {v0, p5}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/vector/ee;)V

    .line 43
    :cond_19
    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/cK;->k:Lcom/google/android/maps/driveabout/app/bw;

    .line 44
    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/cK;->l:Lcom/google/android/maps/driveabout/app/cL;

    .line 45
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cK;->i:Landroid/content/Context;

    const-string v1, "HeadingUpPreferred"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cK;->d:Z

    .line 47
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/app/ci;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cK;->h:Lcom/google/android/maps/driveabout/app/ci;

    return-object v0
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 62
    iput p1, p0, Lcom/google/android/maps/driveabout/app/cK;->f:I

    .line 63
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/D;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cK;->e:Lcom/google/android/maps/driveabout/vector/D;

    .line 103
    return-void
.end method

.method public a(Lo/I;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cK;->a:Lo/I;

    .line 59
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/cK;->b:Z

    .line 95
    return-void
.end method

.method public b()Lo/I;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cK;->a:Lo/I;

    return-object v0
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/cK;->j:Z

    .line 111
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/cK;->f:I

    .line 67
    return-void
.end method

.method public c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/cK;->g:Z

    .line 128
    return-void
.end method

.method public d()I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/google/android/maps/driveabout/app/cK;->f:I

    return v0
.end method

.method public d(Z)V
    .registers 2
    .parameter

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/cK;->c:Z

    .line 145
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cK;->d:Z

    return v0
.end method

.method public f()V
    .registers 4

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cK;->d:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cK;->d:Z

    .line 85
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cK;->i:Landroid/content/Context;

    const-string v1, "HeadingUpPreferred"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/app/cK;->d:Z

    invoke-static {v0, v1, v2}, Lt/q;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 87
    return-void

    .line 84
    :cond_11
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cK;->b:Z

    return v0
.end method

.method public h()Lcom/google/android/maps/driveabout/vector/D;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cK;->e:Lcom/google/android/maps/driveabout/vector/D;

    return-object v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cK;->j:Z

    return v0
.end method

.method public j()Lcom/google/android/maps/driveabout/app/a;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cK;->m:Lcom/google/android/maps/driveabout/app/a;

    return-object v0
.end method

.method public k()Lcom/google/android/maps/driveabout/app/bw;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cK;->k:Lcom/google/android/maps/driveabout/app/bw;

    return-object v0
.end method

.method public l()Lcom/google/android/maps/driveabout/app/cL;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cK;->l:Lcom/google/android/maps/driveabout/app/cL;

    return-object v0
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cK;->g:Z

    return v0
.end method

.method public n()Z
    .registers 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cK;->c:Z

    return v0
.end method
