.class Lcom/estrongs/android/pop/view/lq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/lq;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lq;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lq;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->finish()V

    return-void
.end method
