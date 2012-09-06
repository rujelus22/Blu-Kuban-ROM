.class public Lcom/google/googlenav/ui/view/android/bJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field final A:Z

.field final B:Lcom/google/googlenav/ai;

.field C:Z

.field final D:Z

.field final E:Lcom/google/googlenav/ui/g;

.field final F:I

.field final G:Z

.field final H:I

.field final I:Z

.field J:Z

.field final K:Ljava/lang/CharSequence;

.field final L:Ljava/lang/CharSequence;

.field final M:I

.field final N:Z

.field final O:Ljava/lang/CharSequence;

.field final P:Ljava/lang/String;

.field final Q:I

.field public final R:I

.field private final S:Lcom/google/googlenav/ui/bw;

.field final b:Ljava/lang/CharSequence;

.field final c:[Ljava/lang/CharSequence;

.field final d:[Ljava/lang/CharSequence;

.field final e:[Ljava/lang/CharSequence;

.field final f:Ljava/lang/CharSequence;

.field final g:Z

.field final h:Ljava/lang/CharSequence;

.field final i:Ljava/lang/String;

.field final j:Ljava/lang/CharSequence;

.field final k:Ljava/lang/CharSequence;

.field final l:Ljava/lang/CharSequence;

.field final m:Ljava/lang/CharSequence;

.field final n:Ljava/lang/CharSequence;

.field final o:Ljava/lang/CharSequence;

.field final p:Ljava/lang/CharSequence;

.field final q:Ljava/lang/String;

.field final r:Ljava/lang/CharSequence;

.field final s:Ljava/lang/CharSequence;

.field final t:Ljava/lang/CharSequence;

.field final u:Lcom/google/googlenav/ui/bx;

.field final v:Lcom/google/googlenav/ui/bx;

.field final w:LS/f;

.field final x:Lcom/google/googlenav/ui/view/a;

.field final y:LT/f;

.field final z:Lat/B;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/view/android/bJ;->a:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/view/android/bK;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->a(Lcom/google/googlenav/ui/view/android/bK;)Lcom/google/googlenav/ui/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->E:Lcom/google/googlenav/ui/g;

    .line 153
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->b(Lcom/google/googlenav/ui/view/android/bK;)Lcom/google/googlenav/ui/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->S:Lcom/google/googlenav/ui/bw;

    .line 155
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->c(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->b:Ljava/lang/CharSequence;

    .line 156
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->d(Lcom/google/googlenav/ui/view/android/bK;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->c:[Ljava/lang/CharSequence;

    .line 157
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->e(Lcom/google/googlenav/ui/view/android/bK;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->d:[Ljava/lang/CharSequence;

    .line 158
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->f(Lcom/google/googlenav/ui/view/android/bK;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->e:[Ljava/lang/CharSequence;

    .line 159
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->g(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->f:Ljava/lang/CharSequence;

    .line 160
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->h(Lcom/google/googlenav/ui/view/android/bK;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->g:Z

    .line 161
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->i(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->h:Ljava/lang/CharSequence;

    .line 162
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->j(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->i:Ljava/lang/String;

    .line 163
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->k(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->j:Ljava/lang/CharSequence;

    .line 164
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->l(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->k:Ljava/lang/CharSequence;

    .line 165
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->m(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->l:Ljava/lang/CharSequence;

    .line 166
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bJ;->b(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->m:Ljava/lang/CharSequence;

    .line 167
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->n(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->n:Ljava/lang/CharSequence;

    .line 168
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->o(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->o:Ljava/lang/CharSequence;

    .line 169
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->p(Lcom/google/googlenav/ui/view/android/bK;)Lcom/google/googlenav/ac;

    move-result-object v0

    invoke-static {v0}, LaM/aR;->a(Lcom/google/googlenav/ac;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->p:Ljava/lang/CharSequence;

    .line 170
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->q(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->q:Ljava/lang/String;

    .line 171
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->q(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/googlenav/ui/aV;->aW:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v3}, LaM/aR;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->r:Ljava/lang/CharSequence;

    .line 173
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bJ;->a(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->s:Ljava/lang/CharSequence;

    .line 174
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bJ;->c(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->t:Ljava/lang/CharSequence;

    .line 175
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bJ;->d(Lcom/google/googlenav/ui/view/android/bK;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->u:Lcom/google/googlenav/ui/bx;

    .line 176
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->r(Lcom/google/googlenav/ui/view/android/bK;)Lcom/google/googlenav/ap;

    move-result-object v0

    invoke-static {v0}, LaM/m;->a(Lcom/google/googlenav/ap;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->v:Lcom/google/googlenav/ui/bx;

    .line 177
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->s(Lcom/google/googlenav/ui/view/android/bK;)LS/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->w:LS/f;

    .line 178
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->t(Lcom/google/googlenav/ui/view/android/bK;)Lcom/google/googlenav/ui/view/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->x:Lcom/google/googlenav/ui/view/a;

    .line 179
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->u(Lcom/google/googlenav/ui/view/android/bK;)LT/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->y:LT/f;

    .line 180
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->v(Lcom/google/googlenav/ui/view/android/bK;)Lat/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->z:Lat/B;

    .line 181
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->w(Lcom/google/googlenav/ui/view/android/bK;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->A:Z

    .line 182
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->x(Lcom/google/googlenav/ui/view/android/bK;)Lcom/google/googlenav/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->B:Lcom/google/googlenav/ai;

    .line 183
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->y(Lcom/google/googlenav/ui/view/android/bK;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->C:Z

    .line 184
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->z(Lcom/google/googlenav/ui/view/android/bK;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->D:Z

    .line 185
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->A(Lcom/google/googlenav/ui/view/android/bK;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->Q:I

    .line 186
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->B(Lcom/google/googlenav/ui/view/android/bK;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->R:I

    .line 187
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->C(Lcom/google/googlenav/ui/view/android/bK;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->F:I

    .line 188
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->D(Lcom/google/googlenav/ui/view/android/bK;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->G:Z

    .line 189
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->E(Lcom/google/googlenav/ui/view/android/bK;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->H:I

    .line 190
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->F(Lcom/google/googlenav/ui/view/android/bK;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->I:Z

    .line 191
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->G(Lcom/google/googlenav/ui/view/android/bK;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->J:Z

    .line 193
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->H(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_144

    const/4 v0, 0x1

    :goto_fe
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/bJ;->a(Lcom/google/googlenav/ui/view/android/bK;Z)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->K:Ljava/lang/CharSequence;

    .line 194
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->J:Z

    if-eqz v0, :cond_146

    move-object v0, v2

    :goto_109
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->L:Ljava/lang/CharSequence;

    .line 196
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->H(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bH;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->M:I

    .line 197
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->I(Lcom/google/googlenav/ui/view/android/bK;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->N:Z

    .line 199
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->J(Lcom/google/googlenav/ui/view/android/bK;)Lcom/google/googlenav/ar;

    move-result-object v0

    if-eqz v0, :cond_14f

    .line 200
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 201
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->J(Lcom/google/googlenav/ui/view/android/bK;)Lcom/google/googlenav/ar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ar;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/aV;->aV:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 204
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->O:Ljava/lang/CharSequence;

    .line 205
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->J(Lcom/google/googlenav/ui/view/android/bK;)Lcom/google/googlenav/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ar;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->P:Ljava/lang/String;

    .line 210
    :goto_143
    return-void

    :cond_144
    move v0, v1

    .line 193
    goto :goto_fe

    .line 194
    :cond_146
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->H(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bH;->a(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_109

    .line 207
    :cond_14f
    iput-object v2, p0, Lcom/google/googlenav/ui/view/android/bJ;->O:Ljava/lang/CharSequence;

    .line 208
    iput-object v2, p0, Lcom/google/googlenav/ui/view/android/bJ;->P:Ljava/lang/String;

    goto :goto_143
.end method

.method private a(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/CharSequence;
    .registers 4
    .parameter

    .prologue
    .line 213
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->z(Lcom/google/googlenav/ui/view/android/bK;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 214
    const/16 v0, 0x3bc

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->br:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_19

    .line 218
    :goto_18
    return-object v0

    .line 216
    :cond_19
    const/4 v0, 0x0

    goto :goto_18

    .line 218
    :cond_1b
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->K(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_18
.end method

.method private a(Lcom/google/googlenav/ui/view/android/bK;Z)Ljava/lang/CharSequence;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 223
    if-nez p2, :cond_f

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->J:Z

    if-nez v0, :cond_f

    .line 224
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->L(Lcom/google/googlenav/ui/view/android/bK;)I

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bH;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 231
    :goto_e
    return-object v0

    .line 227
    :cond_f
    const/4 v0, 0x0

    .line 228
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->M(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 229
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->M(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    :cond_1e
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->F(Lcom/google/googlenav/ui/view/android/bK;)Z

    move-result v1

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->L(Lcom/google/googlenav/ui/view/android/bK;)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/bH;->a(ZILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_e
.end method

.method private a([Ljava/lang/CharSequence;[Landroid/widget/TextView;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 641
    .line 642
    if-eqz p1, :cond_2f

    .line 643
    array-length v4, p1

    move v3, v2

    move v0, v2

    :goto_6
    if-ge v3, v4, :cond_1e

    aget-object v5, p1, v3

    .line 644
    if-nez v5, :cond_10

    .line 643
    :goto_c
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_6

    .line 647
    :cond_10
    add-int/lit8 v1, v0, 0x1

    aget-object v0, p2, v0

    .line 648
    if-eqz v0, :cond_1c

    .line 649
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1c
    move v0, v1

    goto :goto_c

    .line 654
    :cond_1e
    :goto_1e
    array-length v1, p2

    if-ge v0, v1, :cond_2e

    .line 655
    add-int/lit8 v1, v0, 0x1

    aget-object v0, p2, v0

    .line 656
    if-eqz v0, :cond_2c

    .line 657
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2c
    move v0, v1

    .line 659
    goto :goto_1e

    .line 660
    :cond_2e
    return-void

    :cond_2f
    move v0, v2

    goto :goto_1e
.end method

.method private b(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/CharSequence;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 236
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->z(Lcom/google/googlenav/ui/view/android/bK;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 237
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 238
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->N(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 239
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->N(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 241
    :cond_19
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->M(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 242
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2a

    .line 243
    const-string v2, " "

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 245
    :cond_2a
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->M(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 247
    :cond_31
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_38

    .line 251
    :goto_37
    return-object v0

    :cond_38
    move-object v0, v1

    .line 247
    goto :goto_37

    .line 249
    :cond_3a
    const/16 v0, 0x3bc

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/aV;->br:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4d

    move-object v1, v0

    :cond_4d
    move-object v0, v1

    goto :goto_37
.end method

.method private c(Lcom/google/googlenav/ui/view/android/bK;)Ljava/lang/CharSequence;
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 256
    sget-object v1, Lcom/google/googlenav/ui/aV;->bw:Lcom/google/googlenav/ui/aV;

    .line 257
    sget-object v3, Lcom/google/googlenav/ui/aV;->bv:Lcom/google/googlenav/ui/aV;

    .line 259
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->O(Lcom/google/googlenav/ui/view/android/bK;)Lcom/google/googlenav/aq;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 260
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->O(Lcom/google/googlenav/ui/view/android/bK;)Lcom/google/googlenav/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aq;->a()[Lcom/google/googlenav/an;

    move-result-object v4

    .line 261
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 262
    const/4 v0, 0x0

    :goto_19
    array-length v6, v4

    if-ge v0, v6, :cond_42

    .line 263
    aget-object v6, v4, v0

    iget-object v6, v6, Lcom/google/googlenav/an;->b:Ljava/lang/String;

    invoke-static {v5, v6, v3, v1}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)V

    .line 265
    aget-object v6, v4, v0

    iget-object v6, v6, Lcom/google/googlenav/an;->a:Ljava/lang/String;

    invoke-static {v5, v6, v3, v1}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)V

    .line 267
    aget-object v6, v4, v0

    iget-object v6, v6, Lcom/google/googlenav/an;->c:Ljava/lang/String;

    invoke-static {v5, v6, v3, v1}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)V

    .line 269
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_3f

    .line 270
    const-string v6, " "

    invoke-static {v6, v3}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 262
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 274
    :cond_42
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 275
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    .line 276
    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    goto :goto_4b

    .line 278
    :cond_5b
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_64

    move-object v0, v1

    :goto_62
    move-object v2, v0

    .line 295
    :cond_63
    :goto_63
    return-object v2

    :cond_64
    move-object v0, v2

    .line 278
    goto :goto_62

    .line 279
    :cond_66
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->P(Lcom/google/googlenav/ui/view/android/bK;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 284
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->P(Lcom/google/googlenav/ui/view/android/bK;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_74
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/al;

    .line 285
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 286
    invoke-static {v0, v4, v3, v3}, LaM/aR;->a(Lcom/google/googlenav/al;Ljava/util/Vector;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 287
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 288
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_94
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    .line 289
    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    goto :goto_94

    .line 291
    :cond_a4
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_63

    move-object v2, v1

    goto :goto_63
.end method

.method private d(Lcom/google/googlenav/ui/view/android/bK;)Lcom/google/googlenav/ui/bx;
    .registers 5
    .parameter

    .prologue
    .line 299
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->O(Lcom/google/googlenav/ui/view/android/bK;)Lcom/google/googlenav/aq;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->O(Lcom/google/googlenav/ui/view/android/bK;)Lcom/google/googlenav/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aq;->c()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 300
    new-instance v0, Lcom/google/googlenav/ui/bx;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bK;->O(Lcom/google/googlenav/ui/view/android/bK;)Lcom/google/googlenav/aq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aq;->b()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/googlenav/ui/bn;->bx:I

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/bx;-><init>(Ljava/lang/String;I)V

    .line 303
    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 3
    .parameter

    .prologue
    .line 556
    new-instance v0, Lcom/google/googlenav/ui/view/android/bM;

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/android/bM;-><init>()V

    .line 558
    invoke-virtual {p0, v0, p1}, Lcom/google/googlenav/ui/view/android/bJ;->a(Lcom/google/googlenav/ui/view/android/bM;Landroid/view/View;)V

    .line 560
    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 664
    check-cast p2, Lcom/google/googlenav/ui/view/android/bM;

    .line 665
    invoke-virtual {p2}, Lcom/google/googlenav/ui/view/android/bM;->a()V

    .line 668
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->C:Lcom/google/googlenav/ui/view/android/bN;

    iget v3, v3, Lcom/google/googlenav/ui/view/android/bN;->a:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1d

    .line 669
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->C:Lcom/google/googlenav/ui/view/android/bN;

    iget v4, p0, Lcom/google/googlenav/ui/view/android/bJ;->Q:I

    iput v4, v3, Lcom/google/googlenav/ui/view/android/bN;->b:I

    .line 670
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->a:Landroid/view/View;

    iget-object v4, p2, Lcom/google/googlenav/ui/view/android/bM;->C:Lcom/google/googlenav/ui/view/android/bN;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 680
    :cond_1d
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bJ;->b:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 686
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->c:Landroid/widget/CheckBox;

    if-eqz v3, :cond_4f

    .line 687
    iget-boolean v3, p0, Lcom/google/googlenav/ui/view/android/bJ;->A:Z

    if-eqz v3, :cond_193

    .line 688
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->c:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 689
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->c:Landroid/widget/CheckBox;

    iget-boolean v4, p0, Lcom/google/googlenav/ui/view/android/bJ;->C:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 692
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->D:Lcom/google/googlenav/ui/view/android/bN;

    iget v4, p0, Lcom/google/googlenav/ui/view/android/bJ;->Q:I

    iput v4, v3, Lcom/google/googlenav/ui/view/android/bN;->b:I

    .line 693
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->D:Lcom/google/googlenav/ui/view/android/bN;

    iput-object p0, v3, Lcom/google/googlenav/ui/view/android/bN;->d:Lcom/google/googlenav/ui/view/android/bJ;

    .line 694
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->D:Lcom/google/googlenav/ui/view/android/bN;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bJ;->B:Lcom/google/googlenav/ai;

    iput-object v4, v3, Lcom/google/googlenav/ui/view/android/bN;->c:Lcom/google/googlenav/ai;

    .line 695
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->c:Landroid/widget/CheckBox;

    iget-object v4, p2, Lcom/google/googlenav/ui/view/android/bM;->D:Lcom/google/googlenav/ui/view/android/bN;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 702
    :cond_4f
    :goto_4f
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bJ;->c:[Ljava/lang/CharSequence;

    iget-object v4, p2, Lcom/google/googlenav/ui/view/android/bM;->d:[Landroid/widget/TextView;

    invoke-direct {p0, v3, v4}, Lcom/google/googlenav/ui/view/android/bJ;->a([Ljava/lang/CharSequence;[Landroid/widget/TextView;)V

    .line 703
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bJ;->d:[Ljava/lang/CharSequence;

    iget-object v4, p2, Lcom/google/googlenav/ui/view/android/bM;->e:[Landroid/widget/TextView;

    invoke-direct {p0, v3, v4}, Lcom/google/googlenav/ui/view/android/bJ;->a([Ljava/lang/CharSequence;[Landroid/widget/TextView;)V

    .line 704
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bJ;->e:[Ljava/lang/CharSequence;

    iget-object v4, p2, Lcom/google/googlenav/ui/view/android/bM;->f:[Landroid/widget/TextView;

    invoke-direct {p0, v3, v4}, Lcom/google/googlenav/ui/view/android/bJ;->a([Ljava/lang/CharSequence;[Landroid/widget/TextView;)V

    .line 707
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bJ;->O:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 708
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bJ;->O:Ljava/lang/CharSequence;

    if-eqz v3, :cond_80

    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->F:Lcom/google/googlenav/ui/view/android/bL;

    if-eqz v3, :cond_80

    .line 709
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->F:Lcom/google/googlenav/ui/view/android/bL;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bJ;->P:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/googlenav/ui/view/android/bL;->a:Ljava/lang/String;

    .line 710
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->g:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/google/googlenav/ui/view/android/bM;->F:Lcom/google/googlenav/ui/view/android/bL;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 715
    :cond_80
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->j:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bJ;->f:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 716
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bJ;->f:Ljava/lang/CharSequence;

    if-eqz v3, :cond_a0

    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->G:Lcom/google/googlenav/ui/view/android/bO;

    if-eqz v3, :cond_a0

    .line 717
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->G:Lcom/google/googlenav/ui/view/android/bO;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bJ;->f:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/googlenav/ui/view/android/bO;->a:Ljava/lang/String;

    .line 718
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->j:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/google/googlenav/ui/view/android/bM;->G:Lcom/google/googlenav/ui/view/android/bO;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 723
    :cond_a0
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->k:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bJ;->h:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 724
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bJ;->h:Ljava/lang/CharSequence;

    if-eqz v3, :cond_bc

    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->J:Lcom/google/googlenav/ui/view/android/bQ;

    if-eqz v3, :cond_bc

    .line 725
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->J:Lcom/google/googlenav/ui/view/android/bQ;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bJ;->i:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/googlenav/ui/view/android/bQ;->a:Ljava/lang/String;

    .line 726
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->k:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/google/googlenav/ui/view/android/bM;->J:Lcom/google/googlenav/ui/view/android/bQ;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 731
    :cond_bc
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->l:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bJ;->j:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 732
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->m:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bJ;->k:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 735
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->n:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bJ;->l:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 738
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->o:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bJ;->m:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 742
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->p:Landroid/view/View;

    if-eqz v3, :cond_f3

    .line 743
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->p:Landroid/view/View;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bJ;->n:Ljava/lang/CharSequence;

    if-nez v4, :cond_19a

    :goto_e2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 744
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->q:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bJ;->n:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 745
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->r:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bJ;->o:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 748
    :cond_f3
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->s:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bJ;->p:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 751
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->t:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bJ;->r:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 752
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->r:Ljava/lang/CharSequence;

    if-eqz v0, :cond_116

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->I:Lcom/google/googlenav/ui/view/android/bQ;

    if-eqz v0, :cond_116

    .line 753
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->I:Lcom/google/googlenav/ui/view/android/bQ;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bJ;->q:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/googlenav/ui/view/android/bQ;->a:Ljava/lang/String;

    .line 754
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->t:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->I:Lcom/google/googlenav/ui/view/android/bQ;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 759
    :cond_116
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->u:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bJ;->s:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 764
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->w:LS/f;

    if-eqz v0, :cond_19d

    .line 765
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->w:LS/f;

    check-cast v0, LT/f;

    .line 779
    :cond_125
    :goto_125
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->z:Landroid/widget/ImageView;

    invoke-static {v3, v0}, LaQ/G;->a(Landroid/widget/ImageView;LT/f;)V

    .line 780
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->A:Landroid/widget/ImageView;

    invoke-static {v3, v0}, LaQ/G;->a(Landroid/widget/ImageView;LT/f;)V

    .line 782
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_144

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->H:Lcom/google/googlenav/ui/view/android/bP;

    if-eqz v0, :cond_144

    .line 783
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->H:Lcom/google/googlenav/ui/view/android/bP;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bJ;->x:Lcom/google/googlenav/ui/view/a;

    iput-object v3, v0, Lcom/google/googlenav/ui/view/android/bP;->a:Lcom/google/googlenav/ui/view/a;

    .line 784
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->z:Landroid/widget/ImageView;

    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->H:Lcom/google/googlenav/ui/view/android/bP;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 788
    :cond_144
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->h:Lcom/google/googlenav/ui/view/android/DistanceView;

    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->i:Lcom/google/googlenav/ui/view/android/HeadingView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bJ;->z:Lat/B;

    invoke-static {v0, v3, v4}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;Lat/B;)V

    .line 791
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->u:Lcom/google/googlenav/ui/bx;

    if-eqz v0, :cond_1db

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->S:Lcom/google/googlenav/ui/bw;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bJ;->u:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 793
    :goto_15b
    iget-object v2, p2, Lcom/google/googlenav/ui/view/android/bM;->w:Landroid/widget/ImageView;

    invoke-static {v2, v0}, LaQ/G;->a(Landroid/widget/ImageView;LT/f;)V

    .line 796
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->v:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bJ;->t:Ljava/lang/CharSequence;

    invoke-static {v0, v2}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 799
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->x:Landroid/widget/ImageView;

    if-eqz v0, :cond_172

    .line 800
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->x:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bJ;->y:LT/f;

    invoke-static {v0, v2}, LaQ/G;->a(Landroid/widget/ImageView;LT/f;)V

    .line 803
    :cond_172
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->y:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_187

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->E:Lcom/google/googlenav/ui/view/android/bN;

    if-eqz v0, :cond_187

    .line 806
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->E:Lcom/google/googlenav/ui/view/android/bN;

    iget v2, p0, Lcom/google/googlenav/ui/view/android/bJ;->Q:I

    iput v2, v0, Lcom/google/googlenav/ui/view/android/bN;->b:I

    .line 807
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->y:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/google/googlenav/ui/view/android/bM;->E:Lcom/google/googlenav/ui/view/android/bN;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 811
    :cond_187
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->B:Lcom/google/googlenav/ui/bI;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bJ;->L:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/google/googlenav/ui/view/android/bJ;->M:I

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bJ;->K:Ljava/lang/CharSequence;

    invoke-static {v0, v2, v3, v4, v1}, Lcom/google/googlenav/ui/bH;->a(Lcom/google/googlenav/ui/bI;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Z)V

    .line 813
    return-void

    .line 697
    :cond_193
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bM;->c:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_4f

    :cond_19a
    move v0, v1

    .line 743
    goto/16 :goto_e2

    .line 766
    :cond_19d
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bM;->A:Landroid/widget/ImageView;

    if-eqz v0, :cond_1cb

    .line 769
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->v:Lcom/google/googlenav/ui/bx;

    if-eqz v0, :cond_1e1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->S:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->b()Lah/s;

    move-result-object v0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bJ;->v:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v0, v3}, Lah/s;->c(Lcom/google/googlenav/ui/bx;)Z

    move-result v0

    if-eqz v0, :cond_1e1

    .line 770
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->S:Lcom/google/googlenav/ui/bw;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bJ;->v:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 772
    :goto_1bd
    if-nez v0, :cond_125

    .line 773
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->r()LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    goto/16 :goto_125

    .line 775
    :cond_1cb
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->v:Lcom/google/googlenav/ui/bx;

    if-eqz v0, :cond_1de

    .line 776
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->S:Lcom/google/googlenav/ui/bw;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bJ;->v:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    goto/16 :goto_125

    :cond_1db
    move-object v0, v2

    .line 791
    goto/16 :goto_15b

    :cond_1de
    move-object v0, v2

    goto/16 :goto_125

    :cond_1e1
    move-object v0, v2

    goto :goto_1bd
.end method

.method protected a(Lcom/google/googlenav/ui/view/android/bM;Landroid/view/View;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 564
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->N:Z

    if-eqz v0, :cond_b

    .line 565
    invoke-static {p2}, LaM/aR;->a(Landroid/view/View;)V

    .line 567
    :cond_b
    iput-object p2, p1, Lcom/google/googlenav/ui/view/android/bM;->a:Landroid/view/View;

    .line 569
    const v0, 0x7f10001e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->b:Landroid/widget/TextView;

    .line 570
    const v0, 0x7f10031b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->c:Landroid/widget/CheckBox;

    .line 572
    iget-object v1, p1, Lcom/google/googlenav/ui/view/android/bM;->d:[Landroid/widget/TextView;

    const v0, 0x7f100198

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 573
    iget-object v1, p1, Lcom/google/googlenav/ui/view/android/bM;->d:[Landroid/widget/TextView;

    const v0, 0x7f100199

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 574
    iget-object v1, p1, Lcom/google/googlenav/ui/view/android/bM;->d:[Landroid/widget/TextView;

    const v0, 0x7f10031e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v4

    .line 576
    iget-object v1, p1, Lcom/google/googlenav/ui/view/android/bM;->e:[Landroid/widget/TextView;

    const v0, 0x7f10031c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 577
    iget-object v1, p1, Lcom/google/googlenav/ui/view/android/bM;->e:[Landroid/widget/TextView;

    const v0, 0x7f10031d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 579
    iget-object v1, p1, Lcom/google/googlenav/ui/view/android/bM;->f:[Landroid/widget/TextView;

    const v0, 0x7f100320

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 581
    iget-object v1, p1, Lcom/google/googlenav/ui/view/android/bM;->f:[Landroid/widget/TextView;

    const v0, 0x7f100321

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 584
    const v0, 0x7f1002c7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->g:Landroid/widget/TextView;

    .line 586
    new-instance v0, Lcom/google/googlenav/ui/view/android/bL;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bJ;->P:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bL;-><init>(Lcom/google/googlenav/ui/view/android/bJ;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->F:Lcom/google/googlenav/ui/view/android/bL;

    .line 589
    const v0, 0x7f100194

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/DistanceView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->h:Lcom/google/googlenav/ui/view/android/DistanceView;

    .line 590
    const v0, 0x7f100195

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/HeadingView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->i:Lcom/google/googlenav/ui/view/android/HeadingView;

    .line 592
    const v0, 0x7f100322

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->j:Landroid/widget/TextView;

    .line 593
    const v0, 0x7f100323

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->k:Landroid/widget/TextView;

    .line 594
    const v0, 0x7f100324

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->l:Landroid/widget/TextView;

    .line 595
    const v0, 0x7f100325

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->m:Landroid/widget/TextView;

    .line 597
    const v0, 0x7f100272

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->n:Landroid/widget/TextView;

    .line 598
    const v0, 0x7f100326

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->o:Landroid/widget/TextView;

    .line 600
    const v0, 0x7f100078

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->p:Landroid/view/View;

    .line 601
    const v0, 0x7f100329

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->q:Landroid/widget/TextView;

    .line 602
    const v0, 0x7f10032a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->r:Landroid/widget/TextView;

    .line 603
    const v0, 0x7f10007b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->s:Landroid/widget/TextView;

    .line 604
    const v0, 0x7f100327

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->t:Landroid/widget/TextView;

    .line 605
    const v0, 0x7f10007c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->u:Landroid/widget/TextView;

    .line 607
    const v0, 0x7f10032c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->v:Landroid/widget/TextView;

    .line 609
    const v0, 0x7f10032b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->w:Landroid/widget/ImageView;

    .line 611
    const v0, 0x7f10001a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->x:Landroid/widget/ImageView;

    .line 612
    const v0, 0x7f100282

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->y:Landroid/widget/LinearLayout;

    .line 614
    const v0, 0x7f1002bc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->A:Landroid/widget/ImageView;

    .line 615
    const v0, 0x7f10004f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->z:Landroid/widget/ImageView;

    .line 617
    new-instance v0, Lcom/google/googlenav/ui/view/android/bN;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/bJ;->R:I

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bN;-><init>(Lcom/google/googlenav/ui/view/android/bJ;I)V

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->C:Lcom/google/googlenav/ui/view/android/bN;

    .line 618
    new-instance v0, Lcom/google/googlenav/ui/view/android/bN;

    const/16 v1, 0x578

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bN;-><init>(Lcom/google/googlenav/ui/view/android/bJ;I)V

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->D:Lcom/google/googlenav/ui/view/android/bN;

    .line 620
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_1c6

    iget-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->y:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1c6

    .line 621
    new-instance v0, Lcom/google/googlenav/ui/view/android/bN;

    invoke-direct {v0, p0, v4}, Lcom/google/googlenav/ui/view/android/bN;-><init>(Lcom/google/googlenav/ui/view/android/bJ;I)V

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->E:Lcom/google/googlenav/ui/view/android/bN;

    .line 626
    :goto_193
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->g:Z

    if-eqz v0, :cond_1c9

    .line 627
    new-instance v0, Lcom/google/googlenav/ui/view/android/bO;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bJ;->f:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bO;-><init>(Lcom/google/googlenav/ui/view/android/bJ;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->G:Lcom/google/googlenav/ui/view/android/bO;

    .line 632
    :goto_1a4
    new-instance v0, Lcom/google/googlenav/ui/view/android/bP;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bJ;->x:Lcom/google/googlenav/ui/view/a;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bP;-><init>(Lcom/google/googlenav/ui/view/android/bJ;Lcom/google/googlenav/ui/view/a;)V

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->H:Lcom/google/googlenav/ui/view/android/bP;

    .line 633
    new-instance v0, Lcom/google/googlenav/ui/view/android/bQ;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bJ;->q:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bQ;-><init>(Lcom/google/googlenav/ui/view/android/bJ;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->I:Lcom/google/googlenav/ui/view/android/bQ;

    .line 634
    new-instance v0, Lcom/google/googlenav/ui/view/android/bQ;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bJ;->i:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bQ;-><init>(Lcom/google/googlenav/ui/view/android/bJ;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->J:Lcom/google/googlenav/ui/view/android/bQ;

    .line 636
    invoke-static {p2}, Lcom/google/googlenav/ui/bH;->a(Landroid/view/View;)Lcom/google/googlenav/ui/bI;

    move-result-object v0

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bM;->B:Lcom/google/googlenav/ui/bI;

    .line 637
    return-void

    .line 623
    :cond_1c6
    iput-object v5, p1, Lcom/google/googlenav/ui/view/android/bM;->E:Lcom/google/googlenav/ui/view/android/bN;

    goto :goto_193

    .line 629
    :cond_1c9
    iput-object v5, p1, Lcom/google/googlenav/ui/view/android/bM;->G:Lcom/google/googlenav/ui/view/android/bO;

    goto :goto_1a4
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->G:Z

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 551
    iget v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->H:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 541
    iget v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->F:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/16 v7, 0xa

    .line 1172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1174
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bJ;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_11

    .line 1175
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bJ;->b:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1178
    :cond_11
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bJ;->c:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_31

    .line 1179
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1181
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bJ;->c:[Ljava/lang/CharSequence;

    array-length v4, v3

    move v1, v0

    :goto_1c
    if-ge v1, v4, :cond_31

    aget-object v5, v3, v1

    .line 1182
    if-eqz v5, :cond_2e

    .line 1183
    if-lez v0, :cond_29

    .line 1184
    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    :cond_29
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1187
    add-int/lit8 v0, v0, 0x1

    .line 1181
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1192
    :cond_31
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->l:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3d

    .line 1193
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1194
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->l:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1197
    :cond_3d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_49

    .line 1198
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1199
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->m:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1202
    :cond_49
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->n:Ljava/lang/CharSequence;

    if-eqz v0, :cond_55

    .line 1203
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1204
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->n:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1207
    :cond_55
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->o:Ljava/lang/CharSequence;

    if-eqz v0, :cond_61

    .line 1208
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1209
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->o:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1212
    :cond_61
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->p:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6d

    .line 1213
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1214
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->p:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1217
    :cond_6d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_79

    .line 1218
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1219
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->s:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1222
    :cond_79
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->t:Ljava/lang/CharSequence;

    if-eqz v0, :cond_85

    .line 1223
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1224
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->t:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1227
    :cond_85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
