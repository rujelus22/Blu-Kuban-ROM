.class Lcom/estrongs/android/pop/view/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/ba;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/a;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/b;->a:Lcom/estrongs/android/pop/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->a:Lcom/estrongs/android/pop/view/a;

    invoke-static {v0, p3}, Lcom/estrongs/android/pop/view/a;->a(Lcom/estrongs/android/pop/view/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->a:Lcom/estrongs/android/pop/view/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/a;->b()V

    return-void
.end method
