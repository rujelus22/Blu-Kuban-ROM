.class final Lcom/dropbox/android/activity/ac;
.super Ldbxyzptlk/e/b;
.source "panda.py"


# instance fields
.field a:Lcom/dropbox/android/filemanager/LocalEntry;

.field final synthetic b:Lcom/dropbox/android/activity/ab;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/ab;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/dropbox/android/activity/ac;->b:Lcom/dropbox/android/activity/ab;

    invoke-direct {p0, p2}, Ldbxyzptlk/e/b;-><init>(Landroid/content/Context;)V

    .line 341
    iget-object v0, p0, Lcom/dropbox/android/activity/ac;->b:Lcom/dropbox/android/activity/ab;

    iget-object v0, v0, Lcom/dropbox/android/activity/ab;->a:Lcom/dropbox/android/activity/GalleryActivity;

    iget-object v0, v0, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/GalleryView;->b()Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/ac;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 345
    invoke-static {}, Lcom/dropbox/android/activity/GalleryActivity;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Showing delete progress dialog."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/dropbox/android/activity/ac;->b:Lcom/dropbox/android/activity/ab;

    iget-object v0, v0, Lcom/dropbox/android/activity/ab;->a:Lcom/dropbox/android/activity/GalleryActivity;

    const/16 v1, 0x3b7

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/GalleryActivity;->showDialog(I)V

    .line 347
    return-void
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/Exception;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 369
    iget-object v0, p0, Lcom/dropbox/android/activity/ac;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-boolean v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    if-eqz v0, :cond_30

    const v0, 0x7f09008f

    .line 370
    :goto_a
    iget-object v1, p0, Lcom/dropbox/android/activity/ac;->b:Lcom/dropbox/android/activity/ab;

    iget-object v1, v1, Lcom/dropbox/android/activity/ab;->a:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-virtual {v1, v0}, Lcom/dropbox/android/activity/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/android/activity/ac;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v3, v3, Lcom/dropbox/android/filemanager/LocalEntry;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {p1, v0, v4}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 375
    :try_start_26
    iget-object v0, p0, Lcom/dropbox/android/activity/ac;->b:Lcom/dropbox/android/activity/ab;

    iget-object v0, v0, Lcom/dropbox/android/activity/ab;->a:Lcom/dropbox/android/activity/GalleryActivity;

    const/16 v1, 0x3b7

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/GalleryActivity;->dismissDialog(I)V
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_2f} :catch_34

    .line 379
    :goto_2f
    return-void

    .line 369
    :cond_30
    const v0, 0x7f09008b

    goto :goto_a

    .line 376
    :catch_34
    move-exception v0

    goto :goto_2f
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 340
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/activity/ac;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/Void;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/android/activity/ac;->b:Lcom/dropbox/android/activity/ab;

    iget-object v0, v0, Lcom/dropbox/android/activity/ab;->a:Lcom/dropbox/android/activity/GalleryActivity;

    const/16 v1, 0x3b7

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/GalleryActivity;->dismissDialog(I)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_24

    .line 360
    :goto_9
    instance-of v0, p1, Lcom/dropbox/android/activity/GalleryActivity;

    if-eqz v0, :cond_13

    move-object v0, p1

    .line 361
    check-cast v0, Lcom/dropbox/android/activity/GalleryActivity;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/GalleryActivity;->o()V

    .line 364
    :cond_13
    new-instance v0, Lcom/dropbox/android/util/Z;

    iget-object v1, p0, Lcom/dropbox/android/activity/ac;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v1, v1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dropbox/android/provider/t;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 365
    return-void

    .line 356
    :catch_24
    move-exception v0

    goto :goto_9
.end method
