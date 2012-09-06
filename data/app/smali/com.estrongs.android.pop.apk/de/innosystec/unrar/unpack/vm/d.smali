.class public Lde/innosystec/unrar/unpack/vm/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lde/innosystec/unrar/unpack/vm/VMCommands;

.field private b:Z

.field private c:Lde/innosystec/unrar/unpack/vm/e;

.field private d:Lde/innosystec/unrar/unpack/vm/e;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lde/innosystec/unrar/unpack/vm/e;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/vm/e;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/d;->c:Lde/innosystec/unrar/unpack/vm/e;

    new-instance v0, Lde/innosystec/unrar/unpack/vm/e;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/vm/e;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/d;->d:Lde/innosystec/unrar/unpack/vm/e;

    return-void
.end method


# virtual methods
.method public a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V
    .registers 2

    iput-object p1, p0, Lde/innosystec/unrar/unpack/vm/d;->a:Lde/innosystec/unrar/unpack/vm/VMCommands;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lde/innosystec/unrar/unpack/vm/d;->b:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/vm/d;->b:Z

    return v0
.end method

.method public b()Lde/innosystec/unrar/unpack/vm/e;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/d;->c:Lde/innosystec/unrar/unpack/vm/e;

    return-object v0
.end method

.method public c()Lde/innosystec/unrar/unpack/vm/e;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/d;->d:Lde/innosystec/unrar/unpack/vm/e;

    return-object v0
.end method

.method public d()Lde/innosystec/unrar/unpack/vm/VMCommands;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/d;->a:Lde/innosystec/unrar/unpack/vm/VMCommands;

    return-object v0
.end method
