.class public Lcom/google/googlenav/ui/wizard/ce;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:[Lcom/google/googlenav/aw;

.field private c:I

.field private i:Z


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 65
    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x9e

    .line 129
    if-eqz p1, :cond_a

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-nez v0, :cond_e

    .line 130
    :cond_a
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ce;->a()V

    .line 140
    :goto_d
    return-void

    .line 135
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/google/googlenav/au;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/au;

    move-result-object v0

    .line 138
    invoke-static {v0}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/au;)[Lcom/google/googlenav/aw;

    move-result-object v0

    .line 139
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/ce;->a([Lcom/google/googlenav/aw;)V

    goto :goto_d
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ce;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/ce;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-void
.end method

.method private a([Lcom/google/googlenav/aw;)V
    .registers 9
    .parameter

    .prologue
    .line 143
    new-instance v0, Lcom/google/googlenav/ui/wizard/ch;

    iget v2, p0, Lcom/google/googlenav/ui/wizard/ce;->c:I

    iget-boolean v3, p0, Lcom/google/googlenav/ui/wizard/ce;->i:Z

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ce;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/ce;->d:Lcom/google/googlenav/ui/wizard/ju;

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ch;-><init>([Lcom/google/googlenav/aw;IZLcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ui/g;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 145
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 146
    return-void
.end method

.method private e()V
    .registers 8

    .prologue
    .line 93
    new-instance v2, Lcom/google/googlenav/ui/wizard/cf;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/cf;-><init>(Lcom/google/googlenav/ui/wizard/ce;)V

    .line 100
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x1bd

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 103
    new-instance v0, Lcom/google/googlenav/ui/wizard/cg;

    invoke-direct {v0, p0, v2}, Lcom/google/googlenav/ui/wizard/cg;-><init>(Lcom/google/googlenav/ui/wizard/ce;Lac/c;)V

    .line 117
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ce;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/googlenav/f;->a(Lcom/google/googlenav/g;Ljava/lang/String;)Lcom/google/googlenav/f;

    move-result-object v0

    .line 120
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 121
    return-void
.end method


# virtual methods
.method public T_()V
    .registers 5

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->a:Ljava/lang/String;

    .line 287
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ce;->b:[Lcom/google/googlenav/aw;

    .line 288
    iget v2, p0, Lcom/google/googlenav/ui/wizard/ce;->c:I

    .line 289
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ce;->a()V

    .line 290
    iget-boolean v3, p0, Lcom/google/googlenav/ui/wizard/ce;->i:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/ce;->a(Ljava/lang/String;[Lcom/google/googlenav/aw;IZ)V

    .line 291
    return-void
.end method

.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 304
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    .line 305
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ce;->h()V

    .line 306
    iget v0, p0, Lcom/google/googlenav/ui/wizard/ce;->g:I

    .line 308
    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/ce;->g:I

    goto :goto_d
.end method

.method public a(Ljava/lang/String;[Lcom/google/googlenav/aw;IZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ce;->a:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ce;->b:[Lcom/google/googlenav/aw;

    .line 76
    iput p3, p0, Lcom/google/googlenav/ui/wizard/ce;->c:I

    .line 77
    iput-boolean p4, p0, Lcom/google/googlenav/ui/wizard/ce;->i:Z

    .line 78
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ce;->j()V

    .line 79
    return-void
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/ce;->g:I

    .line 85
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->b:[Lcom/google/googlenav/aw;

    if-eqz v0, :cond_d

    .line 86
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->b:[Lcom/google/googlenav/aw;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/ce;->a([Lcom/google/googlenav/aw;)V

    .line 90
    :goto_c
    return-void

    .line 88
    :cond_d
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ce;->e()V

    goto :goto_c
.end method

.method protected c()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 278
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 279
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->a:Ljava/lang/String;

    .line 280
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->b:[Lcom/google/googlenav/aw;

    .line 281
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 282
    return-void
.end method

.method public h()V
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->h:Lcom/google/googlenav/ui/view/android/bb;

    instance-of v0, v0, Lcom/google/googlenav/ui/wizard/ch;

    if-eqz v0, :cond_d

    .line 296
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/wizard/ch;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ch;->i()V

    .line 299
    :cond_d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ce;->a()V

    .line 300
    return-void
.end method
