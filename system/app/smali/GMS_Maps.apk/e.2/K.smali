.class public abstract LE/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[LE/k;


# instance fields
.field protected b:LE/h;

.field protected c:LE/j;

.field protected d:LE/g;

.field protected e:LC/x;

.field protected f:Lcom/google/googlenav/ui/view/android/cc;

.field protected g:LaP/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    invoke-static {}, LE/n;->values()[LE/n;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [LE/k;

    sput-object v0, LE/k;->a:[LE/k;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LE/h;LaP/d;LC/x;LE/j;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 57
    sget-object v1, LE/k;->a:[LE/k;

    sget-object v2, LE/a;->a:LE/a;

    aput-object v2, v1, v0

    .line 58
    sget-object v1, LE/k;->a:[LE/k;

    const/4 v2, 0x1

    sget-object v3, LE/e;->a:LE/e;

    aput-object v3, v1, v2

    .line 59
    sget-object v1, LE/k;->a:[LE/k;

    const/4 v2, 0x2

    sget-object v3, LE/f;->a:LE/f;

    aput-object v3, v1, v2

    .line 60
    :goto_15
    sget-object v1, LE/k;->a:[LE/k;

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 61
    sget-object v1, LE/k;->a:[LE/k;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0, p3, p1, p2}, LE/k;->a(LE/h;LE/j;LaP/d;LC/x;)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 63
    :cond_24
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    .prologue
    .line 80
    return-void
.end method

.method public a(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, LE/k;->c:LE/j;

    invoke-virtual {v0}, LE/j;->c()LaP/a;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, LE/k;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v1

    .line 185
    if-eqz v0, :cond_36

    invoke-interface {v1}, Lcom/google/android/maps/rideabout/view/j;->g()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 186
    iget-object v2, p0, LE/k;->d:LE/g;

    invoke-virtual {v2}, LE/g;->a()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 187
    invoke-interface {v1}, Lcom/google/android/maps/rideabout/view/j;->c()Z

    move-result v2

    if-nez v2, :cond_23

    .line 188
    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->b(LaP/a;)V

    .line 194
    :cond_23
    :goto_23
    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->c(LaP/a;)I

    move-result v2

    .line 198
    invoke-interface {v1, v2}, Lcom/google/android/maps/rideabout/view/j;->a(I)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 199
    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->a(LaP/a;)V

    .line 200
    iget-object v0, p0, LE/k;->d:LE/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LE/g;->a(Z)V

    .line 208
    :cond_36
    :goto_36
    iget-object v0, p0, LE/k;->d:LE/g;

    invoke-virtual {v0, p1}, LE/g;->a(I)V

    .line 209
    return-void

    .line 190
    :cond_3c
    if-eq p1, p2, :cond_23

    .line 191
    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->a(LaP/a;)V

    goto :goto_23

    .line 201
    :cond_42
    if-eq p1, p2, :cond_46

    if-eq p1, v2, :cond_4e

    :cond_46
    if-le p1, v2, :cond_4a

    if-lt p2, v2, :cond_4e

    :cond_4a
    if-ge p1, v2, :cond_36

    if-le p2, v2, :cond_36

    .line 204
    :cond_4e
    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->a(LaP/a;)V

    .line 205
    iget-object v0, p0, LE/k;->d:LE/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LE/g;->a(Z)V

    goto :goto_36
.end method

.method public a(LC/z;)V
    .registers 2
    .parameter

    .prologue
    .line 172
    return-void
.end method

.method public final a(LE/h;LE/j;LaP/d;LC/x;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, LE/k;->b:LE/h;

    .line 68
    iput-object p2, p0, LE/k;->c:LE/j;

    .line 69
    iput-object p3, p0, LE/k;->g:LaP/d;

    .line 70
    iput-object p4, p0, LE/k;->e:LC/x;

    .line 71
    new-instance v0, LE/g;

    invoke-direct {v0}, LE/g;-><init>()V

    iput-object v0, p0, LE/k;->d:LE/g;

    .line 72
    invoke-static {}, Lcom/google/googlenav/ui/view/android/cc;->a()Lcom/google/googlenav/ui/view/android/cc;

    move-result-object v0

    iput-object v0, p0, LE/k;->f:Lcom/google/googlenav/ui/view/android/cc;

    .line 73
    invoke-virtual {p0}, LE/k;->a()V

    .line 74
    return-void
.end method

.method public abstract a(Z)V
.end method

.method public b()V
    .registers 1

    .prologue
    .line 87
    invoke-virtual {p0}, LE/k;->e()V

    .line 88
    return-void
.end method

.method public b(LC/z;)V
    .registers 2
    .parameter

    .prologue
    .line 176
    return-void
.end method

.method protected b(Z)V
    .registers 5
    .parameter

    .prologue
    .line 139
    invoke-virtual {p0}, LE/k;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v0

    .line 140
    iget-object v1, p0, LE/k;->c:LE/j;

    invoke-virtual {v1}, LE/j;->c()LaP/a;

    move-result-object v1

    .line 141
    if-nez v1, :cond_10

    .line 145
    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/j;->a()V

    .line 160
    :goto_f
    return-void

    .line 148
    :cond_10
    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/j;->d(LaP/a;)V

    .line 149
    if-eqz p1, :cond_21

    .line 150
    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/j;->f()V

    .line 154
    :goto_18
    new-instance v2, LE/m;

    invoke-direct {v2, p0, v1}, LE/m;-><init>(LE/k;LaP/a;)V

    invoke-interface {v0, v2}, Lcom/google/android/maps/rideabout/view/j;->post(Ljava/lang/Runnable;)Z

    goto :goto_f

    .line 152
    :cond_21
    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/j;->e()V

    goto :goto_18
.end method

.method public c()V
    .registers 3

    .prologue
    .line 103
    invoke-virtual {p0}, LE/k;->e()V

    .line 106
    invoke-virtual {p0}, LE/k;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v0

    .line 107
    new-instance v1, LE/l;

    invoke-direct {v1, p0, v0}, LE/l;-><init>(LE/k;Lcom/google/android/maps/rideabout/view/j;)V

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/j;->post(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method

.method public c(LC/z;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    return-void
.end method

.method public d()V
    .registers 1

    .prologue
    .line 95
    invoke-virtual {p0}, LE/k;->e()V

    .line 96
    return-void
.end method

.method protected abstract e()V
.end method

.method public g()V
    .registers 1

    .prologue
    .line 168
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, LE/k;->d:LE/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LE/g;->a(Z)V

    .line 213
    invoke-virtual {p0}, LE/k;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/j;->d()V

    .line 214
    return-void
.end method

.method public i()V
    .registers 4

    .prologue
    .line 217
    iget-object v0, p0, LE/k;->c:LE/j;

    invoke-virtual {v0}, LE/j;->c()LaP/a;

    move-result-object v0

    .line 218
    if-nez v0, :cond_9

    .line 226
    :cond_8
    :goto_8
    return-void

    .line 221
    :cond_9
    invoke-virtual {p0}, LE/k;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v1

    .line 222
    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->c(LaP/a;)I

    move-result v0

    .line 223
    invoke-interface {v1}, Lcom/google/android/maps/rideabout/view/j;->b()I

    move-result v2

    if-ne v0, v2, :cond_8

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->a(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 224
    iget-object v0, p0, LE/k;->d:LE/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LE/g;->a(Z)V

    goto :goto_8
.end method

.method public j()V
    .registers 4

    .prologue
    .line 229
    iget-object v0, p0, LE/k;->c:LE/j;

    invoke-virtual {v0}, LE/j;->c()LaP/a;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_15

    .line 231
    invoke-virtual {p0}, LE/k;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v1

    iget-object v2, p0, LE/k;->d:LE/g;

    invoke-virtual {v2}, LE/g;->a()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/maps/rideabout/view/j;->a(LaP/a;Z)V

    .line 233
    :cond_15
    return-void
.end method

.method protected k()Lcom/google/android/maps/rideabout/view/j;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, LE/k;->f:Lcom/google/googlenav/ui/view/android/cc;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->h()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v0

    return-object v0
.end method

.method protected l()Lcom/google/android/maps/rideabout/view/i;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, LE/k;->f:Lcom/google/googlenav/ui/view/android/cc;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->i()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    return-object v0
.end method

.method protected m()Lcom/google/android/maps/rideabout/view/h;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, LE/k;->f:Lcom/google/googlenav/ui/view/android/cc;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->j()Lcom/google/android/maps/rideabout/view/h;

    move-result-object v0

    return-object v0
.end method

.method protected n()V
    .registers 5

    .prologue
    .line 248
    iget-object v0, p0, LE/k;->f:Lcom/google/googlenav/ui/view/android/cc;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->n()Lcom/google/googlenav/ui/g;

    move-result-object v0

    .line 249
    if-nez v0, :cond_9

    .line 253
    :goto_8
    return-void

    .line 252
    :cond_9
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    goto :goto_8
.end method

.method protected o()V
    .registers 5

    .prologue
    .line 256
    iget-object v0, p0, LE/k;->f:Lcom/google/googlenav/ui/view/android/cc;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->n()Lcom/google/googlenav/ui/g;

    move-result-object v0

    .line 257
    if-nez v0, :cond_9

    .line 261
    :goto_8
    return-void

    .line 260
    :cond_9
    const/16 v1, 0xf1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    goto :goto_8
.end method

.method public p()V
    .registers 3

    .prologue
    .line 264
    iget-object v0, p0, LE/k;->d:LE/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LE/g;->b(Z)V

    .line 265
    invoke-virtual {p0}, LE/k;->l()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/i;->c()V

    .line 266
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LE/k;->a(Z)V

    .line 267
    return-void
.end method
