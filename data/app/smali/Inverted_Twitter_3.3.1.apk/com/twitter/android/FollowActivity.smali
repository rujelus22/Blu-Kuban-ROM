.class public Lcom/twitter/android/FollowActivity;
.super Lcom/twitter/android/BaseFragmentActivity;

# interfaces
.implements Lcom/twitter/android/gs;


# instance fields
.field private e:Z

.field private f:[I

.field private g:Z

.field private h:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;II)Landroid/os/Bundle;
    .registers 8

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/twitter/android/UsersFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "follow"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/twitter/android/FollowActivity;->f:[I

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_6c

    :goto_12
    return-object v0

    :pswitch_13
    const-string v1, "follow_all_title"

    if-lez p2, :cond_2f

    :goto_17
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "follow_all_subtitle"

    if-lez p3, :cond_33

    :goto_1e
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "type"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "onboarding"

    iget-boolean v2, p0, Lcom/twitter/android/FollowActivity;->e:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_12

    :cond_2f
    const p2, 0x7f0b01a6

    goto :goto_17

    :cond_33
    const p3, 0x7f0b01a7

    goto :goto_1e

    :pswitch_37
    const-string v1, "follow_all_title"

    if-lez p2, :cond_63

    :goto_3b
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "follow_all_subtitle"

    if-lez p3, :cond_67

    :goto_42
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "type"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "onboarding"

    iget-boolean v2, p0, Lcom/twitter/android/FollowActivity;->e:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "browse_categories"

    iget-boolean v2, p0, Lcom/twitter/android/FollowActivity;->e:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "empty_desc"

    const v2, 0x7f0b01bb

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_12

    :cond_63
    const p2, 0x7f0b010e

    goto :goto_3b

    :cond_67
    const p3, 0x7f0b010f

    goto :goto_42

    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_37
    .end packed-switch
.end method

.method private a(Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .registers 3

    new-instance v0, Lcom/twitter/android/UsersFragment;

    invoke-direct {v0}, Lcom/twitter/android/UsersFragment;-><init>()V

    invoke-virtual {v0, p1}, Lcom/twitter/android/UsersFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0, p0}, Lcom/twitter/android/UsersFragment;->a(Lcom/twitter/android/gs;)V

    return-object v0
.end method

.method private a()V
    .registers 3

    iget-boolean v0, p0, Lcom/twitter/android/FollowActivity;->g:Z

    if-eqz v0, :cond_b

    const v0, 0x7f0b01ac

    invoke-virtual {p0, v0}, Lcom/twitter/android/FollowActivity;->b_(I)V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/twitter/android/FollowActivity;->f:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    goto :goto_a

    :pswitch_14
    const v0, 0x7f0b0125

    invoke-virtual {p0, v0}, Lcom/twitter/android/FollowActivity;->b_(I)V

    goto :goto_a

    :pswitch_1b
    const v0, 0x7f0b010d

    invoke-virtual {p0, v0}, Lcom/twitter/android/FollowActivity;->b_(I)V

    goto :goto_a

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_14
        :pswitch_1b
    .end packed-switch
.end method

.method private d()V
    .registers 3

    iget-boolean v0, p0, Lcom/twitter/android/FollowActivity;->g:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/twitter/android/FollowActivity;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/twitter/android/FollowActivity;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/FollowActivity;->f:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_21

    iget-object v0, p0, Lcom/twitter/android/FollowActivity;->h:Landroid/widget/Button;

    const v1, 0x7f0b00da

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_b

    :cond_21
    iget-object v0, p0, Lcom/twitter/android/FollowActivity;->h:Landroid/widget/Button;

    const v1, 0x7f0b00d8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_b
.end method


# virtual methods
.method public final a_(I)V
    .registers 7

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_48

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->a_(I)V

    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/twitter/android/FollowActivity;->f:[I

    array-length v1, v0

    array-length v2, v0

    if-ne v2, v4, :cond_25

    iget-boolean v0, p0, Lcom/twitter/android/FollowActivity;->e:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/twitter/android/FollowActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/FollowActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->ao:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    :cond_1f
    const-string v0, "home"

    invoke-virtual {p0, v0}, Lcom/twitter/android/FollowActivity;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_25
    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/FollowActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "onboarding"

    iget-boolean v3, p0, Lcom/twitter/android/FollowActivity;->e:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "follow_flow"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/FollowActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    nop

    :pswitch_data_48
    .packed-switch 0x7f07004d
        :pswitch_8
    .end packed-switch
.end method

.method public final c(I)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/twitter/android/FollowActivity;->g:Z

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/twitter/android/FollowActivity;->f:[I

    array-length v1, v0

    aget v2, v0, v3

    if-nez v2, :cond_44

    if-nez p1, :cond_44

    if-le v1, v4, :cond_44

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [I

    array-length v2, v1

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/twitter/android/FollowActivity;->f:[I

    invoke-virtual {p0}, Lcom/twitter/android/FollowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0b012a

    const v2, 0x7f0b010e

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/FollowActivity;->a(Landroid/content/Intent;II)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/FollowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f070031

    invoke-direct {p0, v0}, Lcom/twitter/android/FollowActivity;->a(Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_6

    :cond_44
    iput-boolean v3, p0, Lcom/twitter/android/FollowActivity;->g:Z

    invoke-direct {p0}, Lcom/twitter/android/FollowActivity;->a()V

    invoke-direct {p0}, Lcom/twitter/android/FollowActivity;->d()V

    goto :goto_6
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const v4, 0x7f070031

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f030032

    invoke-super {p0, p1, v0, v3}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    iget-object v0, p0, Lcom/twitter/android/FollowActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-nez v0, :cond_14

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p0}, Lcom/twitter/android/FollowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "onboarding"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/FollowActivity;->e:Z

    iput-boolean v3, p0, Lcom/twitter/android/FollowActivity;->g:Z

    if-nez p1, :cond_57

    const-string v1, "follow_flow"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/FollowActivity;->f:[I

    invoke-direct {p0, v0, v2, v2}, Lcom/twitter/android/FollowActivity;->a(Landroid/content/Intent;II)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/FollowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/twitter/android/FollowActivity;->a(Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_43
    iget-object v0, p0, Lcom/twitter/android/FollowActivity;->b:Lcom/twitter/android/widget/Navbar;

    const v1, 0x7f07004d

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/FollowActivity;->h:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/twitter/android/FollowActivity;->a()V

    invoke-direct {p0}, Lcom/twitter/android/FollowActivity;->d()V

    goto :goto_13

    :cond_57
    const-string v0, "follow_flow"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/FollowActivity;->f:[I

    invoke-virtual {p0}, Lcom/twitter/android/FollowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0, p0}, Lcom/twitter/android/UsersFragment;->a(Lcom/twitter/android/gs;)V

    goto :goto_43
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "follow_flow"

    iget-object v1, p0, Lcom/twitter/android/FollowActivity;->f:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-void
.end method
