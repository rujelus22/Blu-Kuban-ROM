.class Lcom/estrongs/android/pop/view/et;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/y;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/et;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/Object;JJ)V
    .registers 6

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/et;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    sget v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/c;->f(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method
