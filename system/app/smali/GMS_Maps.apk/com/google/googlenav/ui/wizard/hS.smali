.class Lcom/google/googlenav/ui/wizard/hs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/bH;


# instance fields
.field private final a:Lcom/google/googlenav/ai;

.field private final b:Lcom/google/googlenav/J;

.field private final c:LaM/am;

.field private final d:Lcom/google/googlenav/ui/wizard/hp;

.field private final e:Lcom/google/googlenav/ui/wizard/hw;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ai;Lcom/google/googlenav/J;LaM/am;Lcom/google/googlenav/ui/wizard/hp;Lcom/google/googlenav/ui/wizard/hw;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hs;->a:Lcom/google/googlenav/ai;

    .line 109
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hs;->b:Lcom/google/googlenav/J;

    .line 110
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/hs;->c:LaM/am;

    .line 111
    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/hs;->d:Lcom/google/googlenav/ui/wizard/hp;

    .line 112
    iput-object p5, p0, Lcom/google/googlenav/ui/wizard/hs;->e:Lcom/google/googlenav/ui/wizard/hw;

    .line 113
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 117
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hs;->d:Lcom/google/googlenav/ui/wizard/hp;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hs;->d:Lcom/google/googlenav/ui/wizard/hp;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/hp;->a(Lcom/google/googlenav/ui/wizard/hp;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 118
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hs;->b:Lcom/google/googlenav/J;

    invoke-interface {v0}, Lcom/google/googlenav/J;->a()V

    .line 158
    :goto_12
    return-void

    .line 123
    :cond_13
    if-nez p1, :cond_aa

    .line 124
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hs;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bh()Lcom/google/googlenav/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/cv;->b()Z

    move-result v0

    if-nez v0, :cond_a4

    move v0, v1

    .line 125
    :goto_22
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hs;->a:Lcom/google/googlenav/ai;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hs;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->bD()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ai;->n(I)V

    .line 126
    invoke-static {}, Lcom/google/googlenav/aC;->a()Lcom/google/googlenav/aC;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hs;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v2, v3}, Lcom/google/googlenav/aC;->a(Lcom/google/googlenav/ai;)V

    .line 127
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hs;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->bi()V

    .line 131
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hs;->b:Lcom/google/googlenav/J;

    invoke-interface {v2}, Lcom/google/googlenav/J;->j()LaM/bx;

    move-result-object v2

    invoke-virtual {v2}, LaM/bx;->bH()Lax/m;

    move-result-object v2

    .line 132
    invoke-interface {v2}, Lax/m;->g()Lax/r;

    move-result-object v3

    .line 133
    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/hs;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->B()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lax/r;->a(Ljava/lang/String;)Lax/A;

    move-result-object v3

    .line 134
    if-eqz v3, :cond_6a

    invoke-virtual {v3}, Lax/A;->n()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 135
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hs;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->B()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/hs;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lax/m;->b(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    .line 140
    :cond_6a
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hs;->c:LaM/am;

    invoke-virtual {v2}, LaM/am;->I()LaM/i;

    move-result-object v2

    invoke-virtual {v2, v1}, LaM/i;->f(Z)V

    .line 141
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hs;->e:Lcom/google/googlenav/ui/wizard/hw;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hw;->b()V

    .line 142
    if-eqz v0, :cond_a7

    const/16 v0, 0x40a

    .line 144
    :goto_7c
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hs;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->ap()Lcom/google/googlenav/ax;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ax;->b()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 146
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hs;->e:Lcom/google/googlenav/ui/wizard/hw;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hs;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v2, v3, v1}, Lcom/google/googlenav/ui/wizard/hw;->a(Lcom/google/googlenav/ai;Z)V

    .line 155
    :cond_8f
    :goto_8f
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hs;->b:Lcom/google/googlenav/J;

    invoke-interface {v1}, Lcom/google/googlenav/J;->a()V

    .line 156
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hs;->b:Lcom/google/googlenav/J;

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hs;->e:Lcom/google/googlenav/ui/wizard/hw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hw;->a()V

    goto/16 :goto_12

    .line 124
    :cond_a4
    const/4 v0, 0x0

    goto/16 :goto_22

    .line 142
    :cond_a7
    const/16 v0, 0x417

    goto :goto_7c

    .line 149
    :cond_aa
    const/4 v0, 0x5

    if-ne p1, v0, :cond_b0

    .line 150
    const/16 v0, 0x409

    goto :goto_8f

    .line 152
    :cond_b0
    const/16 v0, 0x408

    goto :goto_8f
.end method
