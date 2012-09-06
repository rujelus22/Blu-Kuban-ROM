.class Lcom/estrongs/android/pop/view/mi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/mi;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/mi;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_1b

    :try_start_6
    iget-object v0, p0, Lcom/estrongs/android/pop/view/mi;->a:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n(Ljava/lang/String;)V

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(ZJ)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_1c

    :cond_1b
    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    goto :goto_1b
.end method
