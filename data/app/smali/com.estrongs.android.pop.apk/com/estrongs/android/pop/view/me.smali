.class Lcom/estrongs/android/pop/view/me;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/TitleEditor;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/TitleEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/me;->a:Lcom/estrongs/android/pop/view/TitleEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/view/me;->a:Lcom/estrongs/android/pop/view/TitleEditor;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/TitleEditor;->onClick(Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
