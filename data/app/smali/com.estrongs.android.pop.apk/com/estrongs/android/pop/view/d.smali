.class Lcom/estrongs/android/pop/view/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ChangePermActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ChangePermActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/d;->a:Lcom/estrongs/android/pop/view/ChangePermActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->a:Lcom/estrongs/android/pop/view/ChangePermActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->finish()V

    return-void
.end method
