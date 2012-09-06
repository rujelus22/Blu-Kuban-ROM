.class Lcom/estrongs/android/pop/view/ez;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ey;

.field private final synthetic b:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ey;Landroid/app/ProgressDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ez;->a:Lcom/estrongs/android/pop/view/ey;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/ez;->b:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ez;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ez;->a:Lcom/estrongs/android/pop/view/ey;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ey;->a(Lcom/estrongs/android/pop/view/ey;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const v1, 0x7f0900ec

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    goto :goto_16
.end method
