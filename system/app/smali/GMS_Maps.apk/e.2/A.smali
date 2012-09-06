.class public LE/a;
.super LE/k;
.source "SourceFile"


# static fields
.field public static final a:LE/a;


# instance fields
.field private h:Z

.field private final i:Ljava/util/HashSet;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, LE/a;

    invoke-direct {v0}, LE/a;-><init>()V

    sput-object v0, LE/a;->a:LE/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, LE/k;-><init>()V

    .line 41
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, LE/a;->i:Ljava/util/HashSet;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, LE/a;->j:Z

    .line 34
    return-void
.end method

.method private a(J)V
    .registers 5
    .parameter

    .prologue
    .line 230
    iget-boolean v0, p0, LE/a;->j:Z

    if-eqz v0, :cond_5

    .line 259
    :cond_4
    :goto_4
    return-void

    .line 233
    :cond_5
    iget-object v0, p0, LE/a;->f:Lcom/google/googlenav/ui/view/android/cc;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->n()Lcom/google/googlenav/ui/g;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_4

    .line 239
    invoke-virtual {p0}, LE/a;->m()Lcom/google/android/maps/rideabout/view/h;

    move-result-object v0

    .line 241
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_4

    .line 242
    check-cast v0, Landroid/view/View;

    .line 243
    new-instance v1, LE/d;

    invoke-direct {v1, p0}, LE/d;-><init>(LE/a;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method private a(LC/z;Z)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0}, LE/a;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v2

    .line 131
    iget-object v3, p0, LE/a;->c:LE/j;

    invoke-virtual {v3, p1}, LE/j;->c(LC/z;)V

    .line 132
    iget-object v3, p1, LC/z;->c:LaP/a;

    invoke-interface {v2, v3}, Lcom/google/android/maps/rideabout/view/j;->d(LaP/a;)V

    .line 133
    iget-object v3, p1, LC/z;->c:LaP/a;

    iget-object v4, p0, LE/a;->d:LE/g;

    invoke-virtual {v4}, LE/g;->a()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/maps/rideabout/view/j;->a(LaP/a;Z)V

    .line 134
    iget-object v2, p0, LE/a;->c:LE/j;

    invoke-virtual {v2}, LE/j;->b()Lcom/google/android/maps/rideabout/app/a;

    move-result-object v3

    .line 135
    iget-object v2, p0, LE/a;->c:LE/j;

    invoke-virtual {v2}, LE/j;->c()LaP/a;

    move-result-object v2

    invoke-direct {p0, v3, v2}, LE/a;->a(Lcom/google/android/maps/rideabout/app/a;LaP/a;)V

    .line 136
    if-nez p2, :cond_34

    iget-boolean v2, p0, LE/a;->h:Z

    invoke-virtual {v3}, Lcom/google/android/maps/rideabout/app/a;->i()Z

    move-result v4

    if-eq v2, v4, :cond_6a

    :cond_34
    move v2, v1

    .line 137
    :goto_35
    if-eqz v2, :cond_48

    .line 138
    invoke-virtual {v3}, Lcom/google/android/maps/rideabout/app/a;->i()Z

    move-result v4

    iput-boolean v4, p0, LE/a;->h:Z

    .line 139
    iget-boolean v4, p0, LE/a;->h:Z

    if-eqz v4, :cond_6c

    .line 140
    invoke-virtual {p0}, LE/a;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/maps/rideabout/view/j;->f()V

    .line 145
    :cond_48
    :goto_48
    if-nez v2, :cond_50

    invoke-virtual {v3}, Lcom/google/android/maps/rideabout/app/a;->a()Z

    move-result v2

    if-eqz v2, :cond_51

    :cond_50
    move v0, v1

    :cond_51
    invoke-virtual {p0, v0}, LE/a;->a(Z)V

    .line 146
    invoke-virtual {v3}, Lcom/google/android/maps/rideabout/app/a;->j()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 147
    invoke-virtual {v3}, Lcom/google/android/maps/rideabout/app/a;->l()Lcom/google/android/maps/rideabout/app/c;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/rideabout/app/c;->e:Lcom/google/android/maps/rideabout/app/c;

    if-ne v0, v1, :cond_74

    .line 150
    invoke-static {}, LE/a;->r()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, LE/a;->a(J)V

    .line 155
    :cond_69
    :goto_69
    return-void

    :cond_6a
    move v2, v0

    .line 136
    goto :goto_35

    .line 142
    :cond_6c
    invoke-virtual {p0}, LE/a;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/maps/rideabout/view/j;->e()V

    goto :goto_48

    .line 152
    :cond_74
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, LE/a;->a(J)V

    goto :goto_69
.end method

.method static synthetic a(LE/a;)V
    .registers 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, LE/a;->q()V

    return-void
.end method

.method private a(Lcom/google/android/maps/rideabout/app/a;LaP/a;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 187
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 207
    :cond_4
    :goto_4
    return-void

    .line 191
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/a;->l()Lcom/google/android/maps/rideabout/app/c;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/rideabout/app/c;->a:Lcom/google/android/maps/rideabout/app/c;

    if-ne v0, v1, :cond_1b

    .line 192
    iget-object v0, p2, LaP/a;->a:LaP/t;

    iget v0, v0, LaP/t;->a:I

    invoke-direct {p0, v0}, LE/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    invoke-virtual {p0}, LE/a;->n()V

    goto :goto_4

    .line 195
    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/a;->l()Lcom/google/android/maps/rideabout/app/c;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/rideabout/app/c;->e:Lcom/google/android/maps/rideabout/app/c;

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/a;->j()Z

    move-result v0

    if-nez v0, :cond_4

    .line 202
    iget-object v0, p2, LaP/a;->a:LaP/t;

    iget v0, v0, LaP/t;->a:I

    invoke-direct {p0, v0}, LE/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 203
    invoke-virtual {p0}, LE/a;->o()V

    .line 204
    iget-object v0, p0, LE/a;->f:Lcom/google/googlenav/ui/view/android/cc;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->o()V

    goto :goto_4
.end method

.method private a(I)Z
    .registers 4
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, LE/a;->i:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 218
    const/4 v0, 0x0

    .line 221
    :goto_d
    return v0

    .line 220
    :cond_e
    iget-object v0, p0, LE/a;->i:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 221
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private q()V
    .registers 5

    .prologue
    .line 99
    iget-object v0, p0, LE/a;->c:LE/j;

    invoke-virtual {v0}, LE/j;->c()LaP/a;

    move-result-object v0

    .line 100
    if-nez v0, :cond_9

    .line 115
    :cond_8
    :goto_8
    return-void

    .line 103
    :cond_9
    invoke-virtual {p0}, LE/a;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v1

    .line 104
    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->a(LaP/a;)V

    .line 105
    iget-object v2, p0, LE/a;->d:LE/g;

    invoke-virtual {v2}, LE/g;->a()Z

    move-result v2

    if-nez v2, :cond_8

    .line 106
    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->c(LaP/a;)I

    move-result v2

    .line 107
    invoke-interface {v1}, Lcom/google/android/maps/rideabout/view/j;->b()I

    move-result v3

    if-ne v2, v3, :cond_2f

    invoke-interface {v1, v2}, Lcom/google/android/maps/rideabout/view/j;->a(I)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 109
    iget-object v0, p0, LE/a;->d:LE/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LE/g;->a(Z)V

    goto :goto_8

    .line 112
    :cond_2f
    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->b(LaP/a;)V

    goto :goto_8
.end method

.method private static r()J
    .registers 2

    .prologue
    .line 279
    invoke-static {}, LF/j;->a()LF/q;

    move-result-object v0

    iget v0, v0, LF/q;->u:I

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method protected a()V
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, LE/a;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, LE/a;->j:Z

    .line 53
    return-void
.end method

.method public a(LC/z;)V
    .registers 3
    .parameter

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LE/a;->a(LC/z;Z)V

    .line 120
    return-void
.end method

.method public a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, LE/a;->c:LE/j;

    invoke-virtual {v0}, LE/j;->b()Lcom/google/android/maps/rideabout/app/a;

    move-result-object v0

    .line 170
    if-eqz p1, :cond_15

    .line 171
    invoke-virtual {p0}, LE/a;->l()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v1

    iget-object v2, p0, LE/a;->d:LE/g;

    invoke-virtual {v2}, LE/g;->c()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/maps/rideabout/view/i;->a(Lcom/google/android/maps/rideabout/app/a;Z)V

    .line 173
    :cond_15
    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->h()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 174
    invoke-virtual {p0}, LE/a;->l()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/maps/rideabout/view/i;->b(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, LE/a;->l()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/maps/rideabout/view/i;->a(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, LE/a;->m()Lcom/google/android/maps/rideabout/view/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/h;->a(Lcom/google/android/maps/rideabout/app/a;)V

    .line 181
    :goto_38
    return-void

    .line 178
    :cond_39
    invoke-virtual {p0}, LE/a;->m()Lcom/google/android/maps/rideabout/view/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/h;->a()V

    .line 179
    invoke-virtual {p0}, LE/a;->l()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/i;->a()V

    goto :goto_38
.end method

.method public b()V
    .registers 3

    .prologue
    .line 57
    invoke-super {p0}, LE/k;->b()V

    .line 59
    invoke-virtual {p0}, LE/a;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v0

    new-instance v1, LE/b;

    invoke-direct {v1, p0}, LE/b;-><init>(LE/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/j;->post(Ljava/lang/Runnable;)Z

    .line 65
    return-void
.end method

.method public b(LC/z;)V
    .registers 4
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, LE/a;->b:LE/h;

    sget-object v1, LE/n;->c:LE/n;

    invoke-virtual {v0, v1}, LE/h;->a(LE/n;)LE/k;

    .line 160
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 69
    invoke-super {p0}, LE/k;->c()V

    .line 70
    iget-object v0, p0, LE/a;->c:LE/j;

    invoke-virtual {v0}, LE/j;->a()LC/z;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, LE/a;->a(LC/z;Z)V

    .line 72
    invoke-virtual {p0}, LE/a;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v0

    new-instance v1, LE/c;

    invoke-direct {v1, p0}, LE/c;-><init>(LE/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/j;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method

.method public c(LC/z;)V
    .registers 4
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, LE/a;->b:LE/h;

    sget-object v1, LE/n;->b:LE/n;

    invoke-virtual {v0, v1}, LE/h;->a(LE/n;)LE/k;

    .line 165
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 82
    invoke-super {p0}, LE/k;->d()V

    .line 83
    iget-object v0, p0, LE/a;->c:LE/j;

    invoke-virtual {v0}, LE/j;->a()LC/z;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, LE/a;->a(LC/z;Z)V

    .line 84
    return-void
.end method

.method protected e()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, LE/a;->c:LE/j;

    invoke-virtual {v0}, LE/j;->b()Lcom/google/android/maps/rideabout/app/a;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->i()Z

    move-result v0

    iput-boolean v0, p0, LE/a;->h:Z

    .line 90
    iget-boolean v0, p0, LE/a;->h:Z

    invoke-virtual {p0, v0}, LE/a;->b(Z)V

    .line 91
    return-void
.end method

.method public f()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 266
    iput-boolean v3, p0, LE/a;->j:Z

    .line 267
    const/16 v0, 0x61

    const-string v1, "a"

    const-string v2, "s"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, LE/a;->d:LE/g;

    invoke-virtual {v0, v3}, LE/g;->b(Z)V

    .line 271
    invoke-virtual {p0}, LE/a;->l()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/i;->b()V

    .line 272
    return-void
.end method
