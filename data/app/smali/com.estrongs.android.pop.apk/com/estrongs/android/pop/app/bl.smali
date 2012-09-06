.class Lcom/estrongs/android/pop/app/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/bj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/bj;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bl;->a:Lcom/estrongs/android/pop/app/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bl;->a:Lcom/estrongs/android/pop/app/bj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/bj;->a(Lcom/estrongs/android/pop/app/bj;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bl;->a:Lcom/estrongs/android/pop/app/bj;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/bj;->dismiss()V

    return-void
.end method
