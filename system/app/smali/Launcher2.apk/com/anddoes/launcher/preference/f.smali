.class public final Lcom/anddoes/launcher/preference/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Z

.field public C:Z

.field public D:I

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/String;

.field public M:Z

.field public N:Ljava/lang/String;

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:I

.field public S:I

.field public T:Ljava/lang/String;

.field public U:Ljava/lang/String;

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:I

.field public Z:Z

.field public a:Lcom/anddoes/launcher/preference/h;

.field public aA:Z

.field public aB:Z

.field public aC:Z

.field public aD:Z

.field public aE:Z

.field public aF:Z

.field public aG:Z

.field public aH:Z

.field public aI:Z

.field public aJ:Z

.field public aK:Z

.field public aL:Ljava/lang/String;

.field public aM:Z

.field public aN:Ljava/lang/String;

.field public aO:Z

.field public aP:Ljava/lang/String;

.field public aQ:Z

.field public aR:Z

.field public aS:Z

.field public aT:Ljava/lang/String;

.field public aU:Z

.field public aV:Z

.field public aW:Ljava/lang/String;

.field public aX:J

.field private aY:Lcom/anddoes/launcher/Launcher;

.field public aa:Z

.field public ab:Z

.field public ac:Ljava/lang/String;

.field public ad:Ljava/lang/String;

.field public ae:Z

.field public af:Z

.field public ag:Z

.field public ah:Ljava/lang/String;

.field public ai:Ljava/lang/String;

.field public aj:Z

.field public ak:Z

.field public al:Ljava/lang/String;

.field public am:Ljava/lang/String;

.field public an:Ljava/lang/String;

.field public ao:Ljava/lang/String;

.field public ap:Ljava/lang/String;

.field public aq:Ljava/lang/String;

.field public ar:Ljava/lang/String;

.field public as:Z

.field public at:Z

.field public au:Z

.field public av:Ljava/lang/String;

.field public aw:Ljava/lang/String;

.field public ax:Ljava/lang/String;

.field public ay:Ljava/lang/String;

.field public az:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Ljava/lang/String;

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:I


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/Launcher;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->k:Z

    .line 26
    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->m:Z

    .line 28
    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->o:Z

    .line 31
    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->r:Z

    .line 32
    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->s:Z

    .line 33
    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->t:Z

    .line 53
    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->M:Z

    .line 55
    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->O:Z

    .line 56
    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->P:Z

    .line 57
    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->Q:Z

    .line 63
    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->V:Z

    .line 64
    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->W:Z

    .line 65
    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->X:Z

    .line 67
    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->Z:Z

    .line 68
    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aa:Z

    .line 69
    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->ab:Z

    .line 73
    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->ae:Z

    .line 74
    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->af:Z

    .line 75
    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->ag:Z

    .line 92
    const-string v0, "apex_theme"

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->av:Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    .line 126
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 129
    new-instance v1, Lcom/anddoes/launcher/preference/h;

    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-direct {v1, v2}, Lcom/anddoes/launcher/preference/h;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    .line 130
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    const-string v2, "desktop_locked"

    invoke-virtual {v1, v2, v0}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->b:Z

    .line 132
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/preference/f;->c:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/preference/f;->d:Ljava/lang/String;

    .line 134
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/anddoes/launcher/preference/f;->e:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/preference/f;->f:Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->l()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->g:Z

    .line 137
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->h:Z

    .line 138
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->n()I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/preference/f;->i:I

    .line 139
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->o()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/preference/f;->j:Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->p()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->k:Z

    .line 141
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/preference/f;->l:Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->r()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->m:Z

    .line 143
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->s()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/preference/f;->n:Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->t()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->o:Z

    .line 145
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->u()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/preference/f;->p:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/preference/f;->q:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->x()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->s:Z

    .line 148
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->w()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->r:Z

    .line 149
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->y()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->t:Z

    .line 151
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/preference/f;->u:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->A()I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/preference/f;->v:I

    .line 153
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->B()I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/preference/f;->w:I

    .line 154
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->C()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/preference/f;->x:Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->D()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/preference/f;->y:Ljava/lang/String;

    .line 156
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->E()I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/preference/f;->z:I

    .line 157
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->F()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/preference/f;->A:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->G()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->B:Z

    .line 159
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->H()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->C:Z

    .line 160
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->J()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/preference/f;->E:Ljava/lang/String;

    .line 161
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->I()I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/preference/f;->D:I

    .line 162
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->K()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/preference/f;->F:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->L()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->G:Z

    .line 164
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->M()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->H:Z

    .line 165
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->N()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->I:Z

    .line 166
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->O()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->J:Z

    .line 167
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->P()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/preference/f;->K:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->Q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/preference/f;->L:Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->R()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->M:Z

    .line 170
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->S()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/preference/f;->N:Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->T()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->O:Z

    .line 172
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->U()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->P:Z

    .line 173
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->V()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->Q:Z

    .line 175
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->W()I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/preference/f;->R:I

    .line 176
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->X()I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/preference/f;->S:I

    .line 177
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/preference/f;->T:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->Z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/preference/f;->U:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->aa()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->V:Z

    .line 180
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->ab()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->W:Z

    .line 181
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->ac()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->X:Z

    .line 182
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->ad()I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/preference/f;->Y:I

    .line 183
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->ae()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->Z:Z

    .line 184
    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->af()Z

    move-result v1

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->aa:Z

    .line 185
    iget-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->aa:Z

    if-nez v1, :cond_346

    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->ag()Z

    move-result v1

    if-nez v1, :cond_346

    :goto_1b4
    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->ab:Z

    .line 187
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->ah()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->ac:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->ai()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->ad:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aj()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->ae:Z

    .line 190
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->ak()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->af:Z

    .line 191
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->al()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->ag:Z

    .line 193
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->am()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->ah:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->an()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->ai:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->ao()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aj:Z

    .line 196
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->ap()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->ak:Z

    .line 197
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->al:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->ar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->am:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->as()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->an:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->at()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->ao:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->au()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->ap:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->av()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->aq:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aw()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->ar:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->ax()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->as:Z

    .line 205
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->ay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->at:Z

    .line 206
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->az()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->au:Z

    .line 208
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    const-string v1, "theme_icon_type"

    const-string v2, "apex_theme"

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->av:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->aw:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->ax:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->ay:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aD()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->az:Z

    .line 214
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aE()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aA:Z

    .line 215
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aF()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aB:Z

    .line 216
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aM()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aI:Z

    .line 217
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aI()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aE:Z

    .line 218
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aJ()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aF:Z

    .line 219
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aG()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aC:Z

    .line 220
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aH()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aD:Z

    .line 221
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aK()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aG:Z

    .line 222
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aL()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aH:Z

    .line 223
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aN()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aJ:Z

    .line 224
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aO()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aK:Z

    .line 225
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->aL:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aQ()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aM:Z

    .line 227
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aR()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->aN:Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aS()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aO:Z

    .line 229
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aT()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->aP:Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aU()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aQ:Z

    .line 231
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aV()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aR:Z

    .line 232
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aW()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aS:Z

    .line 233
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aX()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->aT:Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aZ()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aU:Z

    .line 235
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->ba()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aV:Z

    .line 237
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->bb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->aW:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    const-string v1, "last_check_update"

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/preference/h;->d(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anddoes/launcher/preference/f;->aX:J

    .line 240
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 241
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 242
    return-void

    .line 185
    :cond_346
    const/4 v0, 0x1

    goto/16 :goto_1b4
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 246
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 247
    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 252
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601ce

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 253
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->e()V

    .line 438
    :cond_1a
    :goto_1a
    return-void

    .line 256
    :cond_1b
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601d7

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 257
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v2}, Lcom/anddoes/launcher/preference/h;->k()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anddoes/launcher/preference/f;->f:Ljava/lang/String;

    .line 258
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v2

    iget-object v3, p0, Lcom/anddoes/launcher/preference/f;->f:Ljava/lang/String;

    const-string v4, "NONE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    :goto_42
    iput-boolean v0, v2, Lcom/anddoes/launcher/Workspace;->ag:Z

    goto :goto_1a

    :cond_45
    move v0, v1

    goto :goto_42

    .line 259
    :cond_47
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601d8

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 260
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->g:Z

    .line 261
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->g:Z

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->a(Z)V

    goto :goto_1a

    .line 262
    :cond_6a
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601d9

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 263
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->h:Z

    goto :goto_1a

    .line 264
    :cond_82
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601da

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 265
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->n()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/preference/f;->i:I

    .line 266
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    iget v1, p0, Lcom/anddoes/launcher/preference/f;->i:I

    iput v1, v0, Lcom/anddoes/launcher/Workspace;->aj:I

    goto/16 :goto_1a

    .line 267
    :cond_a5
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601db

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 268
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->j:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/preference/f;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/anddoes/launcher/Workspace;->ak:Ljava/lang/String;

    goto/16 :goto_1a

    .line 270
    :cond_c8
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601dc

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 271
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->p()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->k:Z

    .line 272
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->g()V

    goto/16 :goto_1a

    .line 273
    :cond_e6
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601dd

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_108

    .line 274
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->l:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->m()V

    goto/16 :goto_1a

    .line 276
    :cond_108
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601de

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_135

    .line 277
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601df

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_135

    .line 278
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601e0

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_154

    .line 279
    :cond_135
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->m:Z

    .line 280
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->n:Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->o:Z

    .line 282
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->b()V

    goto/16 :goto_1a

    .line 283
    :cond_154
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601e2

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16d

    .line 284
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->p:Ljava/lang/String;

    goto/16 :goto_1a

    .line 285
    :cond_16d
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601e5

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18b

    .line 286
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->x()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->s:Z

    .line 287
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->i()V

    goto/16 :goto_1a

    .line 288
    :cond_18b
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601e4

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a9

    .line 289
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->w()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->r:Z

    .line 290
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->e()V

    goto/16 :goto_1a

    .line 291
    :cond_1a9
    const-string v2, "drawer_hidden_apps"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c2

    .line 292
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->u:Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->c()V

    goto/16 :goto_1a

    .line 294
    :cond_1c2
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601ee

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e0

    .line 295
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->E()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/preference/f;->z:I

    .line 296
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->h()V

    goto/16 :goto_1a

    .line 297
    :cond_1e0
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601ef

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f9

    .line 298
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->F()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->A:Ljava/lang/String;

    goto/16 :goto_1a

    .line 299
    :cond_1f9
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601f0

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21a

    .line 300
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->G()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->B:Z

    .line 301
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    iget-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->B:Z

    iput-boolean v1, v0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ag:Z

    goto/16 :goto_1a

    .line 302
    :cond_21a
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601f1

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23c

    .line 303
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->H()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->C:Z

    .line 304
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    iget-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->C:Z

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Z)V

    goto/16 :goto_1a

    .line 305
    :cond_23c
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601f2

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25d

    .line 306
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->I()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/preference/f;->D:I

    .line 307
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    iget v1, p0, Lcom/anddoes/launcher/preference/f;->D:I

    iput v1, v0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aj:I

    goto/16 :goto_1a

    .line 308
    :cond_25d
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601f3

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27d

    .line 309
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->J()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->E:Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->k()V

    goto/16 :goto_1a

    .line 311
    :cond_27d
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601f5

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_294

    .line 312
    const-string v2, "drawer_tab_icon_act"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a3

    .line 313
    :cond_294
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->K()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->F:Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->l()V

    goto/16 :goto_1a

    .line 315
    :cond_2a3
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601fc

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2bc

    .line 316
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->P()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->K:Ljava/lang/String;

    goto/16 :goto_1a

    .line 317
    :cond_2bc
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601fd

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d5

    .line 318
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->Q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->L:Ljava/lang/String;

    goto/16 :goto_1a

    .line 319
    :cond_2d5
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601fe

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_302

    .line 320
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f0601ff

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_302

    .line 321
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f060200

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_321

    .line 322
    :cond_302
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->R()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->M:Z

    .line 323
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->S()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->N:Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->T()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->O:Z

    .line 325
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->c()V

    goto/16 :goto_1a

    .line 326
    :cond_321
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f060207

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33a

    .line 327
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aa()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->V:Z

    goto/16 :goto_1a

    .line 328
    :cond_33a
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f060208

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_365

    .line 329
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->ab()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->W:Z

    .line 330
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 331
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->W:Z

    iput-boolean v1, v0, Lcom/anddoes/launcher/Hotseat;->ag:Z

    goto/16 :goto_1a

    .line 333
    :cond_365
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f060209

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_391

    .line 334
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->ac()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->X:Z

    .line 335
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 336
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->X:Z

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Hotseat;->a(Z)V

    goto/16 :goto_1a

    .line 338
    :cond_391
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f06020a

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3bc

    .line 339
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->ad()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/preference/f;->Y:I

    .line 340
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 341
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    iget v1, p0, Lcom/anddoes/launcher/preference/f;->Y:I

    iput v1, v0, Lcom/anddoes/launcher/Hotseat;->aj:I

    goto/16 :goto_1a

    .line 343
    :cond_3bc
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f06020b

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e6

    .line 344
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->ae()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->Z:Z

    .line 345
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 346
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Hotseat;->h()V

    goto/16 :goto_1a

    .line 348
    :cond_3e6
    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f06020d

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40c

    .line 349
    iget-boolean v2, p0, Lcom/anddoes/launcher/preference/f;->aa:Z

    if-nez v2, :cond_40a

    iget-object v2, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v2}, Lcom/anddoes/launcher/preference/h;->ag()Z

    move-result v2

    if-nez v2, :cond_40a

    :goto_401
    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->ab:Z

    .line 350
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->f()V

    goto/16 :goto_1a

    :cond_40a
    move v0, v1

    .line 349
    goto :goto_401

    .line 351
    :cond_40c
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060211

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_425

    .line 352
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aj()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->ae:Z

    goto/16 :goto_1a

    .line 353
    :cond_425
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060215

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_443

    .line 354
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->am()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->ah:Ljava/lang/String;

    .line 355
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->d()V

    goto/16 :goto_1a

    .line 356
    :cond_443
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060216

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45c

    .line 357
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->an()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->ai:Ljava/lang/String;

    goto/16 :goto_1a

    .line 358
    :cond_45c
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060217

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_475

    .line 359
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->ao()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aj:Z

    goto/16 :goto_1a

    .line 360
    :cond_475
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060218

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48e

    .line 361
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->ap()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->ak:Z

    goto/16 :goto_1a

    .line 362
    :cond_48e
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f06021a

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a7

    .line 363
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->al:Ljava/lang/String;

    goto/16 :goto_1a

    .line 364
    :cond_4a7
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f06021b

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c0

    .line 365
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->ar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->am:Ljava/lang/String;

    goto/16 :goto_1a

    .line 366
    :cond_4c0
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f06021c

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d9

    .line 367
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->as()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->an:Ljava/lang/String;

    goto/16 :goto_1a

    .line 368
    :cond_4d9
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f06021d

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f2

    .line 369
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->at()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->ao:Ljava/lang/String;

    goto/16 :goto_1a

    .line 370
    :cond_4f2
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f06021e

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50b

    .line 371
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->au()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->ap:Ljava/lang/String;

    goto/16 :goto_1a

    .line 372
    :cond_50b
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f06021f

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_524

    .line 373
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->av()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->aq:Ljava/lang/String;

    goto/16 :goto_1a

    .line 374
    :cond_524
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060220

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53d

    .line 375
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aw()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->ar:Ljava/lang/String;

    goto/16 :goto_1a

    .line 376
    :cond_53d
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060221

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_556

    .line 377
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->ax()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->as:Z

    goto/16 :goto_1a

    .line 378
    :cond_556
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060222

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56f

    .line 379
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->ay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->at:Z

    goto/16 :goto_1a

    .line 380
    :cond_56f
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060223

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_588

    .line 381
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->az()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->au:Z

    goto/16 :goto_1a

    .line 382
    :cond_588
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060225

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a1

    .line 383
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aD()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->az:Z

    goto/16 :goto_1a

    .line 384
    :cond_5a1
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060226

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5ba

    .line 385
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aE()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aA:Z

    goto/16 :goto_1a

    .line 386
    :cond_5ba
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060227

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d3

    .line 387
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aF()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aB:Z

    goto/16 :goto_1a

    .line 388
    :cond_5d3
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f06022e

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5ec

    .line 389
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aM()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aI:Z

    goto/16 :goto_1a

    .line 390
    :cond_5ec
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f06022a

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_605

    .line 391
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aI()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aE:Z

    goto/16 :goto_1a

    .line 392
    :cond_605
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f06022b

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61e

    .line 393
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aJ()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aF:Z

    goto/16 :goto_1a

    .line 394
    :cond_61e
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060228

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_637

    .line 395
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aG()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aC:Z

    goto/16 :goto_1a

    .line 396
    :cond_637
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060229

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_650

    .line 397
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aH()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aD:Z

    goto/16 :goto_1a

    .line 398
    :cond_650
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f06022c

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_669

    .line 399
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aK()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aG:Z

    goto/16 :goto_1a

    .line 400
    :cond_669
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f06022d

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_682

    .line 401
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aL()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aH:Z

    goto/16 :goto_1a

    .line 402
    :cond_682
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f06022f

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69b

    .line 403
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aN()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aJ:Z

    goto/16 :goto_1a

    .line 404
    :cond_69b
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060231

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c4

    .line 405
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aO()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aK:Z

    .line 406
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->o:Lcom/anddoes/launcher/ig;

    iget-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->aK:Z

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/ig;->a(Z)V

    .line 407
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->o:Lcom/anddoes/launcher/ig;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ig;->a()V

    goto/16 :goto_1a

    .line 408
    :cond_6c4
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060232

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e4

    .line 409
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->aL:Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->o:Lcom/anddoes/launcher/ig;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ig;->a()V

    goto/16 :goto_1a

    .line 411
    :cond_6e4
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060233

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70d

    .line 412
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aQ()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aM:Z

    .line 413
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->o:Lcom/anddoes/launcher/ig;

    iget-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->aM:Z

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/ig;->b(Z)V

    .line 414
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->o:Lcom/anddoes/launcher/ig;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ig;->a()V

    goto/16 :goto_1a

    .line 415
    :cond_70d
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060234

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72d

    .line 416
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aR()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->aN:Ljava/lang/String;

    .line 417
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->o:Lcom/anddoes/launcher/ig;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ig;->a()V

    goto/16 :goto_1a

    .line 418
    :cond_72d
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060235

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_756

    .line 419
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aS()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aO:Z

    .line 420
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->o:Lcom/anddoes/launcher/ig;

    iget-boolean v1, p0, Lcom/anddoes/launcher/preference/f;->aO:Z

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/ig;->c(Z)V

    .line 421
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->o:Lcom/anddoes/launcher/ig;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ig;->a()V

    goto/16 :goto_1a

    .line 422
    :cond_756
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060236

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_776

    .line 423
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aT()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->aP:Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->o:Lcom/anddoes/launcher/ig;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ig;->a()V

    goto/16 :goto_1a

    .line 425
    :cond_776
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060238

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78f

    .line 426
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aU()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aQ:Z

    goto/16 :goto_1a

    .line 427
    :cond_78f
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060239

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a8

    .line 428
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aV()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aR:Z

    goto/16 :goto_1a

    .line 429
    :cond_7a8
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f06023a

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c1

    .line 430
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aW()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aS:Z

    goto/16 :goto_1a

    .line 431
    :cond_7c1
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f06023e

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7da

    .line 432
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aZ()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aU:Z

    goto/16 :goto_1a

    .line 433
    :cond_7da
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f06023f

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f3

    .line 434
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->ba()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/f;->aV:Z

    goto/16 :goto_1a

    .line 435
    :cond_7f3
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->aY:Lcom/anddoes/launcher/Launcher;

    const v1, 0x7f060246

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 436
    iget-object v0, p0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->bb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/f;->aW:Ljava/lang/String;

    goto/16 :goto_1a
.end method
