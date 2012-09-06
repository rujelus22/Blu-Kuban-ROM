.class public Lcom/twitter/android/SearchUsersActivity;
.super Lcom/twitter/android/BaseFragmentActivity;

# interfaces
.implements Lcom/twitter/android/widget/v;


# instance fields
.field private e:Lcom/twitter/android/as;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method private a(Lcom/twitter/android/service/ScribeEvent;Ljava/lang/CharSequence;)V
    .registers 7

    new-instance v0, Lcom/twitter/android/service/ScribeLog;

    iget-object v1, p0, Lcom/twitter/android/SearchUsersActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    if-eqz p2, :cond_14

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/android/service/ScribeLog;->query:Ljava/lang/String;

    :cond_14
    iget-object v1, p0, Lcom/twitter/android/SearchUsersActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/service/ScribeLog;)V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/SearchUsersActivity;->e:Lcom/twitter/android/as;

    invoke-virtual {v0, p1}, Lcom/twitter/android/as;->a(I)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12

    const/4 v9, 0x0

    const/4 v8, 0x1

    const v0, 0x7f03003f

    invoke-super {p0, p1, v0, v9}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchUsersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "user_query"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v4, "com.twitter.android.action.USER_SHOW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    sget-object v0, Lcom/twitter/android/service/ScribeEvent;->w:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/SearchUsersActivity;->a(Lcom/twitter/android/service/ScribeEvent;Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchUsersActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchUsersActivity;->finish()V

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    const-string v4, "com.twitter.android.action.USER_SHOW_TYPEAHEAD"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    sget-object v0, Lcom/twitter/android/service/ScribeEvent;->u:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/SearchUsersActivity;->a(Lcom/twitter/android/service/ScribeEvent;Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchUsersActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchUsersActivity;->finish()V

    goto :goto_3c

    :cond_5e
    const-string v4, "com.twitter.android.action.USER_SHOW_SEARCH_SUGGESTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    sget-object v0, Lcom/twitter/android/service/ScribeEvent;->v:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/SearchUsersActivity;->a(Lcom/twitter/android/service/ScribeEvent;Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchUsersActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchUsersActivity;->finish()V

    goto :goto_3c

    :cond_7f
    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchUsersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/SegmentedControl;

    invoke-static {v2, v8}, Lcom/twitter/android/UsersFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v4

    const-string v1, "follow"

    invoke-virtual {v4, v1, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "type"

    const/4 v5, 0x3

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "view_tweets"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e6

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/twitter/android/ar;

    new-instance v5, Lcom/twitter/android/ar;

    invoke-static {v2, v8}, Lcom/twitter/android/SearchTweetsFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v2

    const-class v6, Lcom/twitter/android/SearchTweetsFragment;

    const-string v7, "search_tweets"

    invoke-direct {v5, v2, v6, v7}, Lcom/twitter/android/ar;-><init>(Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v5, v1, v9

    new-instance v2, Lcom/twitter/android/ar;

    const-class v5, Lcom/twitter/android/UsersFragment;

    const-string v6, "search_users"

    invoke-direct {v2, v4, v5, v6}, Lcom/twitter/android/ar;-><init>(Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v8

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/SegmentedControl;->a(Lcom/twitter/android/widget/v;)V

    :goto_bf
    new-instance v2, Lcom/twitter/android/as;

    const v4, 0x7f070031

    invoke-direct {v2, p0, v4, v1}, Lcom/twitter/android/as;-><init>(Landroid/support/v4/app/FragmentActivity;I[Lcom/twitter/android/ar;)V

    iput-object v2, p0, Lcom/twitter/android/SearchUsersActivity;->e:Lcom/twitter/android/as;

    if-eqz p1, :cond_f9

    iget-object v1, p0, Lcom/twitter/android/SearchUsersActivity;->e:Lcom/twitter/android/as;

    const-string v2, "tag"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/as;->c(Ljava/lang/String;)V

    :goto_d6
    iget-object v1, p0, Lcom/twitter/android/SearchUsersActivity;->e:Lcom/twitter/android/as;

    invoke-virtual {v1}, Lcom/twitter/android/as;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/SegmentedControl;->a(I)V

    if-eqz v3, :cond_3c

    invoke-virtual {p0, v3}, Lcom/twitter/android/SearchUsersActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_3c

    :cond_e6
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/SegmentedControl;->setVisibility(I)V

    new-array v1, v8, [Lcom/twitter/android/ar;

    new-instance v2, Lcom/twitter/android/ar;

    const-class v5, Lcom/twitter/android/UsersFragment;

    const-string v6, "search_users"

    invoke-direct {v2, v4, v5, v6}, Lcom/twitter/android/ar;-><init>(Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v9

    goto :goto_bf

    :cond_f9
    iget-object v1, p0, Lcom/twitter/android/SearchUsersActivity;->e:Lcom/twitter/android/as;

    const-string v2, "search_users"

    invoke-virtual {v1, v2}, Lcom/twitter/android/as;->b(Ljava/lang/String;)Z

    goto :goto_d6
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "tag"

    iget-object v1, p0, Lcom/twitter/android/SearchUsersActivity;->e:Lcom/twitter/android/as;

    invoke-virtual {v1}, Lcom/twitter/android/as;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
