.class public Lcom/estrongs/android/pop/app/imageviewer/gallery/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/imageviewer/gallery/f;


# instance fields
.field private a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

.field private b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/i;->b:Landroid/net/Uri;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;-><init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/f;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/i;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)I
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/i;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, -0x1

    goto :goto_5
.end method

.method public a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;
    .registers 3

    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/i;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public a(Landroid/net/Uri;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/i;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/i;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/i;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/i;->b:Landroid/net/Uri;

    return-void
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
