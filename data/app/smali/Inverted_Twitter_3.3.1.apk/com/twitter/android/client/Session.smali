.class public final Lcom/twitter/android/client/Session;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/twitter/android/client/Session$LoginStatus;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/twitter/android/network/j;

.field private f:Lcom/twitter/android/api/ac;

.field private g:Lcom/twitter/android/api/i;

.field private h:Lcom/twitter/android/api/af;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/twitter/android/util/x;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/Session;->b:Ljava/lang/String;

    sget-object v0, Lcom/twitter/android/client/Session$LoginStatus;->a:Lcom/twitter/android/client/Session$LoginStatus;

    iput-object v0, p0, Lcom/twitter/android/client/Session;->a:Lcom/twitter/android/client/Session$LoginStatus;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Lcom/twitter/android/client/Session$LoginStatus;->a:Lcom/twitter/android/client/Session$LoginStatus;

    iput-object v0, p0, Lcom/twitter/android/client/Session;->a:Lcom/twitter/android/client/Session$LoginStatus;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/client/Session;->c:Z

    iput-object v1, p0, Lcom/twitter/android/client/Session;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/twitter/android/client/Session;->e:Lcom/twitter/android/network/j;

    iput-object v1, p0, Lcom/twitter/android/client/Session;->f:Lcom/twitter/android/api/ac;

    iput-object v1, p0, Lcom/twitter/android/client/Session;->h:Lcom/twitter/android/api/af;

    return-void
.end method

.method public final a(Lcom/twitter/android/api/ac;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/client/Session;->f:Lcom/twitter/android/api/ac;

    return-void
.end method

.method public final a(Lcom/twitter/android/api/af;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/twitter/android/client/Session;->h:Lcom/twitter/android/api/af;

    :cond_4
    return-void
.end method

.method public final a(Lcom/twitter/android/api/i;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/twitter/android/client/Session;->g:Lcom/twitter/android/api/i;

    :cond_4
    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session$LoginStatus;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/client/Session;->a:Lcom/twitter/android/client/Session$LoginStatus;

    return-void
.end method

.method public final a(Lcom/twitter/android/network/j;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/client/Session;->e:Lcom/twitter/android/network/j;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/client/Session;->d:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twitter/android/client/Session;->c:Z

    return-void
.end method

.method public final b()Lcom/twitter/android/client/Session$LoginStatus;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/client/Session;->a:Lcom/twitter/android/client/Session$LoginStatus;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/client/Session;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/client/Session;->a:Lcom/twitter/android/client/Session$LoginStatus;

    sget-object v1, Lcom/twitter/android/client/Session$LoginStatus;->c:Lcom/twitter/android/client/Session$LoginStatus;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/Session$LoginStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/client/Session;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lcom/twitter/android/api/ac;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/client/Session;->f:Lcom/twitter/android/api/ac;

    return-object v0
.end method

.method public final g()J
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/client/Session;->f:Lcom/twitter/android/api/ac;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/twitter/android/client/Session;->f:Lcom/twitter/android/api/ac;

    iget-wide v0, v0, Lcom/twitter/android/api/ac;->a:J

    goto :goto_6
.end method

.method public final h()Lcom/twitter/android/network/j;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/client/Session;->e:Lcom/twitter/android/network/j;

    return-object v0
.end method

.method public final i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twitter/android/client/Session;->c:Z

    return v0
.end method

.method public final j()Lcom/twitter/android/api/af;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/client/Session;->h:Lcom/twitter/android/api/af;

    return-object v0
.end method
