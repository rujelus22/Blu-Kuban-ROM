.class public Lcom/google/googlenav/login/a;
.super Lcom/google/googlenav/login/g;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/google/googlenav/android/ac;

.field private final c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/googlenav/android/ac;Z)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/login/g;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/login/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/login/a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/login/a;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/googlenav/login/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/googlenav/login/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/googlenav/login/a;->b:Lcom/google/googlenav/android/ac;

    iput-boolean p3, p0, Lcom/google/googlenav/login/a;->c:Z

    invoke-direct {p0}, Lcom/google/googlenav/login/a;->y()V

    invoke-direct {p0}, Lcom/google/googlenav/login/a;->x()V

    invoke-super {p0}, Lcom/google/googlenav/login/g;->i()V

    return-void
.end method

.method private A()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/login/a;->a:Landroid/content/Context;

    const-string v1, "ids"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sid_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private B()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/login/a;->a:Landroid/content/Context;

    const-string v1, "ids"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lsid_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private C()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/login/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/google/googlenav/login/f;->a()Lcom/google/googlenav/login/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/login/a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/login/a;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/google/googlenav/login/a;->c:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/login/f;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    iput-object v4, p0, Lcom/google/googlenav/login/a;->d:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/googlenav/login/a;->e:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/googlenav/login/a;->f:Ljava/lang/String;

    :cond_18
    return-void
.end method

.method private D()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/login/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/googlenav/login/a;->b:Lcom/google/googlenav/android/ac;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/login/a;->b:Lcom/google/googlenav/android/ac;

    new-instance v1, Lcom/google/googlenav/login/b;

    invoke-direct {v1, p0}, Lcom/google/googlenav/login/b;-><init>(Lcom/google/googlenav/login/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    :goto_14
    invoke-virtual {p0}, Lcom/google/googlenav/login/a;->u()V

    return-void

    :cond_18
    invoke-virtual {p0}, Lcom/google/googlenav/login/a;->p()V

    goto :goto_14
.end method

.method private E()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/login/a;->m()V

    invoke-virtual {p0}, Lcom/google/googlenav/login/a;->s()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/googlenav/android/ac;)Lcom/google/googlenav/login/g;
    .registers 4

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->aw()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    new-instance v1, Lcom/google/googlenav/login/a;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/googlenav/login/a;-><init>(Landroid/content/Context;Lcom/google/googlenav/android/ac;Z)V

    invoke-static {v1}, Lcom/google/googlenav/login/g;->a(Lcom/google/googlenav/login/g;)V

    :goto_13
    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    return-object v0

    :cond_18
    new-instance v0, Lcom/google/googlenav/login/d;

    invoke-direct {v0}, Lcom/google/googlenav/login/d;-><init>()V

    invoke-static {v0}, Lcom/google/googlenav/login/g;->a(Lcom/google/googlenav/login/g;)V

    goto :goto_13
.end method

.method private a(ZZ)V
    .registers 9

    if-eqz p2, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/login/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v2, p0, Lcom/google/googlenav/login/a;->d:Ljava/lang/String;

    :goto_8
    invoke-static {}, Lcom/google/googlenav/login/f;->a()Lcom/google/googlenav/login/f;

    move-result-object v0

    iget-object v4, p0, Lcom/google/googlenav/login/a;->a:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/google/googlenav/login/a;->c:Z

    move v1, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/login/f;->a(ZLjava/lang/String;ZLandroid/content/Context;Z)V

    return-void

    :cond_16
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public static b(Landroid/content/Context;Lcom/google/googlenav/android/ac;)Lcom/google/googlenav/login/g;
    .registers 4

    const/4 v0, 0x1

    new-instance v1, Lcom/google/googlenav/login/a;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/googlenav/login/a;-><init>(Landroid/content/Context;Lcom/google/googlenav/android/ac;Z)V

    invoke-static {v1}, Lcom/google/googlenav/login/g;->a(Lcom/google/googlenav/login/g;)V

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lbf/b;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lar/b;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/login/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/login/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/googlenav/login/a;->n()V

    invoke-virtual {p0}, Lcom/google/googlenav/login/a;->t()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    if-eqz p4, :cond_6

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/login/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void

    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/login/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lar/b;->b([B)[B

    move-result-object v0

    if-eqz v0, :cond_2c

    array-length v2, v0

    if-lez v2, :cond_2c

    invoke-static {v0}, Lbf/b;->b([B)[B

    move-result-object v2

    if-eqz v2, :cond_2c

    array-length v0, v2

    if-lez v0, :cond_2c

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_28
    .catch Lar/c; {:try_start_1 .. :try_end_28} :catch_29

    :goto_28
    return-object v0

    :catch_29
    move-exception v0

    move-object v0, v1

    goto :goto_28

    :cond_2c
    move-object v0, v1

    goto :goto_28
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/login/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/googlenav/login/a;->s()V

    return-void
.end method

.method private c(Z)V
    .registers 2

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/google/googlenav/login/a;->D()V

    :goto_5
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/google/googlenav/login/a;->E()V

    goto :goto_5
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/google/googlenav/login/a;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/login/a;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/login/a;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/login/a;->a:Landroid/content/Context;

    const-string v1, "ids"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auth_token"

    iget-object v2, p0, Lcom/google/googlenav/login/a;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/googlenav/login/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sid_token"

    iget-object v2, p0, Lcom/google/googlenav/login/a;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/googlenav/login/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lsid_token"

    iget-object v2, p0, Lcom/google/googlenav/login/a;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/googlenav/login/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lag/b;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private x()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/login/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/google/googlenav/login/a;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/login/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/login/a;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/googlenav/login/a;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/login/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/login/a;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/googlenav/login/a;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/login/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/login/a;->f:Ljava/lang/String;

    return-void
.end method

.method private y()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/login/a;->a:Landroid/content/Context;

    const-string v1, "login_helper"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_34

    const-string v1, "auth_token"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    const-string v1, "auth_token"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sid_token"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lsid_token"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/google/googlenav/login/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_34
    return-void
.end method

.method private z()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/login/a;->a:Landroid/content/Context;

    const-string v1, "ids"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auth_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/login/a;->x()V

    invoke-super {p0}, Lcom/google/googlenav/login/g;->a()V

    return-void
.end method

.method public a(I)V
    .registers 5

    if-gez p1, :cond_3

    :goto_2
    :pswitch_2
    return-void

    :cond_3
    packed-switch p1, :pswitch_data_1e

    :pswitch_6
    iget-object v0, p0, Lcom/google/googlenav/login/a;->b:Lcom/google/googlenav/android/ac;

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/login/a;->b:Lcom/google/googlenav/android/ac;

    new-instance v2, Lcom/google/googlenav/login/c;

    invoke-direct {v2, p0}, Lcom/google/googlenav/login/c;-><init>(Lcom/google/googlenav/login/a;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    goto :goto_2

    :pswitch_16
    invoke-virtual {p0}, Lcom/google/googlenav/login/a;->h()V

    goto :goto_2

    :cond_1a
    invoke-virtual {p0}, Lcom/google/googlenav/login/a;->p()V

    goto :goto_2

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_16
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V
    .registers 8

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/login/a;->b(Z)V

    invoke-virtual {p0, p5}, Lcom/google/googlenav/login/a;->b(Lcom/google/googlenav/login/h;)V

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/login/a;->a(ZZ)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/googlenav/login/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/login/a;->c(Z)V

    return-void
.end method

.method protected b()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/login/a;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/login/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/login/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/login/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected f()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/login/a;->C()V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lat/h;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/login/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/google/googlenav/login/a;->a(ZZ)V

    return-void
.end method

.method public h()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/googlenav/login/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/google/googlenav/login/a;->h:Z

    if-nez v0, :cond_14

    iput-boolean v1, p0, Lcom/google/googlenav/login/a;->h:Z

    invoke-direct {p0, v2, v1}, Lcom/google/googlenav/login/a;->a(ZZ)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    iput-boolean v2, p0, Lcom/google/googlenav/login/a;->h:Z

    goto :goto_13
.end method
