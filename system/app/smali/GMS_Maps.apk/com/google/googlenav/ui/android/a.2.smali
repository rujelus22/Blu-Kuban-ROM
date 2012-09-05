.class public Lcom/google/googlenav/ui/android/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/googlenav/ui/android/a;


# instance fields
.field private final b:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/a;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/a;->b()V

    return-void
.end method

.method public static a()Lcom/google/googlenav/ui/android/a;
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/android/a;->a:Lcom/google/googlenav/ui/android/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/googlenav/ui/android/a;

    invoke-direct {v0}, Lcom/google/googlenav/ui/android/a;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/a;->a:Lcom/google/googlenav/ui/android/a;

    :cond_b
    sget-object v0, Lcom/google/googlenav/ui/android/a;->a:Lcom/google/googlenav/ui/android/a;

    return-object v0
.end method

.method private a(Laq/a;I)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/android/a;->b:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b()V
    .registers 8

    const v6, 0x7f0201dd

    const v5, 0x7f020204

    const v4, 0x7f0201ef

    const v2, 0x7f02025f

    const v1, 0x7f0201f7

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ao()Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Lcom/google/googlenav/ui/n;->q:Laq/a;

    const v3, 0x7f02020a

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    :cond_21
    sget-object v0, Lcom/google/googlenav/ui/n;->ai:Laq/a;

    const v3, 0x7f0201e3

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->aj:Laq/a;

    const v3, 0x7f020207

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->n:Laq/a;

    const v3, 0x7f020207

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->au:Laq/a;

    const v3, 0x7f0201e6

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->av:Laq/a;

    const v3, 0x7f0201e6

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->ak:Laq/a;

    const v3, 0x7f020206

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->ap:Laq/a;

    const v3, 0x7f020210

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->aq:Laq/a;

    const v3, 0x7f020210

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->aw:Laq/a;

    const v3, 0x7f020203

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->Q:Laq/a;

    const v3, 0x7f020208

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->s:Laq/a;

    const v3, 0x7f0201ed

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->w:Laq/a;

    const v3, 0x7f0201d6

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->t:Laq/a;

    invoke-direct {p0, v0, v5}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->y:Laq/a;

    invoke-direct {p0, v0, v4}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->B:Laq/a;

    invoke-direct {p0, v0, v5}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->C:Laq/a;

    invoke-direct {p0, v0, v5}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->W:Laq/a;

    const v3, 0x7f0201f0

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->aA:Laq/a;

    const v3, 0x108003c

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->u:Laq/a;

    const v3, 0x7f02020c

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->v:Laq/a;

    const v3, 0x7f02020c

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->R:Laq/a;

    const v3, 0x7f02020d

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->S:Laq/a;

    const v3, 0x7f020211

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->F:Laq/a;

    const v3, 0x7f020209

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->G:Laq/a;

    const v3, 0x7f0201e4

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->P:Laq/a;

    const v3, 0x7f0201f3

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->I:Laq/a;

    const v3, 0x7f0201f5

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->J:Laq/a;

    invoke-direct {p0, v0, v4}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->K:Laq/a;

    invoke-direct {p0, v0, v4}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->H:Laq/a;

    const v3, 0x7f0201fd

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v3, Lcom/google/googlenav/ui/n;->al:Laq/a;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_19b

    move v0, v1

    :goto_104
    invoke-direct {p0, v3, v0}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v3, Lcom/google/googlenav/ui/n;->am:Laq/a;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_19e

    move v0, v1

    :goto_114
    invoke-direct {p0, v3, v0}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v3, Lcom/google/googlenav/ui/n;->an:Laq/a;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_1a1

    move v0, v1

    :goto_124
    invoke-direct {p0, v3, v0}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->ao:Laq/a;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/M;->ap()Z

    move-result v3

    if-eqz v3, :cond_1a3

    :goto_133
    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->ay:Laq/a;

    const v1, 0x7f0201e9

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->az:Laq/a;

    const v1, 0x7f0201ff

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->aa:Laq/a;

    const v1, 0x7f0201eb

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->Z:Laq/a;

    const v1, 0x7f0201ff

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->aB:Laq/a;

    const v1, 0x7f0201de

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->Y:Laq/a;

    const v1, 0x7f0201df

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->ax:Laq/a;

    const v1, 0x7f020209

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_1a5

    sget-object v0, Lcom/google/googlenav/ui/n;->at:Laq/a;

    const v1, 0x7f0201dc

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->T:Laq/a;

    const v1, 0x7f0201ee

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->ar:Laq/a;

    const v1, 0x7f02020f

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->af:Laq/a;

    invoke-direct {p0, v0, v6}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->U:Laq/a;

    invoke-direct {p0, v0, v6}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    :cond_19a
    :goto_19a
    return-void

    :cond_19b
    move v0, v2

    goto/16 :goto_104

    :cond_19e
    move v0, v2

    goto/16 :goto_114

    :cond_1a1
    move v0, v2

    goto :goto_124

    :cond_1a3
    move v1, v2

    goto :goto_133

    :cond_1a5
    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_19a

    sget-object v0, Lcom/google/googlenav/ui/n;->H:Laq/a;

    const v1, 0x7f02007d

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->P:Laq/a;

    const v1, 0x7f020078

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    sget-object v0, Lcom/google/googlenav/ui/n;->I:Laq/a;

    const v1, 0x7f02007b

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;I)V

    goto :goto_19a
.end method


# virtual methods
.method public a(Laq/a;)I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public b(Laq/a;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
