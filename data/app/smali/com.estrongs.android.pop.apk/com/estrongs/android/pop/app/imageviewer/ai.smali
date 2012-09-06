.class Lcom/estrongs/android/pop/app/imageviewer/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/imageviewer/am;


# instance fields
.field private final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ai;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V
    .registers 7

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p2}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Z

    :try_start_1c
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ai;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ai;->a:Landroid/app/Activity;

    const v3, 0x7f0901bd

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1c .. :try_end_2e} :catch_2f

    goto :goto_2

    :catch_2f
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ai;->a:Landroid/app/Activity;

    const v1, 0x7f0901bf

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
