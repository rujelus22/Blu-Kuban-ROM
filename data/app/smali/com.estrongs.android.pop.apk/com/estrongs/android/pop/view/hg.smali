.class Lcom/estrongs/android/pop/view/hg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/hf;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/hf;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/hg;->a:Lcom/estrongs/android/pop/view/hf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hg;->a:Lcom/estrongs/android/pop/view/hf;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/hf;->a(Lcom/estrongs/android/pop/view/hf;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/ff;->e(Z)Z

    return-void
.end method
