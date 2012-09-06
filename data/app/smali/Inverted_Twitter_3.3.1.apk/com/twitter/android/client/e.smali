.class final Lcom/twitter/android/client/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Lcom/twitter/android/client/b;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/b;Landroid/content/Context;Ljava/lang/String;J)V
    .registers 6

    iput-object p1, p0, Lcom/twitter/android/client/e;->d:Lcom/twitter/android/client/b;

    iput-object p2, p0, Lcom/twitter/android/client/e;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/twitter/android/client/e;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/twitter/android/client/e;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/client/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->b(Ljava/lang/String;)Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->b()Lcom/twitter/android/client/Session$LoginStatus;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/client/Session$LoginStatus;->a:Lcom/twitter/android/client/Session$LoginStatus;

    if-ne v0, v1, :cond_2f

    iget-object v0, p0, Lcom/twitter/android/client/e;->a:Landroid/content/Context;

    iget-wide v1, p0, Lcom/twitter/android/client/e;->c:J

    invoke-static {v1, v2}, Lcom/twitter/android/provider/ae;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/twitter/android/client/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/provider/a;->d(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/twitter/android/client/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/provider/a;->c(Ljava/lang/String;)I

    :cond_2f
    return-void
.end method
