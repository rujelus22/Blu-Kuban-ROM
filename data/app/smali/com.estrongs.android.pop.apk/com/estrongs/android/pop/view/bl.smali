.class Lcom/estrongs/android/pop/view/bl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/a/c;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/bj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/bj;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bl;->a:Lcom/estrongs/android/pop/view/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bl;->a:Lcom/estrongs/android/pop/view/bj;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bj;->a:Lcom/estrongs/android/util/a/c;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bl;->a:Lcom/estrongs/android/pop/view/bj;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bj;->a:Lcom/estrongs/android/util/a/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/estrongs/android/util/a/c;->a([BII)V

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bl;->a:Lcom/estrongs/android/pop/view/bj;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bj;->b:Lcom/estrongs/android/util/a/c;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bl;->a:Lcom/estrongs/android/pop/view/bj;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bj;->b:Lcom/estrongs/android/util/a/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/estrongs/android/util/a/c;->a([BII)V

    :cond_1a
    return-void
.end method
