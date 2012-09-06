.class public Lcom/google/googlenav/ui/view/android/cc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/googlenav/ui/view/android/cc;


# instance fields
.field private b:Lcom/google/googlenav/ui/view/android/ce;

.field private c:Z

.field private d:Lcom/google/android/maps/rideabout/view/j;

.field private e:Lcom/google/android/maps/rideabout/view/i;

.field private f:Lcom/google/android/maps/rideabout/view/h;

.field private g:Lcom/google/android/maps/rideabout/view/c;

.field private h:Lcom/google/googlenav/ui/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Lcom/google/googlenav/ui/view/android/cc;

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/android/cc;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/view/android/cc;->a:Lcom/google/googlenav/ui/view/android/cc;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcom/google/googlenav/ui/view/android/ce;->a:Lcom/google/googlenav/ui/view/android/ce;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->b:Lcom/google/googlenav/ui/view/android/ce;

    .line 62
    sget-object v0, Lcom/google/android/maps/rideabout/view/g;->a:Lcom/google/android/maps/rideabout/view/j;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->d:Lcom/google/android/maps/rideabout/view/j;

    .line 63
    sget-object v0, Lcom/google/android/maps/rideabout/view/f;->a:Lcom/google/android/maps/rideabout/view/i;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->e:Lcom/google/android/maps/rideabout/view/i;

    .line 64
    sget-object v0, Lcom/google/android/maps/rideabout/view/e;->a:Lcom/google/android/maps/rideabout/view/h;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->f:Lcom/google/android/maps/rideabout/view/h;

    .line 68
    return-void
.end method

.method public static a()Lcom/google/googlenav/ui/view/android/cc;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/googlenav/ui/view/android/cc;->a:Lcom/google/googlenav/ui/view/android/cc;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/rideabout/view/c;)V
    .registers 3
    .parameter

    .prologue
    .line 156
    if-eqz p1, :cond_1e

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/P;->a(Z)V

    .line 157
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    .line 158
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/cc;->c:Z

    if-eqz v0, :cond_1d

    .line 159
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->d:Lcom/google/android/maps/rideabout/view/j;

    invoke-interface {v0, p1}, Lcom/google/android/maps/rideabout/view/j;->a(Lcom/google/android/maps/rideabout/view/c;)V

    .line 160
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->e:Lcom/google/android/maps/rideabout/view/i;

    if-eqz v0, :cond_1a

    .line 161
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->e:Lcom/google/android/maps/rideabout/view/i;

    invoke-interface {v0, p1}, Lcom/google/android/maps/rideabout/view/i;->a(Lcom/google/android/maps/rideabout/view/c;)V

    .line 163
    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/view/c;->f()V

    .line 165
    :cond_1d
    return-void

    .line 156
    :cond_1e
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public a(Lcom/google/android/maps/rideabout/view/h;)V
    .registers 3
    .parameter

    .prologue
    .line 89
    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/P;->a(Z)V

    .line 90
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/cc;->f:Lcom/google/android/maps/rideabout/view/h;

    .line 91
    return-void

    .line 89
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public a(Lcom/google/android/maps/rideabout/view/i;)V
    .registers 4
    .parameter

    .prologue
    .line 81
    if-eqz p1, :cond_14

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/P;->a(Z)V

    .line 82
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/cc;->e:Lcom/google/android/maps/rideabout/view/i;

    .line 83
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    if-eqz v0, :cond_13

    .line 84
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->e:Lcom/google/android/maps/rideabout/view/i;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/i;->a(Lcom/google/android/maps/rideabout/view/c;)V

    .line 86
    :cond_13
    return-void

    .line 81
    :cond_14
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public a(Lcom/google/android/maps/rideabout/view/j;)V
    .registers 3
    .parameter

    .prologue
    .line 71
    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/P;->a(Z)V

    .line 72
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/cc;->d:Lcom/google/android/maps/rideabout/view/j;

    .line 73
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    if-eqz v0, :cond_11

    .line 76
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-interface {p1, v0}, Lcom/google/android/maps/rideabout/view/j;->a(Lcom/google/android/maps/rideabout/view/c;)V

    .line 78
    :cond_11
    return-void

    .line 71
    :cond_12
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public a(Lcom/google/googlenav/ui/g;)V
    .registers 2
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/cc;->h:Lcom/google/googlenav/ui/g;

    .line 257
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/cc;->c:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    if-eqz v0, :cond_d

    .line 99
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/c;->f()V

    .line 101
    :cond_d
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/cc;->c:Z

    if-eqz v0, :cond_5

    .line 117
    :cond_4
    :goto_4
    return-void

    .line 111
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/cc;->c:Z

    .line 112
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    if-eqz v0, :cond_4

    .line 113
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->d:Lcom/google/android/maps/rideabout/view/j;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/j;->a(Lcom/google/android/maps/rideabout/view/c;)V

    .line 114
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->e:Lcom/google/android/maps/rideabout/view/i;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/i;->a(Lcom/google/android/maps/rideabout/view/c;)V

    .line 115
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/c;->e()V

    goto :goto_4
.end method

.method public d()V
    .registers 3

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/cc;->c:Z

    if-nez v0, :cond_5

    .line 131
    :cond_4
    :goto_4
    return-void

    .line 127
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/cc;->c:Z

    .line 128
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    if-eqz v0, :cond_4

    .line 129
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->d:Lcom/google/android/maps/rideabout/view/j;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/j;->b(Lcom/google/android/maps/rideabout/view/c;)V

    goto :goto_4
.end method

.method public e()V
    .registers 2

    .prologue
    .line 138
    sget-object v0, Lcom/google/googlenav/ui/view/android/ce;->b:Lcom/google/googlenav/ui/view/android/ce;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->b:Lcom/google/googlenav/ui/view/android/ce;

    .line 139
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    if-eqz v0, :cond_d

    .line 140
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/c;->g()V

    .line 142
    :cond_d
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 149
    sget-object v0, Lcom/google/googlenav/ui/view/android/ce;->a:Lcom/google/googlenav/ui/view/android/ce;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->b:Lcom/google/googlenav/ui/view/android/ce;

    .line 150
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    if-eqz v0, :cond_d

    .line 151
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/c;->f()V

    .line 153
    :cond_d
    return-void
.end method

.method public g()V
    .registers 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    if-nez v0, :cond_5

    .line 178
    :goto_4
    return-void

    .line 171
    :cond_5
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/cc;->c:Z

    if-eqz v0, :cond_19

    .line 172
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->d:Lcom/google/android/maps/rideabout/view/j;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/j;->b(Lcom/google/android/maps/rideabout/view/c;)V

    .line 173
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->e:Lcom/google/android/maps/rideabout/view/i;

    if-eqz v0, :cond_19

    .line 174
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->e:Lcom/google/android/maps/rideabout/view/i;

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/i;->d()V

    .line 177
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    goto :goto_4
.end method

.method public h()Lcom/google/android/maps/rideabout/view/j;
    .registers 3

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/cc;->c:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->b:Lcom/google/googlenav/ui/view/android/ce;

    sget-object v1, Lcom/google/googlenav/ui/view/android/ce;->b:Lcom/google/googlenav/ui/view/android/ce;

    if-ne v0, v1, :cond_d

    .line 186
    :cond_a
    sget-object v0, Lcom/google/android/maps/rideabout/view/g;->a:Lcom/google/android/maps/rideabout/view/j;

    .line 188
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->d:Lcom/google/android/maps/rideabout/view/j;

    goto :goto_c
.end method

.method public i()Lcom/google/android/maps/rideabout/view/i;
    .registers 3

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/cc;->c:Z

    if-nez v0, :cond_7

    .line 197
    sget-object v0, Lcom/google/android/maps/rideabout/view/f;->a:Lcom/google/android/maps/rideabout/view/i;

    .line 204
    :goto_6
    return-object v0

    .line 199
    :cond_7
    sget-object v0, Lcom/google/googlenav/ui/view/android/cd;->a:[I

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/cc;->b:Lcom/google/googlenav/ui/view/android/ce;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/ce;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 204
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->d:Lcom/google/android/maps/rideabout/view/j;

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/j;->h()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    goto :goto_6

    .line 201
    :pswitch_1b
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->e:Lcom/google/android/maps/rideabout/view/i;

    goto :goto_6

    .line 199
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
    .end packed-switch
.end method

.method public j()Lcom/google/android/maps/rideabout/view/h;
    .registers 3

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/cc;->c:Z

    if-nez v0, :cond_7

    .line 214
    sget-object v0, Lcom/google/android/maps/rideabout/view/e;->a:Lcom/google/android/maps/rideabout/view/h;

    .line 221
    :goto_6
    return-object v0

    .line 216
    :cond_7
    sget-object v0, Lcom/google/googlenav/ui/view/android/cd;->a:[I

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/cc;->b:Lcom/google/googlenav/ui/view/android/ce;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/ce;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 221
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->d:Lcom/google/android/maps/rideabout/view/j;

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/j;->i()Lcom/google/android/maps/rideabout/view/h;

    move-result-object v0

    goto :goto_6

    .line 218
    :pswitch_1b
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->f:Lcom/google/android/maps/rideabout/view/h;

    goto :goto_6

    .line 216
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
    .end packed-switch
.end method

.method public k()Lcom/google/android/maps/rideabout/view/j;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->d:Lcom/google/android/maps/rideabout/view/j;

    return-object v0
.end method

.method public l()V
    .registers 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/cc;->g()V

    .line 244
    sget-object v0, Lcom/google/android/maps/rideabout/view/g;->a:Lcom/google/android/maps/rideabout/view/j;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->d:Lcom/google/android/maps/rideabout/view/j;

    .line 245
    sget-object v0, Lcom/google/android/maps/rideabout/view/f;->a:Lcom/google/android/maps/rideabout/view/i;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->e:Lcom/google/android/maps/rideabout/view/i;

    .line 246
    sget-object v0, Lcom/google/android/maps/rideabout/view/e;->a:Lcom/google/android/maps/rideabout/view/h;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->f:Lcom/google/android/maps/rideabout/view/h;

    .line 247
    return-void
.end method

.method public m()V
    .registers 2

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->h:Lcom/google/googlenav/ui/g;

    .line 261
    return-void
.end method

.method public n()Lcom/google/googlenav/ui/g;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->h:Lcom/google/googlenav/ui/g;

    return-object v0
.end method

.method public o()V
    .registers 3

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    if-eqz v1, :cond_13

    .line 270
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/c;->h()LE/h;

    move-result-object v0

    invoke-virtual {v0}, LE/h;->c()LE/j;

    move-result-object v0

    invoke-virtual {v0}, LE/j;->c()LaP/a;

    move-result-object v0

    .line 272
    :cond_13
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/cc;->d:Lcom/google/android/maps/rideabout/view/j;

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->setLocationMarkerVisibleOnScreen(LaP/a;)V

    .line 273
    return-void
.end method
