.class public Lcom/twitter/android/ProfileActivity;
.super Lcom/twitter/android/UserQueryActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/UserQueryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a_(I)V
    .registers 7

    const/4 v4, 0x0

    const v0, 0x7f07004d

    if-ne p1, v0, :cond_46

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/PostActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "selection"

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v4, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.twitter.android.post.status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    :goto_45
    return-void

    :cond_46
    invoke-super {p0, p1}, Lcom/twitter/android/UserQueryActivity;->a_(I)V

    goto :goto_45
.end method

.method protected final b(Lcom/twitter/android/api/ac;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/twitter/android/UserQueryActivity;->b(Lcom/twitter/android/api/ac;)V

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->b:Lcom/twitter/android/widget/Navbar;

    const v1, 0x7f070020

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0, p1}, Lcom/twitter/android/ProfileFragment;->a(Lcom/twitter/android/api/ac;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 7

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ProfileFragment;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "user_id"

    iget-wide v4, p0, Lcom/twitter/android/ProfileActivity;->e:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "friendship"

    invoke-virtual {v0}, Lcom/twitter/android/ProfileFragment;->m()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/ProfileActivity;->setResult(ILandroid/content/Intent;)V

    invoke-super {p0}, Lcom/twitter/android/UserQueryActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const v0, 0x7f03001b

    invoke-super {p0, p1, v0, v5}, Lcom/twitter/android/UserQueryActivity;->a(Landroid/os/Bundle;IZ)V

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez p1, :cond_39

    new-instance v1, Lcom/twitter/android/ProfileFragment;

    invoke-direct {v1}, Lcom/twitter/android/ProfileFragment;-><init>()V

    invoke-static {v0, v5}, Lcom/twitter/android/ProfileFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "type"

    const-string v4, "type"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/twitter/android/ProfileFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f070031

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_39
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->f:Ljava/lang/String;

    if-nez v1, :cond_67

    iget-wide v1, p0, Lcom/twitter/android/ProfileActivity;->e:J

    cmp-long v1, v1, v6

    if-nez v1, :cond_67

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_67

    const-string v2, "com.twitter.android.action.USER_SHOW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    const-string v2, "com.twitter.android.action.USER_SHOW_TYPEAHEAD"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    :cond_61
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->f:Ljava/lang/String;

    :cond_67
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->f:Ljava/lang/String;

    if-nez v0, :cond_9f

    iget-wide v0, p0, Lcom/twitter/android/ProfileActivity;->e:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_9f

    const v0, 0x7f0b0058

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->finish()V

    :goto_7e
    return-void

    :cond_7f
    const-string v0, "twitter"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    iget-wide v2, p0, Lcom/twitter/android/ProfileActivity;->e:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_67

    new-instance v0, Lcom/twitter/android/dg;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/twitter/android/dg;-><init>(Lcom/twitter/android/ProfileActivity;Lcom/twitter/android/df;)V

    new-array v2, v8, [Landroid/net/Uri;

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Lcom/twitter/android/dg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_7e

    :cond_9f
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->a()V

    goto :goto_7e
.end method
