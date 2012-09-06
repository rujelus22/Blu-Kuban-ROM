.class public Lcom/google/googlenav/android/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaB/i;
.implements Lat/v;


# static fields
.field public static final a:Lcom/google/googlenav/android/A;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/google/googlenav/android/C;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/googlenav/android/A;

    invoke-direct {v0}, Lcom/google/googlenav/android/A;-><init>()V

    sput-object v0, Lcom/google/googlenav/android/A;->a:Lcom/google/googlenav/android/A;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private l()Z
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/googlenav/android/A;->d:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/android/A;->e:Lcom/google/googlenav/android/C;

    invoke-interface {v0}, Lcom/google/googlenav/android/C;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public a(FF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/googlenav/android/A;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 95
    iget-boolean v0, p0, Lcom/google/googlenav/android/A;->c:Z

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/android/A;->a(FZ)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/android/A;->c:Z

    .line 100
    :cond_e
    return-void
.end method

.method a(FZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/googlenav/android/A;->e:Lcom/google/googlenav/android/C;

    iget-boolean v1, p0, Lcom/google/googlenav/android/A;->b:Z

    invoke-interface {v0, p1, v1, p2}, Lcom/google/googlenav/android/C;->a(FZZ)V

    .line 128
    return-void
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 90
    return-void
.end method

.method public a(Lcom/google/googlenav/android/B;)V
    .registers 3
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/googlenav/android/A;->e:Lcom/google/googlenav/android/C;

    if-eqz v0, :cond_9

    .line 234
    iget-object v0, p0, Lcom/google/googlenav/android/A;->e:Lcom/google/googlenav/android/C;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/C;->a(Lcom/google/googlenav/android/B;)V

    .line 236
    :cond_9
    return-void
.end method

.method public a(Lcom/google/googlenav/android/C;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/googlenav/android/A;->e:Lcom/google/googlenav/android/C;

    .line 77
    return-void
.end method

.method public a(ZZZII)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    iput-boolean p3, p0, Lcom/google/googlenav/android/A;->d:Z

    .line 210
    if-eqz p1, :cond_14

    iget-boolean v0, p0, Lcom/google/googlenav/android/A;->b:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/googlenav/android/A;->j()Z

    move-result v0

    if-nez v0, :cond_14

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/android/A;->b:Z

    .line 216
    invoke-virtual {p0}, Lcom/google/googlenav/android/A;->g()V

    .line 218
    :cond_14
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/googlenav/android/A;->b:Z

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/googlenav/android/A;->f:Z

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->w()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public c()V
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/android/A;->f:Z

    .line 81
    invoke-static {}, LaB/h;->i()LaB/h;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_c

    .line 83
    invoke-virtual {v0, p0}, LaB/h;->a(LaB/i;)V

    .line 85
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/android/A;->e:Lcom/google/googlenav/android/C;

    invoke-interface {v0, p0}, Lcom/google/googlenav/android/C;->a(Lat/v;)V

    .line 86
    return-void
.end method

.method d()Z
    .registers 2

    .prologue
    .line 108
    sget-object v0, Lcom/google/googlenav/android/A;->a:Lcom/google/googlenav/android/A;

    invoke-virtual {v0}, Lcom/google/googlenav/android/A;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/googlenav/android/A;->b:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/google/googlenav/android/A;->l()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public e()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 135
    iget-boolean v0, p0, Lcom/google/googlenav/android/A;->b:Z

    if-nez v0, :cond_10

    .line 137
    iput-boolean v1, p0, Lcom/google/googlenav/android/A;->b:Z

    .line 138
    iput-boolean v1, p0, Lcom/google/googlenav/android/A;->c:Z

    .line 139
    invoke-virtual {p0}, Lcom/google/googlenav/android/A;->f()V

    .line 147
    :goto_c
    invoke-virtual {p0}, Lcom/google/googlenav/android/A;->g()V

    .line 148
    return-void

    .line 143
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/android/A;->b:Z

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/android/A;->a(FZ)V

    goto :goto_c
.end method

.method f()V
    .registers 4

    .prologue
    .line 152
    invoke-static {}, LaB/h;->i()LaB/h;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_19

    .line 155
    const/16 v0, 0x62

    const-string v1, "a"

    invoke-static {}, LaB/h;->i()LaB/h;

    move-result-object v2

    invoke-virtual {v2}, LaB/h;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_19
    return-void
.end method

.method public g()V
    .registers 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/googlenav/android/A;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 177
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/e;->k()Z

    move-result v0

    .line 178
    if-nez v0, :cond_17

    .line 179
    iget-object v0, p0, Lcom/google/googlenav/android/A;->e:Lcom/google/googlenav/android/C;

    iget-boolean v1, p0, Lcom/google/googlenav/android/A;->b:Z

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/C;->a(Z)V

    .line 181
    :cond_17
    invoke-static {}, LaB/h;->i()LaB/h;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/googlenav/android/A;->b:Z

    if-eqz v0, :cond_25

    sget-object v0, LaB/j;->c:LaB/j;

    :goto_21
    invoke-virtual {v1, v0}, LaB/h;->a(LaB/j;)V

    .line 185
    :cond_24
    return-void

    .line 181
    :cond_25
    sget-object v0, LaB/j;->b:LaB/j;

    goto :goto_21
.end method

.method public h()V
    .registers 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/google/googlenav/android/A;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/googlenav/android/A;->b:Z

    if-eqz v0, :cond_d

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/android/A;->b:Z

    .line 197
    :cond_d
    invoke-virtual {p0}, Lcom/google/googlenav/android/A;->g()V

    .line 198
    return-void
.end method

.method public i()V
    .registers 2

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/android/A;->d:Z

    .line 203
    invoke-virtual {p0}, Lcom/google/googlenav/android/A;->g()V

    .line 204
    return-void
.end method

.method j()Z
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/googlenav/android/A;->e:Lcom/google/googlenav/android/C;

    invoke-interface {v0}, Lcom/google/googlenav/android/C;->b()Z

    move-result v0

    return v0
.end method

.method public k()I
    .registers 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/googlenav/android/A;->e:Lcom/google/googlenav/android/C;

    iget-boolean v1, p0, Lcom/google/googlenav/android/A;->b:Z

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/C;->b(Z)I

    move-result v0

    return v0
.end method
