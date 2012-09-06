.class public Lcom/twitter/android/ImageActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ProgressBar;

.field c:Landroid/graphics/Bitmap;

.field d:Landroid/net/Uri;

.field e:Landroid/net/Uri;

.field f:Landroid/net/Uri;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/twitter/android/ImageActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/twitter/android/ImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be started with a valid Uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/twitter/android/ImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/ImageActivity;->a:Landroid/widget/ImageView;

    const v0, 0x7f07005d

    invoke-virtual {p0, v0}, Lcom/twitter/android/ImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/android/ImageActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ImageActivity;->e:Landroid/net/Uri;

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/twitter/android/ImageActivity;->f:Landroid/net/Uri;

    :goto_49
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ImageActivity;->g:Ljava/lang/String;

    const-string v0, "image_url"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ImageActivity;->h:Ljava/lang/String;

    new-instance v0, Lcom/twitter/android/ba;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/ba;-><init>(Lcom/twitter/android/ImageActivity;Lcom/twitter/android/az;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/ImageActivity;->e:Landroid/net/Uri;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/ba;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {p0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->aA:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    return-void

    :cond_78
    iget-object v0, p0, Lcom/twitter/android/ImageActivity;->e:Landroid/net/Uri;

    iput-object v0, p0, Lcom/twitter/android/ImageActivity;->f:Landroid/net/Uri;

    goto :goto_49
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4

    packed-switch p1, :pswitch_data_1c

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_8
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b016c

    invoke-virtual {p0, v1}, Lcom/twitter/android/ImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_7

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/twitter/android/ImageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/ImageActivity;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/twitter/android/ImageActivity;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/ImageActivity;->c:Landroid/graphics/Bitmap;

    :cond_f
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_c
    :goto_c
    return v0

    :pswitch_d
    iget-object v1, p0, Lcom/twitter/android/ImageActivity;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_c

    new-instance v1, Lcom/twitter/android/bb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/twitter/android/bb;-><init>(Lcom/twitter/android/ImageActivity;Lcom/twitter/android/az;)V

    new-array v2, v0, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/ImageActivity;->c:Landroid/graphics/Bitmap;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/bb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_c

    :pswitch_22
    iget-object v1, p0, Lcom/twitter/android/ImageActivity;->f:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/twitter/android/util/x;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_c

    :pswitch_data_28
    .packed-switch 0x7f0700d8
        :pswitch_22
        :pswitch_d
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/ImageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.TEXT"

    iget-object v5, p0, Lcom/twitter/android/ImageActivity;->h:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/twitter/android/ImageActivity;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_57

    move v0, v1

    :goto_2c
    const v5, 0x7f07001d

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    if-eqz v0, :cond_59

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_59

    move v3, v1

    :goto_3f
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v3, 0x7f0700d9

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/twitter/android/ImageActivity;->d:Landroid/net/Uri;

    if-nez v0, :cond_5b

    :goto_4f
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_57
    move v0, v2

    goto :goto_2c

    :cond_59
    move v3, v2

    goto :goto_3f

    :cond_5b
    move v1, v2

    goto :goto_4f
.end method
