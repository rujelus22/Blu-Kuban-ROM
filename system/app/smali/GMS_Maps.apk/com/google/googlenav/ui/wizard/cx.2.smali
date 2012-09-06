.class public Lcom/google/googlenav/ui/wizard/cX;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/dc;

.field private final b:Lcom/google/googlenav/ui/wizard/da;

.field private c:Z

.field private d:Lcom/google/googlenav/friend/ah;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/dc;Lcom/google/googlenav/ui/wizard/da;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    .line 76
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cX;->a:Lcom/google/googlenav/ui/wizard/dc;

    .line 77
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cX;->a:Lcom/google/googlenav/ui/wizard/dc;

    new-instance v1, Lcom/google/googlenav/ui/wizard/cZ;

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/wizard/cZ;-><init>(Lcom/google/googlenav/ui/wizard/cX;Lcom/google/googlenav/ui/wizard/cY;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dc;->a(Lcom/google/googlenav/ui/wizard/dh;)V

    .line 78
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cX;->b:Lcom/google/googlenav/ui/wizard/da;

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/cX;Lcom/google/googlenav/friend/ah;)Lcom/google/googlenav/friend/ah;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/cX;)Lcom/google/googlenav/ui/wizard/db;
    .registers 2
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cX;->f()Lcom/google/googlenav/ui/wizard/db;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/cX;)Lcom/google/googlenav/ui/wizard/da;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cX;->b:Lcom/google/googlenav/ui/wizard/da;

    return-object v0
.end method

.method private f()Lcom/google/googlenav/ui/wizard/db;
    .registers 2

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cX;->g()Lcom/google/googlenav/ui/wizard/db;

    move-result-object v0

    .line 143
    return-object v0
.end method

.method private g()Lcom/google/googlenav/ui/wizard/db;
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/ah;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 159
    sget-object v0, Lcom/google/googlenav/ui/wizard/db;->g:Lcom/google/googlenav/ui/wizard/db;

    .line 215
    :goto_a
    return-object v0

    .line 162
    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/ah;->g()Z

    move-result v0

    if-nez v0, :cond_16

    .line 163
    sget-object v0, Lcom/google/googlenav/ui/wizard/db;->e:Lcom/google/googlenav/ui/wizard/db;

    goto :goto_a

    .line 166
    :cond_16
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/ah;->c()Z

    move-result v0

    .line 171
    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/cX;->c:Z

    if-eqz v1, :cond_7e

    .line 174
    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/ah;->d()Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/ah;->b()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 178
    sget-object v0, Lcom/google/googlenav/ui/wizard/db;->g:Lcom/google/googlenav/ui/wizard/db;

    goto :goto_a

    .line 180
    :cond_35
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/ah;->h()Z

    move-result v1

    if-nez v1, :cond_40

    .line 181
    sget-object v0, Lcom/google/googlenav/ui/wizard/db;->c:Lcom/google/googlenav/ui/wizard/db;

    goto :goto_a

    .line 183
    :cond_40
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/ah;->b()Z

    move-result v1

    if-nez v1, :cond_53

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/ah;->j()Z

    move-result v1

    if-nez v1, :cond_53

    .line 184
    sget-object v0, Lcom/google/googlenav/ui/wizard/db;->d:Lcom/google/googlenav/ui/wizard/db;

    goto :goto_a

    .line 186
    :cond_53
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/ah;->i()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 187
    sget-object v0, Lcom/google/googlenav/ui/wizard/db;->b:Lcom/google/googlenav/ui/wizard/db;

    goto :goto_a

    .line 189
    :cond_5e
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/ah;->i()Z

    move-result v1

    if-eqz v1, :cond_68

    if-eqz v0, :cond_78

    :cond_68
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/ah;->j()Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/ah;->b()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 191
    :cond_78
    sget-object v0, Lcom/google/googlenav/ui/wizard/db;->f:Lcom/google/googlenav/ui/wizard/db;

    goto :goto_a

    .line 194
    :cond_7b
    sget-object v0, Lcom/google/googlenav/ui/wizard/db;->g:Lcom/google/googlenav/ui/wizard/db;

    goto :goto_a

    .line 200
    :cond_7e
    if-eqz v0, :cond_8b

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/ah;->d()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 203
    sget-object v0, Lcom/google/googlenav/ui/wizard/db;->g:Lcom/google/googlenav/ui/wizard/db;

    goto :goto_a

    .line 205
    :cond_8b
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/ah;->h()Z

    move-result v1

    if-nez v1, :cond_97

    .line 206
    sget-object v0, Lcom/google/googlenav/ui/wizard/db;->a:Lcom/google/googlenav/ui/wizard/db;

    goto/16 :goto_a

    .line 208
    :cond_97
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/ah;->i()Z

    move-result v1

    if-nez v1, :cond_a3

    .line 209
    sget-object v0, Lcom/google/googlenav/ui/wizard/db;->b:Lcom/google/googlenav/ui/wizard/db;

    goto/16 :goto_a

    .line 211
    :cond_a3
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/ah;->i()Z

    move-result v1

    if-eqz v1, :cond_b1

    if-nez v0, :cond_b1

    .line 212
    sget-object v0, Lcom/google/googlenav/ui/wizard/db;->f:Lcom/google/googlenav/ui/wizard/db;

    goto/16 :goto_a

    .line 215
    :cond_b1
    sget-object v0, Lcom/google/googlenav/ui/wizard/db;->g:Lcom/google/googlenav/ui/wizard/db;

    goto/16 :goto_a
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/ah;->b(Z)V

    .line 101
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cX;->f()Lcom/google/googlenav/ui/wizard/db;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cX;->b:Lcom/google/googlenav/ui/wizard/da;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-interface {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/da;->a(Lcom/google/googlenav/ui/wizard/db;Lcom/google/googlenav/friend/ah;)V

    .line 103
    return-void
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 86
    if-eqz p1, :cond_2

    .line 91
    :cond_2
    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/cX;->c:Z

    .line 92
    new-instance v0, Lcom/google/googlenav/friend/ah;

    invoke-direct {v0}, Lcom/google/googlenav/friend/ah;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    .line 93
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cX;->a:Lcom/google/googlenav/ui/wizard/dc;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dc;->a(Lcom/google/googlenav/friend/ah;)V

    .line 94
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/ah;->d(Z)V

    .line 110
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cX;->f()Lcom/google/googlenav/ui/wizard/db;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cX;->b:Lcom/google/googlenav/ui/wizard/da;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-interface {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/da;->a(Lcom/google/googlenav/ui/wizard/db;Lcom/google/googlenav/friend/ah;)V

    .line 112
    return-void
.end method

.method public c()V
    .registers 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/ah;->c(Z)V

    .line 119
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cX;->f()Lcom/google/googlenav/ui/wizard/db;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cX;->b:Lcom/google/googlenav/ui/wizard/da;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-interface {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/da;->a(Lcom/google/googlenav/ui/wizard/db;Lcom/google/googlenav/friend/ah;)V

    .line 121
    return-void
.end method

.method public d()V
    .registers 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cX;->a:Lcom/google/googlenav/ui/wizard/dc;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dc;->c(Lcom/google/googlenav/friend/ah;)V

    .line 129
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cX;->f()Lcom/google/googlenav/ui/wizard/db;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cX;->b:Lcom/google/googlenav/ui/wizard/da;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-interface {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/da;->a(Lcom/google/googlenav/ui/wizard/db;Lcom/google/googlenav/friend/ah;)V

    .line 131
    return-void
.end method

.method public e()V
    .registers 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cX;->b:Lcom/google/googlenav/ui/wizard/da;

    sget-object v1, Lcom/google/googlenav/ui/wizard/db;->i:Lcom/google/googlenav/ui/wizard/db;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cX;->d:Lcom/google/googlenav/friend/ah;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/da;->a(Lcom/google/googlenav/ui/wizard/db;Lcom/google/googlenav/friend/ah;)V

    .line 138
    return-void
.end method
