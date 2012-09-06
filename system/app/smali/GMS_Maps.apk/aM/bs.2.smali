.class LaM/bs;
.super Lcom/google/googlenav/ui/view/b;
.source "SourceFile"


# instance fields
.field final synthetic a:LaM/bj;


# direct methods
.method constructor <init>(LaM/bj;)V
    .registers 2
    .parameter

    .prologue
    .line 3062
    iput-object p1, p0, LaM/bs;->a:LaM/bj;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/16 v4, 0x9

    const/4 v1, 0x0

    .line 3067
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aI()Z

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz p1, :cond_2a

    instance-of v0, p1, Lcom/google/googlenav/ui/android/ao;

    if-eqz v0, :cond_2a

    .line 3069
    check-cast p1, Lcom/google/googlenav/ui/android/ao;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/android/ao;->a()I

    move-result v0

    .line 3075
    :goto_1c
    iget-object v2, p0, LaM/bs;->a:LaM/bj;

    invoke-virtual {v2, v1}, LaM/bj;->b(I)V

    .line 3076
    iget-object v2, p0, LaM/bs;->a:LaM/bj;

    invoke-virtual {v2, v1}, LaM/bj;->b(Z)V

    .line 3078
    packed-switch v0, :pswitch_data_98

    .line 3104
    :goto_29
    return v6

    :cond_2a
    move v0, v1

    .line 3072
    goto :goto_1c

    .line 3080
    :pswitch_2c
    iget-object v0, p0, LaM/bs;->a:LaM/bj;

    const/16 v2, 0xa

    iget-object v3, p0, LaM/bs;->a:LaM/bj;

    invoke-virtual {v3}, LaM/bj;->bt()Lcom/google/googlenav/ai;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, LaM/bj;->a(ILcom/google/googlenav/ai;)V

    .line 3082
    iget-object v0, p0, LaM/bs;->a:LaM/bj;

    invoke-static {v0}, LaM/bj;->c(LaM/bj;)V

    .line 3085
    iget-object v0, p0, LaM/bs;->a:LaM/bj;

    const-string v2, "m"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, LaM/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3086
    iget-object v0, p0, LaM/bs;->a:LaM/bj;

    invoke-virtual {v0, v4, v5}, LaM/bj;->a(ILjava/lang/Object;)V

    .line 3088
    iget-object v0, p0, LaM/bs;->a:LaM/bj;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LaM/bj;->f(I)V

    goto :goto_29

    .line 3091
    :pswitch_55
    iget-object v0, p0, LaM/bs;->a:LaM/bj;

    iget-object v1, p0, LaM/bs;->a:LaM/bj;

    invoke-virtual {v1}, LaM/bj;->bt()Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, LaM/bj;->a(ILcom/google/googlenav/ai;)V

    .line 3092
    iget-object v0, p0, LaM/bs;->a:LaM/bj;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v3, v5}, LaM/bj;->a(IILjava/lang/Object;)Z

    goto :goto_29

    .line 3095
    :pswitch_68
    iget-object v0, p0, LaM/bs;->a:LaM/bj;

    const/16 v1, 0x8

    iget-object v2, p0, LaM/bs;->a:LaM/bj;

    invoke-virtual {v2}, LaM/bj;->bt()Lcom/google/googlenav/ai;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LaM/bj;->a(ILcom/google/googlenav/ai;)V

    .line 3096
    iget-object v0, p0, LaM/bs;->a:LaM/bj;

    new-instance v1, Lcom/google/googlenav/ui/wizard/A;

    iget-object v2, p0, LaM/bs;->a:LaM/bj;

    invoke-virtual {v2}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/google/googlenav/ui/wizard/A;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, LaM/bj;->a(Lcom/google/googlenav/ui/wizard/A;)V

    goto :goto_29

    .line 3100
    :pswitch_86
    iget-object v0, p0, LaM/bs;->a:LaM/bj;

    const/4 v1, 0x7

    iget-object v2, p0, LaM/bs;->a:LaM/bj;

    invoke-virtual {v2}, LaM/bj;->bt()Lcom/google/googlenav/ai;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LaM/bj;->a(ILcom/google/googlenav/ai;)V

    .line 3101
    iget-object v0, p0, LaM/bs;->a:LaM/bj;

    invoke-virtual {v0, v6, v3, v5}, LaM/bj;->a(IILjava/lang/Object;)Z

    goto :goto_29

    .line 3078
    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_86
        :pswitch_55
        :pswitch_68
    .end packed-switch
.end method
