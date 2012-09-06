.class Lcom/estrongs/android/pop/view/ls;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ls;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ls;->b:Z

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v1, 0x0

    const/16 v0, 0x54

    if-ne p2, v0, :cond_13

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ls;->b:Z

    if-nez v0, :cond_11

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ls;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->finish()V

    :cond_11
    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ls;->b:Z

    :cond_13
    return v1
.end method
