.class Lcom/estrongs/android/pop/app/dq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopVideoPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dq;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dq;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_e

    :goto_d
    return v4

    :cond_e
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "video/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_22
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dq;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/dq;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    const v3, 0x7f090173

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->startActivity(Landroid/content/Intent;)V
    :try_end_34
    .catch Landroid/content/ActivityNotFoundException; {:try_start_22 .. :try_end_34} :catch_35

    goto :goto_d

    :catch_35
    move-exception v0

    goto :goto_d
.end method
