.class Lcom/estrongs/android/pop/view/fm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/fk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/fk;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/fm;->a:Lcom/estrongs/android/pop/view/fk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/fm;)Lcom/estrongs/android/pop/view/fk;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fm;->a:Lcom/estrongs/android/pop/view/fk;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fm;->a:Lcom/estrongs/android/pop/view/fk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/fk;->b(Lcom/estrongs/android/pop/view/fk;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/fn;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/fn;-><init>(Lcom/estrongs/android/pop/view/fm;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fm;->a:Lcom/estrongs/android/pop/view/fk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/fk;->a(Lcom/estrongs/android/pop/view/fk;)V

    return-void
.end method
