.class public Lcom/google/googlenav/ui/wizard/di;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/J;

.field private b:Z

.field private c:Lcom/google/googlenav/ui/wizard/db;

.field private i:Lcom/google/googlenav/ui/wizard/cX;

.field private j:Lcom/google/googlenav/ui/wizard/dk;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 64
    sget-object v0, Lcom/google/googlenav/ui/wizard/db;->h:Lcom/google/googlenav/ui/wizard/db;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/di;->c:Lcom/google/googlenav/ui/wizard/db;

    .line 76
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/J;

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/ui/wizard/db;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/di;->c:Lcom/google/googlenav/ui/wizard/db;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/di;Lcom/google/googlenav/ui/wizard/db;)Lcom/google/googlenav/ui/wizard/db;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/di;->c:Lcom/google/googlenav/ui/wizard/db;

    return-object p1
.end method

.method private a(ZLcom/google/googlenav/ui/wizard/dk;Lcom/google/googlenav/ui/wizard/cX;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/di;->b:Z

    .line 105
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/di;->j:Lcom/google/googlenav/ui/wizard/dk;

    .line 106
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/di;->i:Lcom/google/googlenav/ui/wizard/cX;

    .line 108
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/di;->j()V

    .line 109
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/ui/wizard/cX;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/di;->i:Lcom/google/googlenav/ui/wizard/cX;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/ui/wizard/dk;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/di;->j:Lcom/google/googlenav/ui/wizard/dk;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/J;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/J;

    return-object v0
.end method

.method private e()Lcom/google/googlenav/ui/wizard/cX;
    .registers 5

    .prologue
    .line 113
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/google/googlenav/friend/reporting/f;

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/u;->a(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/googlenav/friend/reporting/f;-><init>(Ljavax/crypto/SecretKey;)V

    .line 116
    invoke-static {v0, v1}, Lcom/google/googlenav/friend/reporting/s;->a(Landroid/content/Context;Lcom/google/googlenav/friend/reporting/f;)Lcom/google/googlenav/friend/reporting/s;

    move-result-object v0

    .line 119
    new-instance v1, Lcom/google/googlenav/ui/wizard/dc;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/J;

    invoke-interface {v2}, Lcom/google/googlenav/J;->k()Lah/o;

    move-result-object v2

    invoke-virtual {v2}, Lah/o;->b()Lah/s;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/di;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/google/googlenav/ui/wizard/dc;-><init>(Lah/s;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/reporting/s;)V

    .line 122
    new-instance v0, Lcom/google/googlenav/ui/wizard/dl;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/googlenav/ui/wizard/dl;-><init>(Lcom/google/googlenav/ui/wizard/di;Lcom/google/googlenav/ui/wizard/dj;)V

    .line 123
    new-instance v2, Lcom/google/googlenav/ui/wizard/cX;

    invoke-direct {v2, v1, v0}, Lcom/google/googlenav/ui/wizard/cX;-><init>(Lcom/google/googlenav/ui/wizard/dc;Lcom/google/googlenav/ui/wizard/da;)V

    return-object v2
.end method


# virtual methods
.method public T_()V
    .registers 4

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/di;->b:Z

    .line 157
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/di;->j:Lcom/google/googlenav/ui/wizard/dk;

    .line 158
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/di;->i:Lcom/google/googlenav/ui/wizard/cX;

    .line 159
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/di;->a()V

    .line 161
    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/di;->b:Z

    .line 162
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/di;->j:Lcom/google/googlenav/ui/wizard/dk;

    .line 163
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/di;->i:Lcom/google/googlenav/ui/wizard/cX;

    .line 164
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/di;->j()V

    .line 165
    return-void
.end method

.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 169
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    .line 170
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/di;->h()V

    .line 171
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/di;->a()V

    .line 173
    :cond_e
    const/4 v0, 0x3

    return v0
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 178
    const/4 v0, 0x3

    return v0
.end method

.method protected a(ZLcom/google/googlenav/ui/wizard/dk;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/di;->e()Lcom/google/googlenav/ui/wizard/cX;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/wizard/di;->a(ZLcom/google/googlenav/ui/wizard/dk;Lcom/google/googlenav/ui/wizard/cX;)V

    .line 87
    return-void
.end method

.method protected b()V
    .registers 8

    .prologue
    .line 129
    sget-object v0, Lcom/google/googlenav/ui/wizard/db;->h:Lcom/google/googlenav/ui/wizard/db;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/di;->c:Lcom/google/googlenav/ui/wizard/db;

    .line 130
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/di;->i:Lcom/google/googlenav/ui/wizard/cX;

    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/di;->b:Z

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/cX;->a(Z)V

    .line 131
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/di;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x1bd

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 134
    return-void
.end method

.method protected c()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 146
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/di;->i:Lcom/google/googlenav/ui/wizard/cX;

    .line 147
    sget-object v0, Lcom/google/googlenav/ui/wizard/db;->h:Lcom/google/googlenav/ui/wizard/db;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/di;->c:Lcom/google/googlenav/ui/wizard/db;

    .line 148
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/di;->j:Lcom/google/googlenav/ui/wizard/dk;

    .line 151
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 152
    return-void
.end method

.method public h()V
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/di;->i:Lcom/google/googlenav/ui/wizard/cX;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cX;->e()V

    .line 184
    return-void
.end method
