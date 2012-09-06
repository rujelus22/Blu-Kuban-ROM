.class Lcom/estrongs/android/pop/view/fb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/fa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/fa;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/fb;->a:Lcom/estrongs/android/pop/view/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/fb;->a:Lcom/estrongs/android/pop/view/fa;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/fa;->a(Lcom/estrongs/android/pop/view/fa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->dismissDialog(I)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method
