.class Lcom/estrongs/android/pop/view/mg;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/TitleEditor;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/TitleEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/mg;->a:Lcom/estrongs/android/pop/view/TitleEditor;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/mg;->a:Lcom/estrongs/android/pop/view/TitleEditor;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/TitleEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method
