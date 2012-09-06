.class public Lax/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax/L;
.implements Lax/U;


# instance fields
.field private a:Lax/S;

.field private b:Lax/W;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 4
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lax/S;

    invoke-direct {v0, p0, p1}, Lax/S;-><init>(Lax/U;Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lax/M;->a:Lax/S;

    .line 35
    new-instance v0, Lax/W;

    iget-object v1, p0, Lax/M;->a:Lax/S;

    invoke-direct {v0, v1}, Lax/W;-><init>(Lax/R;)V

    iput-object v0, p0, Lax/M;->b:Lax/W;

    .line 36
    invoke-virtual {p0}, Lax/M;->i()V

    .line 37
    return-void
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILax/I;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lax/M;->b:Lax/W;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lax/M;->a:Lax/S;

    invoke-virtual {v0}, Lax/S;->h()Z

    move-result v0

    if-nez v0, :cond_d

    .line 113
    :cond_c
    :goto_c
    return-void

    .line 102
    :cond_d
    :try_start_d
    invoke-static {p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 103
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 104
    if-eqz v1, :cond_c

    .line 108
    invoke-virtual {p0, v0, p2, p3}, Lax/M;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILax/I;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1b} :catch_1c

    goto :goto_c

    .line 109
    :catch_1c
    move-exception v0

    goto :goto_c
.end method


# virtual methods
.method public D_()V
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lax/M;->a:Lax/S;

    invoke-virtual {v0}, Lax/S;->f()V

    .line 172
    return-void
.end method

.method public E_()V
    .registers 1

    .prologue
    .line 178
    return-void
.end method

.method public F_()V
    .registers 1

    .prologue
    .line 196
    return-void
.end method

.method public L_()V
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lax/M;->a:Lax/S;

    invoke-virtual {v0}, Lax/S;->g()V

    .line 184
    return-void
.end method

.method public M_()V
    .registers 1

    .prologue
    .line 190
    return-void
.end method

.method public a(I)Lax/N;
    .registers 3
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lax/M;->a:Lax/S;

    invoke-virtual {v0, p1}, Lax/S;->d(I)Lax/N;

    move-result-object v0

    return-object v0
.end method

.method public a(ILax/I;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lax/M;->a:Lax/S;

    invoke-virtual {v0, p1}, Lax/S;->e(I)V

    .line 59
    iget-object v0, p0, Lax/M;->a:Lax/S;

    invoke-virtual {v0, p1}, Lax/S;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lax/M;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILax/I;)V

    .line 61
    return-void
.end method

.method public a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;Lax/n;Lax/I;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lax/M;->b:Lax/W;

    invoke-virtual {v0, p1, p2, p3, p4}, Lax/W;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;Lax/n;Lax/I;)V

    .line 148
    return-void
.end method

.method public a(Lax/V;)V
    .registers 3
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lax/M;->b:Lax/W;

    invoke-virtual {v0, p1}, Lax/W;->a(Lax/V;)V

    .line 73
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILax/I;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lax/M;->b:Lax/W;

    invoke-virtual {v0, p1, p2, p3}, Lax/W;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILax/I;)V

    .line 140
    iget-object v0, p0, Lax/M;->a:Lax/S;

    invoke-virtual {v0, p1}, Lax/S;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 141
    return-void
.end method

.method a(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 3
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lax/M;->a:Lax/S;

    invoke-virtual {v0, p1}, Lax/S;->a(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 54
    return-void
.end method

.method public a(ZLax/I;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lax/M;->a:Lax/S;

    invoke-virtual {v0}, Lax/S;->b()V

    .line 86
    if-eqz p1, :cond_c

    .line 87
    iget-object v0, p0, Lax/M;->a:Lax/S;

    invoke-virtual {v0}, Lax/S;->c()V

    .line 89
    :cond_c
    iget-object v0, p0, Lax/M;->a:Lax/S;

    invoke-virtual {v0}, Lax/S;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p2}, Lax/M;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILax/I;)V

    .line 90
    return-void
.end method

.method public b(Lax/V;)V
    .registers 3
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lax/M;->b:Lax/W;

    invoke-virtual {v0, p1}, Lax/W;->b(Lax/V;)V

    .line 78
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lax/M;->b:Lax/W;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lax/M;->b:Lax/W;

    invoke-virtual {v0}, Lax/W;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public g()V
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lax/M;->b:Lax/W;

    invoke-virtual {v0}, Lax/W;->g()V

    .line 154
    return-void
.end method

.method public h()V
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lax/M;->a:Lax/S;

    invoke-virtual {v0}, Lax/S;->d()V

    .line 160
    return-void
.end method

.method public i()V
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lax/M;->a:Lax/S;

    invoke-virtual {v0}, Lax/S;->e()V

    .line 166
    return-void
.end method
