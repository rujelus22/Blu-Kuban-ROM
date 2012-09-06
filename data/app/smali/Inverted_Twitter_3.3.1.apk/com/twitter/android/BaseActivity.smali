.class public Lcom/twitter/android/BaseActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/twitter/android/widget/n;


# instance fields
.field protected a:Lcom/twitter/android/client/b;

.field protected b:Lcom/twitter/android/client/g;

.field protected c:Lcom/twitter/android/widget/Navbar;

.field private d:Ljava/util/ArrayList;

.field private e:Landroid/widget/TextView;

.field private final f:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean p1, p0, Lcom/twitter/android/BaseActivity;->f:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/android/api/TweetEntities$Url;J)V
    .registers 8

    instance-of v0, p1, Lcom/twitter/android/api/TweetEntities$Media;

    if-eqz v0, :cond_2f

    check-cast p1, Lcom/twitter/android/api/TweetEntities$Media;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/ImageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p1, Lcom/twitter/android/api/TweetEntities$Media;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image_url"

    iget-object v2, p1, Lcom/twitter/android/api/TweetEntities$Media;->expandedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/android/api/TweetEntities$Media;->mediaUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_2e
    return-void

    :cond_2f
    iget-object v0, p1, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_92

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_49
    iget-object v1, p1, Lcom/twitter/android/api/TweetEntities$Url;->expandedUrl:Ljava/lang/String;

    if-eqz v1, :cond_ad

    sget-object v1, Lcom/twitter/android/util/k;->d:Ljava/util/regex/Pattern;

    iget-object v2, p1, Lcom/twitter/android/api/TweetEntities$Url;->expandedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_55
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_b4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/twitter/android/provider/z;->b:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "ownerId"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2e

    :cond_92
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_ad
    sget-object v1, Lcom/twitter/android/util/k;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    goto :goto_55

    :cond_b4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/android/util/x;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_2e
.end method


# virtual methods
.method protected a()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Landroid/os/Bundle;I)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/BaseActivity;->a:Lcom/twitter/android/client/b;

    iget-boolean v0, p0, Lcom/twitter/android/BaseActivity;->f:Z

    if-eqz v0, :cond_1b

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/twitter/android/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/android/StartActivity;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    :goto_1a
    return-void

    :cond_1b
    const/4 v0, -0x1

    if-eq p2, v0, :cond_53

    invoke-virtual {p0, p2}, Lcom/twitter/android/BaseActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/twitter/android/BaseActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_53

    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/Navbar;

    if-eqz v0, :cond_53

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/Navbar;->a(Lcom/twitter/android/widget/n;)V

    iput-object v0, p0, Lcom/twitter/android/BaseActivity;->c:Lcom/twitter/android/widget/Navbar;

    const v1, 0x7f070020

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/android/BaseActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->i()Z

    move-result v1

    if-nez v1, :cond_53

    const/16 v1, 0x8

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_68

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/widget/Navbar;->a(I[I)V

    :cond_53
    if-eqz p1, :cond_5e

    const-string v0, "pending_reqs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/BaseActivity;->d:Ljava/util/ArrayList;

    goto :goto_1a

    :cond_5e
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/BaseActivity;->d:Ljava/util/ArrayList;

    goto :goto_1a

    nop

    :array_68
    .array-data 0x4
        0x4dt 0x0t 0x7t 0x7ft
        0x5at 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public a_(I)V
    .registers 6

    sparse-switch p1, :sswitch_data_2a

    :goto_3
    return-void

    :sswitch_4
    invoke-virtual {p0}, Lcom/twitter/android/BaseActivity;->a()V

    goto :goto_3

    :sswitch_8
    invoke-virtual {p0}, Lcom/twitter/android/BaseActivity;->onSearchRequested()Z

    iget-object v0, p0, Lcom/twitter/android/BaseActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/BaseActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->s:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_3

    :sswitch_19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/PostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.twitter.android.post.status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    nop

    :sswitch_data_2a
    .sparse-switch
        0x7f070020 -> :sswitch_4
        0x7f07004d -> :sswitch_19
        0x7f07005a -> :sswitch_8
    .end sparse-switch
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/BaseActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final c(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/BaseActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final d(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/twitter/android/BaseActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    move-object v0, p0

    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/HomeTabActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_15

    const-string v2, "tab"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_15
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/twitter/android/BaseActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected final d_(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/twitter/android/BaseActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/twitter/android/BaseActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/twitter/android/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class must be subclassed. Use super.onCreate(Bundle, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/BaseActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->i()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/twitter/android/BaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f10

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_15
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    :pswitch_c
    invoke-virtual {p0}, Lcom/twitter/android/BaseActivity;->a()V

    const/4 v0, 0x1

    goto :goto_b

    nop

    :pswitch_data_12
    .packed-switch 0x7f0700d5
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/twitter/android/BaseActivity;->a:Lcom/twitter/android/client/b;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/twitter/android/BaseActivity;->b:Lcom/twitter/android/client/g;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/twitter/android/BaseActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/BaseActivity;->b:Lcom/twitter/android/client/g;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->b(Lcom/twitter/android/client/g;)V

    :cond_12
    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/BaseActivity;->a:Lcom/twitter/android/client/b;

    iget-boolean v0, p0, Lcom/twitter/android/BaseActivity;->f:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/twitter/android/BaseActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {p0}, Lcom/twitter/android/StartActivity;->a(Landroid/app/Activity;)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/twitter/android/BaseActivity;->b:Lcom/twitter/android/client/g;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/twitter/android/BaseActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/BaseActivity;->b:Lcom/twitter/android/client/g;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/g;)V

    goto :goto_18
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "pending_reqs"

    iget-object v1, p0, Lcom/twitter/android/BaseActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
