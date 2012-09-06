.class public Laz/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:[Laz/f;

.field private o:Laz/f;

.field private p:[Laz/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Laz/l;->a:Z

    .line 31
    iput-boolean v0, p0, Laz/l;->b:Z

    .line 32
    iput-boolean v0, p0, Laz/l;->c:Z

    .line 33
    iput-boolean v0, p0, Laz/l;->d:Z

    .line 34
    iput-boolean v0, p0, Laz/l;->e:Z

    .line 35
    iput-boolean v0, p0, Laz/l;->f:Z

    .line 36
    iput-boolean v0, p0, Laz/l;->g:Z

    .line 37
    iput-boolean v0, p0, Laz/l;->h:Z

    .line 38
    return-void
.end method


# virtual methods
.method public a(I)Laz/l;
    .registers 3
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Laz/l;->a:Z

    .line 42
    iput p1, p0, Laz/l;->i:I

    .line 43
    return-object p0
.end method

.method public a(Laz/f;)Laz/l;
    .registers 3
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Laz/l;->f:Z

    .line 80
    iput-object p1, p0, Laz/l;->o:Laz/f;

    .line 81
    return-object p0
.end method

.method public a(Ljava/lang/String;)Laz/l;
    .registers 3
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Laz/l;->h:Z

    .line 66
    iput-object p1, p0, Laz/l;->m:Ljava/lang/String;

    .line 67
    return-object p0
.end method

.method public a([Laz/f;)Laz/l;
    .registers 3
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Laz/l;->e:Z

    .line 73
    iput-object p1, p0, Laz/l;->n:[Laz/f;

    .line 74
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Laz/l;->m:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Laz/l;->i:I

    return v0
.end method

.method public b(I)Laz/l;
    .registers 3
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Laz/l;->b:Z

    .line 48
    iput p1, p0, Laz/l;->j:I

    .line 49
    return-object p0
.end method

.method public b([Laz/f;)Laz/l;
    .registers 3
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Laz/l;->g:Z

    .line 87
    iput-object p1, p0, Laz/l;->p:[Laz/f;

    .line 88
    return-object p0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Laz/l;->j:I

    return v0
.end method

.method public c(I)Laz/l;
    .registers 3
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Laz/l;->c:Z

    .line 54
    iput p1, p0, Laz/l;->k:I

    .line 55
    return-object p0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Laz/l;->k:I

    return v0
.end method

.method public d(I)Laz/l;
    .registers 3
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Laz/l;->d:Z

    .line 60
    iput p1, p0, Laz/l;->l:I

    .line 61
    return-object p0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Laz/l;->l:I

    return v0
.end method

.method public f()[Laz/f;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Laz/l;->n:[Laz/f;

    return-object v0
.end method

.method public g()Laz/f;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Laz/l;->o:Laz/f;

    return-object v0
.end method

.method public h()[Laz/f;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Laz/l;->p:[Laz/f;

    return-object v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Laz/l;->h:Z

    return v0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 128
    iget-boolean v0, p0, Laz/l;->a:Z

    return v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 132
    iget-boolean v0, p0, Laz/l;->b:Z

    return v0
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, Laz/l;->c:Z

    return v0
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 140
    iget-boolean v0, p0, Laz/l;->d:Z

    return v0
.end method

.method public n()Z
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Laz/l;->e:Z

    return v0
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 148
    iget-boolean v0, p0, Laz/l;->f:Z

    return v0
.end method

.method public p()Z
    .registers 2

    .prologue
    .line 152
    iget-boolean v0, p0, Laz/l;->g:Z

    return v0
.end method
