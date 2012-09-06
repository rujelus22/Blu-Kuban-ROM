.class public Lde/innosystec/unrar/unpack/vm/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lde/innosystec/unrar/unpack/vm/VMOpType;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/e;->c:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lde/innosystec/unrar/unpack/vm/e;->c:I

    return-void
.end method

.method public a(Lde/innosystec/unrar/unpack/vm/VMOpType;)V
    .registers 2

    iput-object p1, p0, Lde/innosystec/unrar/unpack/vm/e;->a:Lde/innosystec/unrar/unpack/vm/VMOpType;

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/e;->b:I

    return v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lde/innosystec/unrar/unpack/vm/e;->b:I

    return-void
.end method

.method public c()Lde/innosystec/unrar/unpack/vm/VMOpType;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/e;->a:Lde/innosystec/unrar/unpack/vm/VMOpType;

    return-object v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lde/innosystec/unrar/unpack/vm/e;->d:I

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/e;->d:I

    return v0
.end method
