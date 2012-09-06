.class Lcom/estrongs/android/pop/view/je;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/u;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/jb;

.field private final synthetic b:Lcom/estrongs/android/widget/FileBrowserDialog;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/jb;Lcom/estrongs/android/widget/FileBrowserDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/je;->a:Lcom/estrongs/android/pop/view/jb;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/je;->b:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/je;->b:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->dismiss()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/je;->a:Lcom/estrongs/android/pop/view/jb;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/jb;->a(Lcom/estrongs/android/pop/view/jb;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    move-result-object v0

    const-class v2, Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v2, :cond_62

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_30
    const-string v2, "outputX"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "outputY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "aspectX"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "aspectY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "scale"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "noFaceDetection"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "customSave"

    sget-object v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->A:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/je;->a:Lcom/estrongs/android/pop/view/jb;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/jb;->a(Lcom/estrongs/android/pop/view/jb;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    move-result-object v0

    const v2, 0x1000101a

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_62
    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_30
.end method
