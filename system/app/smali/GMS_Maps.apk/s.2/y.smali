.class public Ls/y;
.super Ls/D;
.source "SourceFile"


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ls/D;-><init>()V

    return-void
.end method

.method static synthetic a(Ls/y;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Ls/y;->c:Z

    return p1
.end method


# virtual methods
.method public B()Z
    .registers 2

    .prologue
    .line 110
    iget-boolean v0, p0, Ls/y;->c:Z

    if-eqz v0, :cond_9

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/y;->c:Z

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_8
    return v0

    :cond_9
    invoke-super {p0}, Ls/D;->B()Z

    move-result v0

    goto :goto_8
.end method

.method public a()V
    .registers 6

    .prologue
    .line 43
    iget-object v0, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v0

    .line 44
    iget-object v1, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 45
    iget-object v1, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->f()Lo/a;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_34

    .line 51
    iget-object v0, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->f()Lo/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/r;->a(Lo/a;)V

    .line 62
    :goto_2b
    const-string v0, "UIState"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->a(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Ls/y;->b()V

    .line 64
    return-void

    .line 53
    :cond_34
    iget-object v1, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->f()Lo/r;

    move-result-object v1

    iget-object v2, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aN;->E()[Lo/P;

    move-result-object v2

    iget-object v3, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v3}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v3

    iget-object v4, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v4}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/aN;->H()[Lo/b;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lo/r;->a(Lm/b;[Lo/P;I[Lo/b;)V

    .line 57
    const-string v1, "i"

    invoke-virtual {v0}, Lm/b;->b()Z

    move-result v0

    if-nez v0, :cond_68

    const/4 v0, 0x1

    :goto_64
    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Z)V

    goto :goto_2b

    :cond_68
    const/4 v0, 0x0

    goto :goto_64

    .line 60
    :cond_6a
    const-string v0, "F"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    goto :goto_2b
.end method

.method protected a(Lo/g;)V
    .registers 7
    .parameter

    .prologue
    const v4, 0x7f0d00bb

    const/4 v3, 0x1

    .line 68
    invoke-virtual {p1}, Lo/g;->m()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 70
    iget-object v0, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-virtual {p1}, Lo/g;->e()[Lo/P;

    move-result-object v1

    new-instance v2, Ls/z;

    invoke-direct {v2, p0}, Ls/z;-><init>(Ls/y;)V

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/google/android/maps/driveabout/app/cI;->a([Lo/P;ZZLcom/google/android/maps/driveabout/app/cJ;)V

    .line 106
    :goto_1c
    return-void

    .line 82
    :cond_1d
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->G()Ljava/lang/String;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_41

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 86
    :try_start_32
    iget-object v1, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->G()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_40
    .catch Ljava/net/URISyntaxException; {:try_start_32 .. :try_end_40} :catch_73

    move-result-object v0

    .line 94
    :cond_41
    :goto_41
    iget-object v1, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/cK;->c()V

    .line 95
    iget-object v1, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/app/cI;->j()V

    .line 96
    if-nez v0, :cond_63

    .line 97
    iget-object v0, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-virtual {p0, p1}, Ls/y;->c(Lo/g;)I

    move-result v1

    invoke-interface {v0, v4, v1}, Lcom/google/android/maps/driveabout/app/cI;->a(II)V

    goto :goto_1c

    .line 100
    :cond_63
    iput-boolean v3, p0, Ls/y;->c:Z

    .line 101
    iget-object v1, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v1

    invoke-virtual {p0, p1}, Ls/y;->c(Lo/g;)I

    move-result v2

    invoke-interface {v1, v4, v2, v0}, Lcom/google/android/maps/driveabout/app/cI;->a(IILandroid/content/Intent;)V

    goto :goto_1c

    .line 88
    :catch_73
    move-exception v1

    goto :goto_41
.end method

.method protected a(Lo/x;[Lo/x;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Ls/y;->a:Ls/n;

    sget-object v1, Ls/w;->e:Ls/w;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 197
    return-void
.end method

.method protected ab()V
    .registers 1

    .prologue
    .line 201
    return-void
.end method

.method public b()V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v3

    .line 123
    const/4 v0, 0x2

    if-ne v3, v0, :cond_9f

    move v0, v1

    .line 126
    :goto_10
    iget-object v4, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v4}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/cK;->j()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/app/a;->b(Z)V

    .line 134
    if-eqz v0, :cond_b0

    .line 135
    iget-object v0, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v0

    invoke-virtual {v0}, Lm/b;->getLatitude()D

    move-result-wide v4

    iget-object v0, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v0

    invoke-virtual {v0}, Lm/b;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v0

    .line 138
    invoke-static {}, Lt/m;->d()Lcom/google/android/maps/driveabout/vector/ei;

    move-result-object v4

    sget-object v5, Lcom/google/android/maps/driveabout/vector/dg;->b:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-virtual {v4, v0, v5}, Lcom/google/android/maps/driveabout/vector/ei;->a(Ln/Q;Lcom/google/android/maps/driveabout/vector/dg;)Lcom/google/android/maps/driveabout/vector/eh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/eh;->b()I

    move-result v0

    .line 140
    const/16 v4, 0x10

    if-gt v0, v4, :cond_a2

    move v0, v1

    .line 142
    :goto_52
    iget-object v4, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v4}, Ls/n;->b()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3}, Lo/O;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lt/q;->a(Landroid/content/Context;Ljava/lang/String;)Lt/s;

    move-result-object v4

    const-string v5, "SatelliteImagery"

    invoke-virtual {v4, v5, v0}, Lt/s;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Ls/y;->h(Z)V

    .line 146
    const/4 v0, 0x3

    if-ne v3, v0, :cond_a4

    .line 148
    iget-object v0, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v3}, Lo/O;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lt/q;->a(Landroid/content/Context;Ljava/lang/String;)Lt/s;

    move-result-object v0

    const-string v2, "BicyclingLayer"

    invoke-virtual {v0, v2, v1}, Lt/s;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Ls/y;->i(Z)V

    .line 156
    :goto_83
    iget-object v0, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 158
    packed-switch v3, :pswitch_data_b2

    .line 166
    const v0, 0x7f0d0067

    .line 168
    :goto_95
    iget-object v1, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/cK;->a(I)V

    .line 170
    :cond_9e
    return-void

    :cond_9f
    move v0, v2

    .line 123
    goto/16 :goto_10

    :cond_a2
    move v0, v2

    .line 140
    goto :goto_52

    .line 152
    :cond_a4
    invoke-virtual {p0, v2}, Ls/y;->i(Z)V

    goto :goto_83

    .line 160
    :pswitch_a8
    const v0, 0x7f0d0068

    .line 161
    goto :goto_95

    .line 163
    :pswitch_ac
    const v0, 0x7f0d0069

    .line 164
    goto :goto_95

    :cond_b0
    move v0, v2

    goto :goto_52

    .line 158
    :pswitch_data_b2
    .packed-switch 0x2
        :pswitch_a8
        :pswitch_ac
    .end packed-switch
.end method

.method public c()V
    .registers 4

    .prologue
    .line 186
    iget-object v0, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    if-nez v0, :cond_18

    iget-object v0, p0, Ls/y;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v0

    if-nez v0, :cond_20

    .line 188
    :cond_18
    iget-object v0, p0, Ls/y;->a:Ls/n;

    sget-object v1, Ls/w;->e:Ls/w;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 190
    :cond_20
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 177
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ca;->f()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_d

    .line 179
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->d()V

    .line 181
    :cond_d
    return-void
.end method
