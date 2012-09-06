.class Lcom/google/googlenav/ui/wizard/dT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/eb;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dR;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dR;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/googlenav/a;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 146
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dR;->d(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/bd;

    invoke-direct {v1}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->e(I)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/bd;->h(Z)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/bd;->a(Z)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Lcom/google/googlenav/bc;)V

    .line 154
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dR;->e(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/ui/wizard/dW;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/dW;->a()V

    .line 155
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dT;Lcom/google/googlenav/a;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/dT;->a(Lcom/google/googlenav/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dT;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/dT;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 161
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dR;->d(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/bd;

    invoke-direct {v1}, Lcom/google/googlenav/bd;-><init>()V

    const/16 v2, 0x1bd

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->e(I)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/bd;->h(Z)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/bd;->a(Z)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Lcom/google/googlenav/bc;)V

    .line 169
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dR;->e(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/ui/wizard/dW;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/dW;->a()V

    .line 170
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 118
    const/16 v0, 0x92

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(II)Landroid/widget/Toast;

    .line 119
    new-instance v0, Lcom/google/googlenav/cu;

    invoke-direct {v0}, Lcom/google/googlenav/cu;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dR;->a(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/ui/wizard/dX;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/dX;->l()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 121
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dR;->b(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/cu;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 125
    :goto_23
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dR;->c(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/ui/wizard/H;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/dR;->b(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/h;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/H;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/cu;)V

    .line 126
    return-void

    .line 123
    :cond_33
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dR;->b(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/cu;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_23
.end method

.method public b()V
    .registers 4

    .prologue
    .line 131
    const/16 v0, 0xa6

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(II)Landroid/widget/Toast;

    .line 132
    new-instance v0, Lcom/google/googlenav/cu;

    invoke-direct {v0}, Lcom/google/googlenav/cu;-><init>()V

    .line 133
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dR;->a(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/ui/wizard/dX;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/dX;->i()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 134
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dR;->b(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/cu;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 138
    :goto_23
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dR;->c(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/ui/wizard/H;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/dR;->b(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/h;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/H;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/cu;)V

    .line 139
    return-void

    .line 136
    :cond_33
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dR;->b(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/cu;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_23
.end method

.method public c()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dR;->d(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    const/16 v1, 0xb7

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 176
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dR;->f(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/ui/wizard/aO;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dT;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dR;->b(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/h;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/dU;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/dU;-><init>(Lcom/google/googlenav/ui/wizard/dT;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/aO;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/aV;)V

    .line 204
    return-void
.end method
