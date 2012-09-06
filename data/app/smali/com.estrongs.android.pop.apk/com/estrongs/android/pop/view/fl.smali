.class Lcom/estrongs/android/pop/view/fl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/fk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/fk;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/fl;->a:Lcom/estrongs/android/pop/view/fk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fl;->a:Lcom/estrongs/android/pop/view/fk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/fk;->b(Lcom/estrongs/android/pop/view/fk;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->l(Lcom/estrongs/android/pop/view/ff;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fl;->a:Lcom/estrongs/android/pop/view/fk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/fk;->b(Lcom/estrongs/android/pop/view/fk;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/fl;->a:Lcom/estrongs/android/pop/view/fk;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/fk;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/ff;->b(Ljava/util/Map;)V

    :cond_19
    return-void
.end method
