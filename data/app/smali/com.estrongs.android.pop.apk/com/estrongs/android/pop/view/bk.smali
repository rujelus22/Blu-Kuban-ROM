.class Lcom/estrongs/android/pop/view/bk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/a/a;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/bj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/bj;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bk;->a:Lcom/estrongs/android/pop/view/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bk;->a:Lcom/estrongs/android/pop/view/bj;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/bj;->a(Lcom/estrongs/android/pop/view/bj;)Lcom/estrongs/android/pop/view/bd;

    move-result-object v0

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/bd;->g:Z

    return v0
.end method
