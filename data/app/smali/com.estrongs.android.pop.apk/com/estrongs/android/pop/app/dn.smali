.class Lcom/estrongs/android/pop/app/dn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dn;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/dn;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dn;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dn;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dn;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b()V

    :cond_1a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dn;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/d/n;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/n;

    move-result-object v0

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/dn;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/d/n;->b(JLjava/lang/String;Z)Z

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const-string v0, "Market"

    if-eqz v1, :cond_32

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    :cond_32
    iget-object v1, p0, Lcom/estrongs/android/pop/app/dn;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_69

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dn;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/c;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dn;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->sendBroadcast(Landroid/content/Intent;)V

    :cond_69
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dn;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dn;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dn;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->finish()V

    return-void
.end method
