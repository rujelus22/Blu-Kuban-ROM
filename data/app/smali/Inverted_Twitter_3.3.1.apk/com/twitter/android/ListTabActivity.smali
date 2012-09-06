.class public Lcom/twitter/android/ListTabActivity;
.super Lcom/twitter/android/BaseFragmentActivity;

# interfaces
.implements Lcom/twitter/android/widget/v;


# static fields
.field public static final e:[Ljava/lang/String;


# instance fields
.field f:J

.field g:J

.field h:J

.field i:I

.field j:Ljava/lang/String;

.field k:Lcom/twitter/android/as;

.field private l:Lcom/twitter/android/widget/SegmentedControl;

.field private m:Lcom/twitter/android/bg;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "i_follow"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/ListTabActivity;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/ListTabActivity;->i:I

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/ListTabActivity;Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/ListTabActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 6

    const/16 v3, 0x8

    const/4 v2, 0x0

    const v0, 0x7f07005f

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f07005d

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1e

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_1d
    return-void

    :cond_1e
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1d
.end method

.method private e(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->k:Lcom/twitter/android/as;

    invoke-virtual {v0, p1}, Lcom/twitter/android/as;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->l:Lcom/twitter/android/widget/SegmentedControl;

    iget-object v1, p0, Lcom/twitter/android/ListTabActivity;->k:Lcom/twitter/android/as;

    invoke-virtual {v1}, Lcom/twitter/android/as;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/SegmentedControl;->a(I)V

    return-void
.end method


# virtual methods
.method final a()V
    .registers 11

    const/4 v2, 0x0

    sget-object v0, Lcom/twitter/android/provider/q;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-wide v3, p0, Lcom/twitter/android/ListTabActivity;->f:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ownerId"

    iget-object v3, p0, Lcom/twitter/android/ListTabActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v3}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->m:Lcom/twitter/android/bg;

    const/4 v1, 0x2

    sget-object v4, Lcom/twitter/android/ListTabActivity;->e:[Ljava/lang/String;

    const-string v5, "owner_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/twitter/android/ListTabActivity;->h:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/bg;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(I)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->k:Lcom/twitter/android/as;

    invoke-virtual {v0, p1}, Lcom/twitter/android/as;->a(I)Z

    return-void
.end method

.method final d()V
    .registers 13

    const/4 v2, 0x0

    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->k:Lcom/twitter/android/as;

    if-nez v0, :cond_8f

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/twitter/android/ar;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "type"

    const/16 v6, 0x9

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "owner_id"

    iget-wide v6, p0, Lcom/twitter/android/ListTabActivity;->g:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "tag"

    iget-wide v6, p0, Lcom/twitter/android/ListTabActivity;->f:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v5, Lcom/twitter/android/ar;

    const-class v6, Lcom/twitter/android/TimelineFragment;

    const-string v7, "list_tweets"

    invoke-direct {v5, v4, v6, v7}, Lcom/twitter/android/ar;-><init>(Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v5, v0, v9

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "type"

    const-string v6, "type"

    const/4 v7, 0x4

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "owner_id"

    iget-wide v6, p0, Lcom/twitter/android/ListTabActivity;->g:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "tag"

    iget-wide v6, p0, Lcom/twitter/android/ListTabActivity;->f:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "follow"

    const-string v6, "follow"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "onboarding"

    const-string v6, "onboarding"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v5, Lcom/twitter/android/ar;

    const-class v6, Lcom/twitter/android/UsersFragment;

    const-string v7, "list_members"

    invoke-direct {v5, v4, v6, v7}, Lcom/twitter/android/ar;-><init>(Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v5, v0, v1

    new-instance v4, Lcom/twitter/android/as;

    const v5, 0x7f070031

    invoke-direct {v4, p0, v5, v0}, Lcom/twitter/android/as;-><init>(Landroid/support/v4/app/FragmentActivity;I[Lcom/twitter/android/ar;)V

    iput-object v4, p0, Lcom/twitter/android/ListTabActivity;->k:Lcom/twitter/android/as;

    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/SegmentedControl;

    iput-object v0, p0, Lcom/twitter/android/ListTabActivity;->l:Lcom/twitter/android/widget/SegmentedControl;

    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->l:Lcom/twitter/android/widget/SegmentedControl;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/SegmentedControl;->a(Lcom/twitter/android/widget/v;)V

    :cond_8f
    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->j:Ljava/lang/String;

    if-eqz v0, :cond_dd

    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/ListTabActivity;->e(Ljava/lang/String;)V

    :goto_98
    iget-wide v3, p0, Lcom/twitter/android/ListTabActivity;->f:J

    cmp-long v0, v3, v10

    if-lez v0, :cond_f5

    iget-wide v3, p0, Lcom/twitter/android/ListTabActivity;->h:J

    cmp-long v0, v3, v10

    if-lez v0, :cond_f5

    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->m:Lcom/twitter/android/bg;

    sget-object v3, Lcom/twitter/android/provider/q;->b:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    iget-wide v4, p0, Lcom/twitter/android/ListTabActivity;->f:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "ownerId"

    iget-object v5, p0, Lcom/twitter/android/ListTabActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v5}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/twitter/android/ListTabActivity;->e:[Ljava/lang/String;

    const-string v5, "owner_id=?"

    new-array v6, v1, [Ljava/lang/String;

    iget-wide v7, p0, Lcom/twitter/android/ListTabActivity;->h:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/bg;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_dc
    :goto_dc
    return-void

    :cond_dd
    const-string v0, "tab"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ef

    const-string v0, "tab"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ListTabActivity;->e(Ljava/lang/String;)V

    goto :goto_98

    :cond_ef
    const-string v0, "list_tweets"

    invoke-direct {p0, v0}, Lcom/twitter/android/ListTabActivity;->e(Ljava/lang/String;)V

    goto :goto_98

    :cond_f5
    iget-wide v2, p0, Lcom/twitter/android/ListTabActivity;->f:J

    cmp-long v0, v2, v10

    if-lez v0, :cond_101

    iget-wide v2, p0, Lcom/twitter/android/ListTabActivity;->g:J

    cmp-long v0, v2, v10

    if-gtz v0, :cond_dc

    :cond_101
    const v0, 0x7f0b007e

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_dc
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p2, :cond_6

    :goto_5
    return-void

    :cond_6
    packed-switch p1, :pswitch_data_40

    goto :goto_5

    :pswitch_a
    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "list_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "list_description"

    const-string v3, "description"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "list_fullname"

    const-string v3, "full_name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "list_mode"

    const-string v3, "mode"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListTabActivity;->b(Ljava/lang/String;)V

    goto :goto_5

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const-wide/16 v5, 0x0

    const v0, 0x7f030023

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    new-instance v0, Lcom/twitter/android/bh;

    invoke-direct {v0, p0}, Lcom/twitter/android/bh;-><init>(Lcom/twitter/android/ListTabActivity;)V

    iput-object v0, p0, Lcom/twitter/android/ListTabActivity;->d:Lcom/twitter/android/client/g;

    new-instance v0, Lcom/twitter/android/bg;

    invoke-direct {v0, p0, p0}, Lcom/twitter/android/bg;-><init>(Lcom/twitter/android/ListTabActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/ListTabActivity;->m:Lcom/twitter/android/bg;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_68

    const-string v0, "twitter"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    const-string v0, "slug"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "screen_name"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_39
    const-string v3, "owner_id"

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/ListTabActivity;->h:J

    if-eqz p1, :cond_4b

    const-string v3, "state_cur_tag"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/twitter/android/ListTabActivity;->j:Ljava/lang/String;

    :cond_4b
    if-eqz v0, :cond_75

    if-eqz v1, :cond_75

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/twitter/android/ListTabActivity;->a(Z)V

    iget-object v3, p0, Lcom/twitter/android/ListTabActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v3, v1, v0}, Lcom/twitter/android/client/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListTabActivity;->c(Ljava/lang/String;)V

    :goto_5c
    const-string v1, "list_name"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8b

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListTabActivity;->b(Ljava/lang/String;)V

    :goto_67
    return-void

    :cond_68
    const-string v0, "slug"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_name"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    :cond_75
    const-string v1, "creator_id"

    invoke-virtual {v2, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/ListTabActivity;->g:J

    const-string v1, "list_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/ListTabActivity;->f:J

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->d()V

    goto :goto_5c

    :cond_8b
    invoke-virtual {p0, v0}, Lcom/twitter/android/ListTabActivity;->b(Ljava/lang/String;)V

    goto :goto_67
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100003

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8

    const/4 v1, 0x5

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_9e

    :goto_9
    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_d
    return v0

    :pswitch_e
    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/ListCreateEditActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "list_id"

    iget-wide v4, p0, Lcom/twitter/android/ListTabActivity;->f:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "name"

    const-string v4, "list_name"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "description"

    const-string v4, "list_description"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "full_name"

    const-string v4, "list_fullname"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "mode"

    const-string v4, "list_mode"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/twitter/android/ListTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    :pswitch_51
    new-instance v1, Lcom/twitter/android/bf;

    invoke-direct {v1, p0}, Lcom/twitter/android/bf;-><init>(Lcom/twitter/android/ListTabActivity;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0073

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0074

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00d6

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00d7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_d

    :pswitch_80
    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->a:Lcom/twitter/android/client/b;

    iget-wide v2, p0, Lcom/twitter/android/ListTabActivity;->f:J

    iget-wide v4, p0, Lcom/twitter/android/ListTabActivity;->g:J

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/b;->b(IJJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListTabActivity;->c(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_8f
    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->a:Lcom/twitter/android/client/b;

    iget-wide v2, p0, Lcom/twitter/android/ListTabActivity;->f:J

    iget-wide v4, p0, Lcom/twitter/android/ListTabActivity;->g:J

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/b;->a(IJJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListTabActivity;->c(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_data_9e
    .packed-switch 0x7f0700da
        :pswitch_e
        :pswitch_51
        :pswitch_8f
        :pswitch_80
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-wide v3, p0, Lcom/twitter/android/ListTabActivity;->g:J

    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_4a

    move v0, v1

    :goto_12
    const v3, 0x7f0700da

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0700db

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0700dc

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_4c

    iget v3, p0, Lcom/twitter/android/ListTabActivity;->i:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4c

    move v3, v1

    :goto_35
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0700dd

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_46

    iget v0, p0, Lcom/twitter/android/ListTabActivity;->i:I

    if-ne v0, v1, :cond_46

    move v2, v1

    :cond_46
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v1

    :cond_4a
    move v0, v2

    goto :goto_12

    :cond_4c
    move v3, v2

    goto :goto_35
.end method

.method protected onResume()V
    .registers 5

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-wide v0, p0, Lcom/twitter/android/ListTabActivity;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2c

    iget-wide v0, p0, Lcom/twitter/android/ListTabActivity;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2c

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->c()Z

    move-result v0

    invoke-super {p0}, Lcom/twitter/android/BaseFragmentActivity;->onResume()V

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->c()Z

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/ListTabActivity;->i:I

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->a()V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    invoke-super {p0}, Lcom/twitter/android/BaseFragmentActivity;->onResume()V

    goto :goto_2b
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->k:Lcom/twitter/android/as;

    if-eqz v0, :cond_12

    const-string v0, "state_cur_tag"

    iget-object v1, p0, Lcom/twitter/android/ListTabActivity;->k:Lcom/twitter/android/as;

    invoke-virtual {v1}, Lcom/twitter/android/as;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method protected onStart()V
    .registers 5

    invoke-super {p0}, Lcom/twitter/android/BaseFragmentActivity;->onStart()V

    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/ListTabActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->f:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    return-void
.end method
