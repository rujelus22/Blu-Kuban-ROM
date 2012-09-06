.class Lcom/google/googlenav/ui/wizard/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/dialog/ah;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aY;

.field private b:Lcom/google/googlenav/ui/wizard/aY;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/aY;Lcom/google/googlenav/ui/wizard/aY;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ba;->a:Lcom/google/googlenav/ui/wizard/aY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ba;->b:Lcom/google/googlenav/ui/wizard/aY;

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ba;)Lcom/google/googlenav/ui/wizard/aY;
    .registers 2
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->b:Lcom/google/googlenav/ui/wizard/aY;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->b:Lcom/google/googlenav/ui/wizard/aY;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/aY;->a()V

    .line 120
    return-void
.end method

.method public a(JJLcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v6

    new-instance v0, Lcom/google/googlenav/friend/history/a;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/friend/history/a;-><init>(JJLcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-virtual {v6, v0}, Lac/h;->c(Lac/g;)V

    .line 126
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->a:Lcom/google/googlenav/ui/wizard/aY;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aY;->a(Lcom/google/googlenav/ui/wizard/aY;)Lcom/google/googlenav/friend/history/l;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/googlenav/friend/history/l;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 127
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->a:Lcom/google/googlenav/ui/wizard/aY;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aY;->b(Lcom/google/googlenav/ui/wizard/aY;)Lcom/google/googlenav/ui/wizard/aZ;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/aZ;->a()V

    .line 129
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->b:Lcom/google/googlenav/ui/wizard/aY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aY;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/X;

    .line 130
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/X;->b(Z)V

    .line 131
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 157
    :goto_1
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->a:Lcom/google/googlenav/ui/wizard/aY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aY;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->s()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 158
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->a:Lcom/google/googlenav/ui/wizard/aY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aY;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->a()V

    goto :goto_1

    .line 162
    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->a:Lcom/google/googlenav/ui/wizard/aY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aY;->d:Lcom/google/googlenav/ui/wizard/ju;

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

    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/googlenav/bd;->h(Z)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/googlenav/bd;->a(Z)Lcom/google/googlenav/bd;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/bd;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/bd;-><init>(Lcom/google/googlenav/ui/wizard/ba;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/aY;)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Lcom/google/googlenav/bc;)V

    .line 185
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/ui/wizard/bi;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v0

    .line 136
    new-instance v1, Lcom/google/googlenav/ui/wizard/bb;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/googlenav/ui/wizard/bb;-><init>(Lcom/google/googlenav/ui/wizard/ba;LY/c;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/bi;)V

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/bb;->g()V

    .line 149
    return-void
.end method

.method public b()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 189
    new-instance v0, Lcom/google/googlenav/ui/view/android/aK;

    const v2, 0x7f02020f

    const/16 v3, 0xd9

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/aK;-><init>(ZILjava/lang/String;ILag/f;)V

    .line 195
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ba;->a:Lcom/google/googlenav/ui/wizard/aY;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/aY;->d:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/ba;->a:Lcom/google/googlenav/ui/wizard/aY;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/aY;->d:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/ju;->a:Lcom/google/googlenav/J;

    check-cast v3, Lcom/google/googlenav/ui/v;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/ba;->a:Lcom/google/googlenav/ui/wizard/aY;

    invoke-static {v4}, Lcom/google/googlenav/ui/wizard/aY;->a(Lcom/google/googlenav/ui/wizard/aY;)Lcom/google/googlenav/friend/history/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/friend/history/l;->s()Lan/s;

    move-result-object v4

    new-instance v7, Lcom/google/googlenav/ui/wizard/be;

    invoke-direct {v7, p0}, Lcom/google/googlenav/ui/wizard/be;-><init>(Lcom/google/googlenav/ui/wizard/ba;)V

    move-object v5, v0

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/v;Lan/s;Lcom/google/googlenav/ui/view/android/aK;ZLcom/google/googlenav/ui/wizard/ga;)V

    .line 212
    return-void
.end method

.method public b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 9
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->b:Lcom/google/googlenav/ui/wizard/aY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aY;->d:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ju;->a:Lcom/google/googlenav/J;

    check-cast v0, Lcom/google/googlenav/ui/v;

    check-cast v0, Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    .line 237
    new-instance v1, Lcom/google/googlenav/ui/wizard/bg;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/wizard/bg;-><init>(Lcom/google/googlenav/ui/wizard/ba;LaM/am;)V

    .line 252
    new-instance v2, Lcom/google/googlenav/f;

    invoke-static {p1}, Lcom/google/googlenav/ui/wizard/aY;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->a:Lcom/google/googlenav/ui/wizard/aY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aY;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x1bd

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 256
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lac/h;->c(Lac/g;)V

    .line 257
    return-void
.end method

.method public c()V
    .registers 6

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->b:Lcom/google/googlenav/ui/wizard/aY;

    iget-object v1, v0, Lcom/google/googlenav/ui/wizard/aY;->d:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->a:Lcom/google/googlenav/ui/wizard/aY;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aY;->a(Lcom/google/googlenav/ui/wizard/aY;)Lcom/google/googlenav/friend/history/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/l;->n()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->a:Lcom/google/googlenav/ui/wizard/aY;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aY;->a(Lcom/google/googlenav/ui/wizard/aY;)Lcom/google/googlenav/friend/history/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/l;->k()Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/google/googlenav/ui/wizard/iS;->b:Lcom/google/googlenav/ui/wizard/iS;

    :goto_1c
    const/4 v3, 0x0

    new-instance v4, Lcom/google/googlenav/ui/wizard/bf;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/wizard/bf;-><init>(Lcom/google/googlenav/ui/wizard/ba;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/wizard/iS;ZLcom/google/googlenav/ui/wizard/iR;)V

    .line 231
    return-void

    .line 216
    :cond_26
    sget-object v0, Lcom/google/googlenav/ui/wizard/iS;->a:Lcom/google/googlenav/ui/wizard/iS;

    goto :goto_1c
.end method

.method public c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 9
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->b:Lcom/google/googlenav/ui/wizard/aY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aY;->d:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ju;->a:Lcom/google/googlenav/J;

    check-cast v0, Lcom/google/googlenav/ui/v;

    check-cast v0, Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    .line 263
    new-instance v0, Lcom/google/googlenav/ui/wizard/bh;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/bh;-><init>(Lcom/google/googlenav/ui/wizard/ba;)V

    .line 278
    new-instance v2, Lcom/google/googlenav/f;

    invoke-static {p1}, Lcom/google/googlenav/ui/wizard/aY;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->a:Lcom/google/googlenav/ui/wizard/aY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aY;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x1bd

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 282
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lac/h;->c(Lac/g;)V

    .line 283
    return-void
.end method
