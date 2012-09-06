.class Lcom/estrongs/android/pop/app/imageviewer/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/imageviewer/am;


# instance fields
.field private final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ah;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V
    .registers 6

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {p2}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ah;->a:Landroid/app/Activity;

    const-class v2, Lcom/estrongs/android/pop/app/imageviewer/Wallpaper;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ah;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4
.end method
