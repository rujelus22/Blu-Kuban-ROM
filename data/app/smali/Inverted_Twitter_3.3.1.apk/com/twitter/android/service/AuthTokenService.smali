.class public Lcom/twitter/android/service/AuthTokenService;
.super Landroid/app/Service;


# instance fields
.field private a:Landroid/os/Looper;

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Handler;

.field private d:Lcom/twitter/android/network/d;

.field private e:Lcom/twitter/android/network/o;

.field private final f:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/twitter/android/service/a;

    invoke-direct {v0, p0}, Lcom/twitter/android/service/a;-><init>(Lcom/twitter/android/service/AuthTokenService;)V

    iput-object v0, p0, Lcom/twitter/android/service/AuthTokenService;->f:Landroid/os/IBinder;

    return-void
.end method

.method private a(Lcom/twitter/android/service/c;ILcom/twitter/android/network/j;Ljava/lang/String;J)V
    .registers 16

    iget-object v8, p0, Lcom/twitter/android/service/AuthTokenService;->c:Landroid/os/Handler;

    new-instance v0, Lcom/twitter/android/service/d;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/service/d;-><init>(Lcom/twitter/android/service/AuthTokenService;Lcom/twitter/android/service/c;ILcom/twitter/android/network/j;Ljava/lang/String;J)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/service/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    iget-object v6, p0, Lcom/twitter/android/service/AuthTokenService;->b:Landroid/os/Handler;

    new-instance v0, Lcom/twitter/android/service/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/service/b;-><init>(Lcom/twitter/android/service/AuthTokenService;Lcom/twitter/android/service/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method final b(Lcom/twitter/android/service/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    const/16 v9, 0x200

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/twitter/android/network/a;

    invoke-direct {v0, v3, p2, p3}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/j;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/twitter/android/service/AuthTokenService;->e:Lcom/twitter/android/network/o;

    iget-object v4, v4, Lcom/twitter/android/network/o;->a:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/oauth/request_token"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "x_auth_mode"

    const-string v7, "reverse_auth"

    invoke-static {v1, v4, v7}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iget-object v7, p0, Lcom/twitter/android/service/AuthTokenService;->d:Lcom/twitter/android/network/d;

    iget-object v8, p0, Lcom/twitter/android/service/AuthTokenService;->e:Lcom/twitter/android/network/o;

    invoke-static {v7, v8, v1, v0, v4}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->b()Z

    move-result v0

    if-eqz v0, :cond_db

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    new-instance v4, Landroid/accounts/Account;

    const-string v7, "com.twitter.android.auth.login"

    invoke-direct {v4, p4, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/twitter/android/platform/j;->b(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/twitter/android/network/j;

    move-result-object v1

    if-nez v1, :cond_59

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/service/AuthTokenService;->a(Lcom/twitter/android/service/c;ILcom/twitter/android/network/j;Ljava/lang/String;J)V

    :goto_58
    return-void

    :cond_59
    new-instance v2, Lcom/twitter/android/network/a;

    invoke-direct {v2, v1}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/j;)V

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/twitter/android/service/AuthTokenService;->e:Lcom/twitter/android/network/o;

    iget-object v4, v4, Lcom/twitter/android/network/o;->a:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/oauth/access_token"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "x_reverse_auth_target"

    invoke-static {v1, v4, p2}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "x_reverse_auth_parameters"

    invoke-static {v1, v4, v0}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iget-object v4, p0, Lcom/twitter/android/service/AuthTokenService;->d:Lcom/twitter/android/network/d;

    iget-object v7, p0, Lcom/twitter/android/service/AuthTokenService;->e:Lcom/twitter/android/network/o;

    invoke-static {v4, v7, v1, v2, v0}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/c;->b()Z

    move-result v2

    if-eqz v2, :cond_d1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/twitter/android/network/a;->a(Ljava/lang/String;Z)Ljava/util/TreeMap;

    move-result-object v5

    iget v2, v1, Lcom/twitter/android/network/c;->b:I

    new-instance v3, Lcom/twitter/android/network/j;

    const-string v0, "oauth_token"

    invoke-virtual {v5, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "oauth_token_secret"

    invoke-virtual {v5, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v0, v1}, Lcom/twitter/android/network/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "screen_name"

    invoke-virtual {v5, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v0, "user_id"

    invoke-virtual {v5, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/service/AuthTokenService;->a(Lcom/twitter/android/service/c;ILcom/twitter/android/network/j;Ljava/lang/String;J)V

    goto :goto_58

    :cond_d1
    iget v2, v1, Lcom/twitter/android/network/c;->b:I

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/service/AuthTokenService;->a(Lcom/twitter/android/service/c;ILcom/twitter/android/network/j;Ljava/lang/String;J)V

    goto/16 :goto_58

    :cond_db
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/service/AuthTokenService;->a(Lcom/twitter/android/service/c;ILcom/twitter/android/network/j;Ljava/lang/String;J)V

    goto/16 :goto_58
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/service/AuthTokenService;->f:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/service/AuthTokenService;->d:Lcom/twitter/android/network/d;

    invoke-static {p0}, Lcom/twitter/android/network/o;->a(Landroid/content/Context;)Lcom/twitter/android/network/o;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/service/AuthTokenService;->e:Lcom/twitter/android/network/o;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AuthTokenService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/service/AuthTokenService;->a:Landroid/os/Looper;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/twitter/android/service/AuthTokenService;->a:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/twitter/android/service/AuthTokenService;->b:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/service/AuthTokenService;->c:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/service/AuthTokenService;->a:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method
