.class public Lcom/twitter/android/SearchTweetsActivity;
.super Lcom/twitter/android/BaseFragmentActivity;

# interfaces
.implements Lcom/twitter/android/widget/v;


# instance fields
.field e:I

.field private f:Ljava/lang/String;

.field private g:Lcom/twitter/android/as;

.field private h:Lcom/twitter/android/ar;

.field private i:Lcom/twitter/android/ar;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method private a(Lcom/twitter/android/service/ScribeEvent;Ljava/lang/CharSequence;)V
    .registers 7

    new-instance v0, Lcom/twitter/android/service/ScribeLog;

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    if-eqz p2, :cond_14

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/android/service/ScribeLog;->query:Ljava/lang/String;

    :cond_14
    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/service/ScribeLog;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)[Lcom/twitter/android/ar;
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/SegmentedControl;

    const-string v1, "story"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/TwitterStory;

    if-eqz v1, :cond_1f

    iget-object v4, v1, Lcom/twitter/android/api/TwitterStory;->socialProof:Lcom/twitter/android/api/TwitterStory$SocialProof;

    if-eqz v4, :cond_1f

    invoke-virtual {v1}, Lcom/twitter/android/api/TwitterStory;->a()Z

    move-result v1

    if-nez v1, :cond_63

    :cond_1f
    move v1, v3

    :goto_20
    new-instance v4, Lcom/twitter/android/ar;

    invoke-static {p1, v1}, Lcom/twitter/android/SearchTweetsFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v5

    const-class v6, Lcom/twitter/android/SearchTweetsFragment;

    const-string v7, "search_tweets"

    invoke-direct {v4, v5, v6, v7}, Lcom/twitter/android/ar;-><init>(Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/twitter/android/SearchTweetsActivity;->h:Lcom/twitter/android/ar;

    const-string v4, "view_people"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/SegmentedControl;->a(Lcom/twitter/android/widget/v;)V

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/SegmentedControl;->setVisibility(I)V

    invoke-static {p1, v1}, Lcom/twitter/android/UsersFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "follow"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "type"

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/twitter/android/ar;

    const-class v4, Lcom/twitter/android/UsersFragment;

    const-string v5, "search_users"

    invoke-direct {v1, v0, v4, v5}, Lcom/twitter/android/ar;-><init>(Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->i:Lcom/twitter/android/ar;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/twitter/android/ar;

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->h:Lcom/twitter/android/ar;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->i:Lcom/twitter/android/ar;

    aput-object v1, v0, v3

    :goto_62
    return-object v0

    :cond_63
    move v1, v2

    goto :goto_20

    :cond_65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->i:Lcom/twitter/android/ar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/SegmentedControl;->setVisibility(I)V

    new-array v0, v3, [Lcom/twitter/android/ar;

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->h:Lcom/twitter/android/ar;

    aput-object v1, v0, v2

    goto :goto_62
.end method

.method private b(Landroid/content/Intent;)V
    .registers 8

    const/4 v1, 0x0

    const-string v0, "twitter"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "query"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "query"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "context"

    const-string v4, "protocol_search"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v2, v0

    :goto_25
    const-string v3, "type"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput v1, p0, Lcom/twitter/android/SearchTweetsActivity;->e:I

    iput-object v2, p0, Lcom/twitter/android/SearchTweetsActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_fa

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f5

    const v0, 0x7f0b008e

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->b_(I)V

    :goto_40
    return-void

    :cond_41
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "user_query"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "com.twitter.android.action.USER_SHOW"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    sget-object v0, Lcom/twitter/android/service/ScribeEvent;->w:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {p0, v0, v4}, Lcom/twitter/android/SearchTweetsActivity;->a(Lcom/twitter/android/service/ScribeEvent;Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsActivity;->finish()V

    goto :goto_40

    :cond_78
    const-string v5, "com.twitter.android.action.USER_SHOW_TYPEAHEAD"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    sget-object v0, Lcom/twitter/android/service/ScribeEvent;->u:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {p0, v0, v4}, Lcom/twitter/android/SearchTweetsActivity;->a(Lcom/twitter/android/service/ScribeEvent;Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsActivity;->finish()V

    goto :goto_40

    :cond_99
    const-string v5, "com.twitter.android.action.USER_SHOW_SEARCH_SUGGESTION"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ba

    sget-object v0, Lcom/twitter/android/service/ScribeEvent;->v:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {p0, v0, v4}, Lcom/twitter/android/SearchTweetsActivity;->a(Lcom/twitter/android/service/ScribeEvent;Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsActivity;->finish()V

    goto :goto_40

    :cond_ba
    const-string v5, "com.twitter.android.action.SEARCH"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d5

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->t:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {p0, v3, v4}, Lcom/twitter/android/SearchTweetsActivity;->a(Lcom/twitter/android/service/ScribeEvent;Ljava/lang/CharSequence;)V

    :cond_c7
    :goto_c7
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_e5

    const-string v3, "type"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_25

    :cond_d5
    const-string v4, "com.twitter.android.action.SEARCH_RECENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    const-string v3, "context"

    const-string v4, "recent"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_c7

    :cond_e5
    const-string v1, "type"

    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_25

    :cond_f5
    invoke-virtual {p0, v2}, Lcom/twitter/android/SearchTweetsActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_40

    :cond_fa
    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_40
.end method


# virtual methods
.method public final a_(I)V
    .registers 7

    const/4 v4, 0x0

    const v0, 0x7f07004d

    if-ne p1, v0, :cond_56

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_56

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_56

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->f:Ljava/lang/String;

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

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->startActivity(Landroid/content/Intent;)V

    :goto_55
    return-void

    :cond_56
    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->a_(I)V

    goto :goto_55
.end method

.method public final b(I)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->g:Lcom/twitter/android/as;

    invoke-virtual {v0, p1}, Lcom/twitter/android/as;->a(I)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const v0, 0x7f03003f

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->b(Landroid/content/Intent;)V

    new-instance v1, Lcom/twitter/android/em;

    invoke-direct {v1, p0}, Lcom/twitter/android/em;-><init>(Lcom/twitter/android/SearchTweetsActivity;)V

    iput-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->d:Lcom/twitter/android/client/g;

    invoke-direct {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->a(Landroid/content/Intent;)[Lcom/twitter/android/ar;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/as;

    const v2, 0x7f070031

    invoke-direct {v1, p0, v2, v0}, Lcom/twitter/android/as;-><init>(Landroid/support/v4/app/FragmentActivity;I[Lcom/twitter/android/ar;)V

    iput-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->g:Lcom/twitter/android/as;

    if-eqz p1, :cond_4b

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->g:Lcom/twitter/android/as;

    const-string v1, "state_tag"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/as;->c(Ljava/lang/String;)V

    const-string v0, "search_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/SearchTweetsActivity;->e:I

    :goto_38
    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/SegmentedControl;

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->g:Lcom/twitter/android/as;

    invoke-virtual {v1}, Lcom/twitter/android/as;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/SegmentedControl;->a(I)V

    return-void

    :cond_4b
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->g:Lcom/twitter/android/as;

    const-string v1, "search_tweets"

    invoke-virtual {v0, v1}, Lcom/twitter/android/as;->a(Ljava/lang/String;)Z

    goto :goto_38
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->i()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f100006

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_16
    if-eqz v0, :cond_1c

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/twitter/android/SearchTweetsActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/twitter/android/SearchTweetsActivity;->b(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->h:Lcom/twitter/android/ar;

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsActivity;->h:Lcom/twitter/android/ar;

    invoke-virtual {v2, p0}, Lcom/twitter/android/ar;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_22
    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->i:Lcom/twitter/android/ar;

    if-eqz v1, :cond_37

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsActivity;->i:Lcom/twitter/android/ar;

    invoke-virtual {v2, p0}, Lcom/twitter/android/ar;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_37
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->g:Lcom/twitter/android/as;

    invoke-virtual {v0}, Lcom/twitter/android/as;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/twitter/android/SearchTweetsActivity;->a(Landroid/content/Intent;)[Lcom/twitter/android/ar;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/as;

    const v3, 0x7f070031

    invoke-direct {v2, p0, v3, v1}, Lcom/twitter/android/as;-><init>(Landroid/support/v4/app/FragmentActivity;I[Lcom/twitter/android/ar;)V

    iput-object v2, p0, Lcom/twitter/android/SearchTweetsActivity;->g:Lcom/twitter/android/as;

    const-string v1, "search_tweets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->g:Lcom/twitter/android/as;

    const-string v1, "search_tweets"

    invoke-virtual {v0, v1}, Lcom/twitter/android/as;->a(Ljava/lang/String;)Z

    :goto_5d
    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/SegmentedControl;

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->g:Lcom/twitter/android/as;

    invoke-virtual {v1}, Lcom/twitter/android/as;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/SegmentedControl;->a(I)V

    return-void

    :cond_70
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->g:Lcom/twitter/android/as;

    const-string v1, "search_users"

    invoke-virtual {v0, v1}, Lcom/twitter/android/as;->a(Ljava/lang/String;)Z

    goto :goto_5d
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_40

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_d
    return v0

    :pswitch_e
    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->a:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/twitter/android/client/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/SearchTweetsActivity;->c(Ljava/lang/String;)V

    const v1, 0x7f0b014e

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x6

    iput v1, p0, Lcom/twitter/android/SearchTweetsActivity;->e:I

    goto :goto_d

    :pswitch_27
    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->a:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/twitter/android/client/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/SearchTweetsActivity;->c(Ljava/lang/String;)V

    const v1, 0x7f0b014f

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iput v3, p0, Lcom/twitter/android/SearchTweetsActivity;->e:I

    goto :goto_d

    nop

    :pswitch_data_40
    .packed-switch 0x7f0700df
        :pswitch_e
        :pswitch_27
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return v2

    :cond_b
    iget v0, p0, Lcom/twitter/android/SearchTweetsActivity;->e:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_2c

    move v0, v1

    :goto_11
    const v3, 0x7f0700e0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0700df

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_2e

    :goto_24
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    goto :goto_a

    :cond_2c
    move v0, v2

    goto :goto_11

    :cond_2e
    move v1, v2

    goto :goto_24
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "state_tag"

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->g:Lcom/twitter/android/as;

    invoke-virtual {v1}, Lcom/twitter/android/as;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "search_type"

    iget v1, p0, Lcom/twitter/android/SearchTweetsActivity;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
