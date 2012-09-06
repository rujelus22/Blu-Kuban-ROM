.class Lcom/estrongs/android/pop/view/fa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/fa;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/fa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fa;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fa;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v2, ".thumbnails"

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_13

    move v0, v1

    :goto_10
    array-length v3, v2

    if-lt v0, v3, :cond_33

    :cond_13
    iget-object v0, p0, Lcom/estrongs/android/pop/view/fa;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v2, ".apps"

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_24

    :goto_21
    array-length v2, v0

    if-lt v1, v2, :cond_3b

    :cond_24
    iget-object v0, p0, Lcom/estrongs/android/pop/view/fa;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ae(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/fb;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/fb;-><init>(Lcom/estrongs/android/pop/view/fa;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_33
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_3b
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_21
.end method
