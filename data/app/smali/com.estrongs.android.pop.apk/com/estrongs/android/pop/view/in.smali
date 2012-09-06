.class Lcom/estrongs/android/pop/view/in;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/NewUserView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/NewUserView;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/in;->a:Lcom/estrongs/android/pop/view/NewUserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/in;->a:Lcom/estrongs/android/pop/view/NewUserView;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/NewUserView;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/in;->a:Lcom/estrongs/android/pop/view/NewUserView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/NewUserView;->finish()V

    return-void
.end method
