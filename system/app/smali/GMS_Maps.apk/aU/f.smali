.class LaU/f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:LaU/d;


# direct methods
.method private constructor <init>(LaU/d;)V
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, LaU/f;->a:LaU/d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LaU/d;LaU/e;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, LaU/f;-><init>(LaU/d;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)LaU/b;
    .registers 3
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, LaU/f;->a:LaU/d;

    invoke-static {v0}, LaU/d;->a(LaU/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LaU/a;->a(Landroid/content/Context;)LaU/b;

    move-result-object v0

    return-object v0
.end method

.method protected a(LaU/b;)V
    .registers 5
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, LaU/f;->a:LaU/d;

    iget-object v1, p0, LaU/f;->a:LaU/d;

    invoke-static {v1}, LaU/d;->b(LaU/d;)LaU/c;

    move-result-object v1

    invoke-static {v0, v1}, LaU/d;->a(LaU/d;LaU/c;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 145
    iget-object v0, p0, LaU/f;->a:LaU/d;

    invoke-static {v0}, LaU/d;->c(LaU/d;)LaV/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LaV/a;->a(LaU/b;)V

    .line 147
    :cond_17
    iget-object v0, p0, LaU/f;->a:LaU/d;

    invoke-static {v0, p1}, LaU/d;->a(LaU/d;LaU/b;)LaU/b;

    .line 148
    iget-object v0, p0, LaU/f;->a:LaU/d;

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->d()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, LaU/d;->a(LaU/d;J)J

    .line 149
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 129
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, LaU/f;->a([Ljava/lang/Void;)LaU/b;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 129
    check-cast p1, LaU/b;

    invoke-virtual {p0, p1}, LaU/f;->a(LaU/b;)V

    return-void
.end method
