.class public Lde/innosystec/unrar/unpack/vm/g;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;


# direct methods
.method public constructor <init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lde/innosystec/unrar/unpack/vm/g;->a:I

    iput p2, p0, Lde/innosystec/unrar/unpack/vm/g;->b:I

    iput-object p3, p0, Lde/innosystec/unrar/unpack/vm/g;->c:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/g;->b:I

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/g;->a:I

    return v0
.end method

.method public c()Lde/innosystec/unrar/unpack/vm/VMStandardFilters;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/g;->c:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    return-object v0
.end method
