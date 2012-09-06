.class public Lwc;
.super Lcom/google/android/apps/docs/editors/jsvm/JSObject;
.source "Kix.java"

# interfaces
.implements Lwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/docs/editors/jsvm/JSObject",
        "<",
        "LvF;",
        ">;",
        "Lwb;"
    }
.end annotation


# direct methods
.method constructor <init>(LvF;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 3640
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/JSObject;-><init>(Lvo;J)V

    .line 3641
    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 3654
    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v0

    .line 3655
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->g(J)I

    move-result v0

    .line 3658
    return v0
.end method

.method public a(I)I
    .registers 4
    .parameter

    .prologue
    .line 3892
    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v0

    .line 3893
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(JI)I

    move-result v0

    .line 3896
    return v0
.end method

.method public a(Ljava/lang/String;)I
    .registers 4
    .parameter

    .prologue
    .line 4028
    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v0

    .line 4029
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(JLjava/lang/String;)I

    move-result v0

    .line 4032
    return v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 3909
    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v0

    .line 3910
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(JI)Ljava/lang/String;

    move-result-object v0

    .line 3913
    return-object v0
.end method

.method public a(II)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3671
    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v0

    .line 3672
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(JII)Ljava/lang/String;

    move-result-object v0

    .line 3675
    return-object v0
.end method

.method public a(I)LvB;
    .registers 6
    .parameter

    .prologue
    .line 3977
    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v0

    .line 3978
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->f(JI)J

    move-result-wide v2

    .line 3981
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, LvC;

    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-direct {v1, v0, v2, v3}, LvC;-><init>(LvF;J)V

    move-object v0, v1

    goto :goto_f
.end method

.method public a(II)LvB;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 3994
    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v0

    .line 3995
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(JII)J

    move-result-wide v2

    .line 3998
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, LvC;

    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-direct {v1, v0, v2, v3}, LvC;-><init>(LvF;J)V

    move-object v0, v1

    goto :goto_f
.end method

.method public a(I)Lvz;
    .registers 6
    .parameter

    .prologue
    .line 3773
    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v0

    .line 3774
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->b(JI)J

    move-result-wide v2

    .line 3777
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, LvA;

    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-direct {v1, v0, v2, v3}, LvA;-><init>(LvF;J)V

    move-object v0, v1

    goto :goto_f
.end method

.method public a(I)Lwi;
    .registers 6
    .parameter

    .prologue
    .line 3875
    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v0

    .line 3876
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->d(JI)J

    move-result-wide v2

    .line 3879
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, Lwj;

    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-direct {v1, v0, v2, v3}, Lwj;-><init>(LvF;J)V

    move-object v0, v1

    goto :goto_f
.end method

.method public a(I)Lwk;
    .registers 6
    .parameter

    .prologue
    .line 3841
    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v0

    .line 3842
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->c(JI)J

    move-result-wide v2

    .line 3845
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, Lwl;

    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-direct {v1, v0, v2, v3}, Lwl;-><init>(LvF;J)V

    move-object v0, v1

    goto :goto_f
.end method

.method public a(I)Lwm;
    .registers 6
    .parameter

    .prologue
    .line 3722
    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v0

    .line 3723
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(JI)J

    move-result-wide v2

    .line 3726
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, Lwn;

    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-direct {v1, v0, v2, v3}, Lwn;-><init>(LvF;J)V

    move-object v0, v1

    goto :goto_f
.end method

.method public a()Z
    .registers 5

    .prologue
    .line 3695
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->c(LvF;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 3696
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v1

    const/16 v3, 0x54

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->b(JI)Z

    move-result v1

    invoke-static {v0, v1}, LvF;->c(LvF;Z)Z

    .line 3699
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LvF;->d(LvF;Z)Z

    .line 3701
    :cond_23
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->d(LvF;)Z

    move-result v0

    return v0
.end method

.method public a()[I
    .registers 3

    .prologue
    .line 3807
    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v0

    .line 3808
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(J)[I

    move-result-object v0

    .line 3811
    return-object v0
.end method

.method public a(II)[I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3705
    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v0

    .line 3706
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(JII)[I

    move-result-object v0

    .line 3709
    return-object v0
.end method

.method public a(Ljava/lang/String;)[I
    .registers 4
    .parameter

    .prologue
    .line 3790
    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v0

    .line 3791
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(JLjava/lang/String;)[I

    move-result-object v0

    .line 3794
    return-object v0
.end method

.method public a(I)[LvD;
    .registers 5
    .parameter

    .prologue
    .line 3943
    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v0

    .line 3944
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(JI)[J

    move-result-object v0

    .line 3947
    new-instance v1, Lwd;

    invoke-direct {v1, p0}, Lwd;-><init>(Lwc;)V

    const-class v2, LvD;

    invoke-virtual {p0, v1, v2, v0}, Lwc;->a(Lvp;Ljava/lang/Class;[J)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LvD;

    return-object v0
.end method

.method public b(I)I
    .registers 4
    .parameter

    .prologue
    .line 3960
    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v0

    .line 3961
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->b(JI)I

    move-result v0

    .line 3964
    return v0
.end method

.method public b(I)Lwk;
    .registers 6
    .parameter

    .prologue
    .line 3926
    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v0

    .line 3927
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->e(JI)J

    move-result-wide v2

    .line 3930
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, Lwl;

    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-direct {v1, v0, v2, v3}, Lwl;-><init>(LvF;J)V

    move-object v0, v1

    goto :goto_f
.end method

.method public b()Z
    .registers 5

    .prologue
    .line 3712
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->e(LvF;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 3713
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v1

    const/16 v3, 0x55

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->b(JI)Z

    move-result v1

    invoke-static {v0, v1}, LvF;->e(LvF;Z)Z

    .line 3716
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LvF;->f(LvF;Z)Z

    .line 3718
    :cond_23
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->f(LvF;)Z

    move-result v0

    return v0
.end method

.method public b()[I
    .registers 3

    .prologue
    .line 3858
    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v0

    .line 3859
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->b(J)[I

    move-result-object v0

    .line 3862
    return-object v0
.end method

.method public b(II)[I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3756
    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v0

    .line 3757
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->b(JII)[I

    move-result-object v0

    .line 3760
    return-object v0
.end method

.method public c(I)I
    .registers 4
    .parameter

    .prologue
    .line 4011
    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v0

    .line 4012
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->c(JI)I

    move-result v0

    .line 4015
    return v0
.end method

.method public c()Z
    .registers 5

    .prologue
    .line 3746
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->g(LvF;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 3747
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v1

    const/16 v3, 0x57

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->b(JI)Z

    move-result v1

    invoke-static {v0, v1}, LvF;->g(LvF;Z)Z

    .line 3750
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LvF;->h(LvF;Z)Z

    .line 3752
    :cond_23
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->h(LvF;)Z

    move-result v0

    return v0
.end method

.method public c(II)[I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3824
    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v0

    .line 3825
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->c(JII)[I

    move-result-object v0

    .line 3828
    return-object v0
.end method

.method public d()Z
    .registers 5

    .prologue
    .line 3763
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->i(LvF;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 3764
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v1

    const/16 v3, 0x58

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->b(JI)Z

    move-result v1

    invoke-static {v0, v1}, LvF;->i(LvF;Z)Z

    .line 3767
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LvF;->j(LvF;Z)Z

    .line 3769
    :cond_23
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->j(LvF;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 5

    .prologue
    .line 3814
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->k(LvF;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 3815
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v1

    const/16 v3, 0x5b

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->b(JI)Z

    move-result v1

    invoke-static {v0, v1}, LvF;->k(LvF;Z)Z

    .line 3818
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LvF;->l(LvF;Z)Z

    .line 3820
    :cond_23
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->l(LvF;)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .registers 5

    .prologue
    .line 3882
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->m(LvF;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 3883
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v1

    const/16 v3, 0x5f

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->b(JI)Z

    move-result v1

    invoke-static {v0, v1}, LvF;->m(LvF;Z)Z

    .line 3886
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LvF;->n(LvF;Z)Z

    .line 3888
    :cond_23
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->n(LvF;)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .registers 5

    .prologue
    .line 3984
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->o(LvF;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 3985
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v1

    const/16 v3, 0x65

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->b(JI)Z

    move-result v1

    invoke-static {v0, v1}, LvF;->o(LvF;Z)Z

    .line 3988
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LvF;->p(LvF;Z)Z

    .line 3990
    :cond_23
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->p(LvF;)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .registers 5

    .prologue
    .line 4018
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->q(LvF;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 4019
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-virtual {p0}, Lwc;->a()J

    move-result-wide v1

    const/16 v3, 0x67

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->b(JI)Z

    move-result v1

    invoke-static {v0, v1}, LvF;->q(LvF;Z)Z

    .line 4022
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LvF;->r(LvF;Z)Z

    .line 4024
    :cond_23
    iget-object v0, p0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->r(LvF;)Z

    move-result v0

    return v0
.end method
