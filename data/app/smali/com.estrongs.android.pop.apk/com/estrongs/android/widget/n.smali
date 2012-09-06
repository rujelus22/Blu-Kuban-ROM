.class Lcom/estrongs/android/widget/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/e;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/m;

.field private final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/m;Ljava/io/File;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/widget/n;->a:Lcom/estrongs/android/widget/m;

    iput-object p2, p0, Lcom/estrongs/android/widget/n;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/widget/n;->b:Ljava/io/File;

    instance-of v0, v0, Lcom/estrongs/android/widget/ESVfsFile;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/widget/n;->b:Ljava/io/File;

    check-cast v0, Lcom/estrongs/android/widget/ESVfsFile;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/widget/ESVfsFile;->setAuth(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/widget/n;->a:Lcom/estrongs/android/widget/m;

    invoke-static {v0}, Lcom/estrongs/android/widget/m;->a(Lcom/estrongs/android/widget/m;)Lcom/estrongs/android/widget/FileBrowserDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->f(Lcom/estrongs/android/widget/FileBrowserDialog;)Lcom/estrongs/android/widget/w;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/n;->b:Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/w;->a(Ljava/io/File;Ljava/util/Comparator;)V

    return-void
.end method
