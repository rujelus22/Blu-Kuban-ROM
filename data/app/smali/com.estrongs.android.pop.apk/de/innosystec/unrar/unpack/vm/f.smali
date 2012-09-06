.class public Lde/innosystec/unrar/unpack/vm/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/vm/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/vm/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private f:[I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/f;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/f;->b:Ljava/util/List;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/f;->d:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/f;->e:Ljava/util/Vector;

    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/f;->f:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/f;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/vm/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/f;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lde/innosystec/unrar/unpack/vm/f;->c:I

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/vm/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lde/innosystec/unrar/unpack/vm/f;->b:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lde/innosystec/unrar/unpack/vm/f;->e:Ljava/util/Vector;

    return-void
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/vm/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/f;->a:Ljava/util/List;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lde/innosystec/unrar/unpack/vm/f;->g:I

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/f;->c:I

    return v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lde/innosystec/unrar/unpack/vm/f;->h:I

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/f;->g:I

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/f;->h:I

    return v0
.end method

.method public f()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/f;->d:Ljava/util/Vector;

    return-object v0
.end method

.method public g()[I
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/f;->f:[I

    return-object v0
.end method

.method public h()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/f;->e:Ljava/util/Vector;

    return-object v0
.end method
