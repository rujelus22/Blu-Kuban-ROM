.class Lcom/estrongs/android/pop/view/hf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ff;

.field private volatile b:Z

.field private volatile c:Z


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ff;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/hf;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/hf;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/hf;)Lcom/estrongs/android/pop/view/ff;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hf;->a:Lcom/estrongs/android/pop/view/ff;

    return-object v0
.end method


# virtual methods
.method a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/hf;->b:Z

    return v0
.end method

.method public run()V
    .registers 4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/hf;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hf;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/ff;->s()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/hf;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hf;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->f(Lcom/estrongs/android/pop/view/ff;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hf;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->g(Lcom/estrongs/android/pop/view/ff;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/hg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/hg;-><init>(Lcom/estrongs/android/pop/view/hf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/hf;->c:Z

    return-void
.end method
