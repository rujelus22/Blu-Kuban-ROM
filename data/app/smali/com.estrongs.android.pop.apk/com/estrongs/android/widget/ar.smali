.class Lcom/estrongs/android/widget/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/ae;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ap;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/ap;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/widget/ar;->a:Lcom/estrongs/android/widget/ap;

    iput-object p2, p0, Lcom/estrongs/android/widget/ar;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .registers 5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/e/a;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1e

    :goto_1d
    return-object v0

    :cond_1e
    iget-object v0, p0, Lcom/estrongs/android/widget/ar;->b:Landroid/content/Context;

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/content/ContextWrapper;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1d
.end method
