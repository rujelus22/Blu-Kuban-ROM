.class Lcom/estrongs/android/widget/m;
.super Lcom/estrongs/android/widget/ac;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/FileBrowserDialog;

.field private final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/FileBrowserDialog;Landroid/app/Activity;Landroid/app/Activity;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/widget/m;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    iput-object p3, p0, Lcom/estrongs/android/widget/m;->c:Landroid/app/Activity;

    invoke-direct {p0, p2}, Lcom/estrongs/android/widget/ac;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/widget/m;)Lcom/estrongs/android/widget/FileBrowserDialog;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/m;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/io/File;)V
    .registers 5

    new-instance v0, Lcom/estrongs/android/widget/a;

    iget-object v1, p0, Lcom/estrongs/android/widget/m;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/widget/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/widget/n;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/widget/n;-><init>(Lcom/estrongs/android/widget/m;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/a;->a(Lcom/estrongs/android/widget/e;)V

    invoke-virtual {v0}, Lcom/estrongs/android/widget/a;->show()V

    return-void
.end method
