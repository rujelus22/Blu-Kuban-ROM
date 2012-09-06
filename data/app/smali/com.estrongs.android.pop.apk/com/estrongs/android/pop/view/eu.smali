.class Lcom/estrongs/android/pop/view/eu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/eu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-static {}, Lcom/estrongs/android/pop/view/le;->a()Lcom/estrongs/android/pop/view/le;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/eu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/le;->a(Landroid/os/Handler;)V

    return-void
.end method
