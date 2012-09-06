.class public Lcom/twitter/android/BaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;

# interfaces
.implements Lcom/twitter/android/t;
.implements Lcom/twitter/android/widget/n;


# instance fields
.field protected a:Lcom/twitter/android/client/b;

.field protected b:Lcom/twitter/android/widget/Navbar;

.field protected c:Landroid/widget/TextView;

.field protected d:Lcom/twitter/android/client/g;

.field private e:Ljava/util/ArrayList;

.field private f:Landroid/app/Activity;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;IZ)V
    .registers 8

    const/16 v3, 0x8

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lcom/twitter/android/BaseFragmentActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/BaseFragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    iput-object v2, p0, Lcom/twitter/android/BaseFragmentActivity;->a:Lcom/twitter/android/client/b;

    iput-boolean p3, p0, Lcom/twitter/android/BaseFragmentActivity;->g:Z

    iput-object v1, p0, Lcom/twitter/android/BaseFragmentActivity;->f:Landroid/app/Activity;

    if-eqz p3, :cond_28

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-nez v0, :cond_28

    if-nez v1, :cond_27

    invoke-virtual {p0}, Lcom/twitter/android/BaseFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/android/StartActivity;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/Navbar;

    if-eqz v0, :cond_56

    if-nez v1, :cond_63

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/Navbar;->a(Lcom/twitter/android/widget/n;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/Navbar;->setVisibility(I)V

    const v1, 0x7f070020

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/android/BaseFragmentActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->i()Z

    move-result v1

    if-nez v1, :cond_56

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_70

    invoke-virtual {v0, v3, v1}, Lcom/twitter/android/widget/Navbar;->a(I[I)V

    :cond_56
    :goto_56
    iput-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->b:Lcom/twitter/android/widget/Navbar;

    if-eqz p1, :cond_67

    const-string v0, "pending_reqs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->e:Ljava/util/ArrayList;

    goto :goto_27

    :cond_63
    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/Navbar;->setVisibility(I)V

    goto :goto_56

    :cond_67
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->e:Ljava/util/ArrayList;

    goto :goto_27

    :array_70
    .array-data 0x4
        0x4dt 0x0t 0x7t 0x7ft
        0x5at 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method protected final a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->f:Landroid/app/Activity;

    if-nez v0, :cond_5

    move-object v0, p0

    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/HomeTabActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_13

    const-string v2, "tab"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_13
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/twitter/android/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public a_(I)V
    .registers 6

    sparse-switch p1, :sswitch_data_2c

    :goto_3
    return-void

    :sswitch_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseFragmentActivity;->a(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_9
    invoke-virtual {p0}, Lcom/twitter/android/BaseFragmentActivity;->onSearchRequested()Z

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/BaseFragmentActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->s:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_3

    :sswitch_1a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/PostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.twitter.android.post.status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    nop

    :sswitch_data_2c
    .sparse-switch
        0x7f070020 -> :sswitch_4
        0x7f07004d -> :sswitch_1a
        0x7f07005a -> :sswitch_9
    .end sparse-switch
.end method

.method public final b()V
    .registers 1

    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->f:Landroid/app/Activity;

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method protected final b_(I)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->f:Landroid/app/Activity;

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method protected final c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final c()Z
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected final d(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/twitter/android/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call the multiple parameter versions of this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/BaseFragmentActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->i()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/twitter/android/BaseFragmentActivity;->f:Landroid/app/Activity;

    if-nez v1, :cond_19

    invoke-virtual {p0}, Lcom/twitter/android/BaseFragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f10

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_19
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    :pswitch_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseFragmentActivity;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_b

    :pswitch_data_12
    .packed-switch 0x7f0700d5
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->d:Lcom/twitter/android/client/g;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/BaseFragmentActivity;->d:Lcom/twitter/android/client/g;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->b(Lcom/twitter/android/client/g;)V

    :cond_e
    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    iget-boolean v0, p0, Lcom/twitter/android/BaseFragmentActivity;->g:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p0}, Lcom/twitter/android/StartActivity;->a(Landroid/app/Activity;)V

    :cond_12
    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->d:Lcom/twitter/android/client/g;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/BaseFragmentActivity;->d:Lcom/twitter/android/client/g;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/g;)V

    :cond_1d
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "pending_reqs"

    iget-object v1, p0, Lcom/twitter/android/BaseFragmentActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
