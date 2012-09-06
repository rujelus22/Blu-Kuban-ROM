.class public Lde/innosystec/unrar/unpack/e;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:Lde/innosystec/unrar/unpack/vm/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lde/innosystec/unrar/unpack/vm/f;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/vm/f;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/e;->f:Lde/innosystec/unrar/unpack/vm/f;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/e;->b:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lde/innosystec/unrar/unpack/e;->b:I

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lde/innosystec/unrar/unpack/e;->d:Z

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/e;->a:I

    return v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lde/innosystec/unrar/unpack/e;->a:I

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/e;->c:I

    return v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lde/innosystec/unrar/unpack/e;->c:I

    return-void
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Lde/innosystec/unrar/unpack/e;->e:I

    return-void
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/e;->d:Z

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/e;->e:I

    return v0
.end method

.method public f()Lde/innosystec/unrar/unpack/vm/f;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/e;->f:Lde/innosystec/unrar/unpack/vm/f;

    return-object v0
.end method
