.class Lcom/estrongs/android/pop/view/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/view/h;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/e;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/f;->a:Lcom/estrongs/android/pop/view/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/f;->a:Lcom/estrongs/android/pop/view/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/e;->a(Lcom/estrongs/android/pop/view/e;)Lcom/estrongs/android/pop/view/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/view/h;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/f;->a:Lcom/estrongs/android/pop/view/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/e;->dismiss()V

    return-void
.end method
