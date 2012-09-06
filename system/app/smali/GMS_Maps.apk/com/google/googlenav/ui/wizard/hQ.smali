.class Lcom/google/googlenav/ui/wizard/hq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaF/b;


# instance fields
.field private final a:Lcom/google/googlenav/J;

.field private final b:LaM/am;

.field private final c:Lcom/google/googlenav/ai;

.field private final d:Lcom/google/googlenav/ui/wizard/hw;

.field private final e:Lcom/google/googlenav/ui/wizard/hp;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/J;LaM/am;Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/wizard/hp;Lcom/google/googlenav/ui/wizard/hw;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hq;->a:Lcom/google/googlenav/J;

    .line 175
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hq;->b:LaM/am;

    .line 176
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/hq;->c:Lcom/google/googlenav/ai;

    .line 177
    iput-object p5, p0, Lcom/google/googlenav/ui/wizard/hq;->d:Lcom/google/googlenav/ui/wizard/hw;

    .line 178
    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/hq;->e:Lcom/google/googlenav/ui/wizard/hp;

    .line 179
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hq;->a:Lcom/google/googlenav/J;

    invoke-interface {v0}, Lcom/google/googlenav/J;->a()V

    .line 210
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hq;->a:Lcom/google/googlenav/J;

    const/16 v1, 0x3f0

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hq;->a:Lcom/google/googlenav/J;

    invoke-interface {v0}, Lcom/google/googlenav/J;->a()V

    .line 185
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hq;->e:Lcom/google/googlenav/ui/wizard/hp;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/hp;->a(Lcom/google/googlenav/ui/wizard/hp;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 205
    :goto_d
    return-void

    .line 190
    :cond_e
    if-eqz p1, :cond_3e

    .line 194
    invoke-static {}, Lcom/google/googlenav/aC;->a()Lcom/google/googlenav/aC;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hq;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aC;->b(Lcom/google/googlenav/ai;)V

    .line 195
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hq;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bi()V

    .line 198
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hq;->b:LaM/am;

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaM/i;->f(Z)V

    .line 199
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hq;->d:Lcom/google/googlenav/ui/wizard/hw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hw;->b()V

    .line 200
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hq;->a:Lcom/google/googlenav/J;

    const/16 v1, 0x3f1

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hq;->d:Lcom/google/googlenav/ui/wizard/hw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hw;->a()V

    goto :goto_d

    .line 203
    :cond_3e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hq;->a:Lcom/google/googlenav/J;

    const/16 v1, 0x3f0

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    goto :goto_d
.end method
