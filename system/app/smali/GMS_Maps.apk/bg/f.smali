.class Lbg/f;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lbg/d;


# direct methods
.method private constructor <init>(Lbg/d;)V
    .registers 2

    iput-object p1, p0, Lbg/f;->a:Lbg/d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbg/d;Lbg/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lbg/f;-><init>(Lbg/d;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lbg/b;
    .registers 3

    iget-object v0, p0, Lbg/f;->a:Lbg/d;

    invoke-static {v0}, Lbg/d;->a(Lbg/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbg/a;->a(Landroid/content/Context;)Lbg/b;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lbg/b;)V
    .registers 5

    iget-object v0, p0, Lbg/f;->a:Lbg/d;

    iget-object v1, p0, Lbg/f;->a:Lbg/d;

    invoke-static {v1}, Lbg/d;->b(Lbg/d;)Lbg/c;

    move-result-object v1

    invoke-static {v0, v1}, Lbg/d;->a(Lbg/d;Lbg/c;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lbg/f;->a:Lbg/d;

    invoke-static {v0}, Lbg/d;->c(Lbg/d;)Lbh/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbh/a;->a(Lbg/b;)V

    :cond_17
    iget-object v0, p0, Lbg/f;->a:Lbg/d;

    invoke-static {v0, p1}, Lbg/d;->a(Lbg/d;Lbg/b;)Lbg/b;

    iget-object v0, p0, Lbg/f;->a:Lbg/d;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->d()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lbg/d;->a(Lbg/d;J)J

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lbg/f;->a([Ljava/lang/Void;)Lbg/b;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lbg/b;

    invoke-virtual {p0, p1}, Lbg/f;->a(Lbg/b;)V

    return-void
.end method
