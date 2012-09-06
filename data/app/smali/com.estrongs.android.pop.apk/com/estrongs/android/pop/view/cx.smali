.class Lcom/estrongs/android/pop/view/cx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cx;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/high16 v1, -0x1

    sget v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ak:I

    if-nez v0, :cond_30

    sput v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ak:I

    :goto_a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cx;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cx;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/he;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/cx;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->aj:I

    sget v4, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ak:I

    invoke-direct {v1, v2, v3, v4}, Lcom/estrongs/android/pop/view/he;-><init>(Lcom/estrongs/android/pop/view/ff;II)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/hd;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cx;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Z)Z

    return-void

    :cond_30
    sget v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ak:I

    if-ne v0, v2, :cond_37

    sput v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ak:I

    goto :goto_a

    :cond_37
    sget v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ak:I

    if-ne v0, v1, :cond_41

    const v0, -0xff0100

    sput v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ak:I

    goto :goto_a

    :cond_41
    sput v5, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ak:I

    goto :goto_a
.end method
