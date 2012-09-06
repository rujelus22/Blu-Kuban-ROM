.class public Lcom/twitter/android/HomeTabActivity;
.super Landroid/app/TabActivity;

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/twitter/android/f;
.implements Lcom/twitter/android/widget/e;
.implements Lcom/twitter/android/widget/n;


# static fields
.field static final a:Ljava/util/HashMap;

.field static final b:[I

.field private static h:I


# instance fields
.field c:Lcom/twitter/android/client/b;

.field d:Ljava/lang/String;

.field e:Z

.field f:Z

.field g:Z

.field private i:J

.field private j:Lcom/twitter/android/client/g;

.field private k:Lcom/twitter/android/e;

.field private l:Lcom/twitter/android/aw;

.field private m:Landroid/content/SharedPreferences;

.field private n:Z

.field private o:Z

.field private p:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v1, 0x4

    const/4 v2, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/twitter/android/HomeTabActivity;->a:Ljava/util/HashMap;

    new-array v0, v1, [I

    fill-array-data v0, :array_36

    sput-object v0, Lcom/twitter/android/HomeTabActivity;->b:[I

    sput v2, Lcom/twitter/android/HomeTabActivity;->h:I

    sget-object v0, Lcom/twitter/android/HomeTabActivity;->a:Ljava/util/HashMap;

    const-string v1, "home"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/HomeTabActivity;->a:Ljava/util/HashMap;

    const-string v1, "connect"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/HomeTabActivity;->a:Ljava/util/HashMap;

    const-string v1, "discover"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_36
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/HomeTabActivity;->p:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 7

    const/4 v4, 0x0

    const-string v0, "account_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    const-string v1, "account_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;)V

    const-string v0, "account_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_19
    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    const-string v0, "twitter"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timeline"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    const-string v1, "mentions"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "connect"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/HomeTabActivity;->a(Ljava/lang/String;I)V

    :goto_4a
    return-void

    :cond_4b
    const-string v0, "home"

    invoke-virtual {p0, v0, v4}, Lcom/twitter/android/HomeTabActivity;->a(Ljava/lang/String;I)V

    goto :goto_4a

    :cond_51
    const-string v0, "tab"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->m:Landroid/content/SharedPreferences;

    const-string v1, "tag"

    const-string v2, "home"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/HomeTabActivity;->m:Landroid/content/SharedPreferences;

    const-string v2, "home_item"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/HomeTabActivity;->a(Ljava/lang/String;I)V

    goto :goto_4a

    :cond_6f
    const-string v1, "ref_event"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ref_event"

    const-string v3, "ref_event"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "ref_event"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_8f
    const-string v1, "home_item"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/HomeTabActivity;->a(Ljava/lang/String;I)V

    goto :goto_4a
.end method

.method static synthetic a(Lcom/twitter/android/HomeTabActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/HomeTabActivity;->c()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/HomeTabActivity;Z)Z
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/HomeTabActivity;->o:Z

    return v0
.end method

.method private b(Ljava/lang/String;I)V
    .registers 8

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/HomeTabActivity;->d:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;I)V

    const-string v2, "home"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    if-nez p2, :cond_1b

    invoke-virtual {v0, v1, v3}, Lcom/twitter/android/client/b;->b(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->i(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    const-string v2, "connect"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    if-ne v3, p2, :cond_2c

    invoke-virtual {v0, v1, v4}, Lcom/twitter/android/client/b;->b(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->i(Ljava/lang/String;)V

    goto :goto_1a

    :cond_2c
    const-string v0, "discover"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    goto :goto_1a
.end method

.method private c()V
    .registers 3

    new-instance v0, Lcom/twitter/android/au;

    invoke-direct {v0, p0}, Lcom/twitter/android/au;-><init>(Lcom/twitter/android/HomeTabActivity;)V

    iget-object v1, p0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    invoke-static {p0, v0}, Lcom/twitter/android/client/b;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method final a()V
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/twitter/android/HomeTabActivity;->b:[I

    array-length v4, v3

    move v0, v1

    :goto_6
    if-ge v0, v4, :cond_10

    aget v5, v3, v0

    invoke-virtual {p0, v5, v1}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->l:Lcom/twitter/android/aw;

    sget-object v3, Lcom/twitter/android/provider/e;->a:Landroid/net/Uri;

    iget-object v4, p0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v4}, Lcom/twitter/android/client/b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/twitter/android/provider/b;->a:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/aw;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(IZ)V
    .registers 4

    packed-switch p1, :pswitch_data_3c

    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TabIndicator;

    invoke-virtual {v0, p2}, Lcom/twitter/android/widget/TabIndicator;->a(Z)V

    return-void

    :pswitch_11
    iget-boolean v0, p0, Lcom/twitter/android/HomeTabActivity;->f:Z

    if-eq v0, p2, :cond_3

    if-nez p2, :cond_1c

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->r()V

    :cond_1c
    iput-boolean p2, p0, Lcom/twitter/android/HomeTabActivity;->f:Z

    goto :goto_3

    :pswitch_1f
    iget-boolean v0, p0, Lcom/twitter/android/HomeTabActivity;->e:Z

    if-eq v0, p2, :cond_3

    if-nez p2, :cond_2a

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->t()V

    :cond_2a
    iput-boolean p2, p0, Lcom/twitter/android/HomeTabActivity;->e:Z

    goto :goto_3

    :pswitch_2d
    iget-boolean v0, p0, Lcom/twitter/android/HomeTabActivity;->g:Z

    if-eq v0, p2, :cond_3

    if-nez p2, :cond_38

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->s()V

    :cond_38
    iput-boolean p2, p0, Lcom/twitter/android/HomeTabActivity;->g:Z

    goto :goto_3

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_11
        :pswitch_2d
        :pswitch_1f
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method final a(Ljava/lang/String;I)V
    .registers 5

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/HomeActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/HomeActivity;->a(I)V

    return-void
.end method

.method public final a(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    return-void
.end method

.method public final a_(I)V
    .registers 6

    sparse-switch p1, :sswitch_data_26

    :goto_3
    return-void

    :sswitch_4
    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->onSearchRequested()Z

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->s:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_3

    :sswitch_15
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/PostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.twitter.android.post.status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :sswitch_data_26
    .sparse-switch
        0x7f07004d -> :sswitch_15
        0x7f07005a -> :sswitch_4
    .end sparse-switch
.end method

.method public final b()V
    .registers 2

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/HomeActivity;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/twitter/android/HomeActivity;->c()V

    :cond_b
    return-void
.end method

.method public final b(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/HomeTabActivity;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 9

    const/4 v0, 0x0

    array-length v3, p1

    move v2, v0

    move v1, v0

    :goto_4
    if-ge v2, v3, :cond_24

    aget-object v4, p1, v2

    const-string v5, "com.twitter.android.auth.login"

    iget-object v6, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    add-int/lit8 v1, v1, 0x1

    if-nez v0, :cond_21

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/android/HomeTabActivity;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v0, 0x1

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_24
    if-nez v0, :cond_2b

    if-lez v1, :cond_2b

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/HomeTabActivity;->d:Ljava/lang/String;

    :cond_2b
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    packed-switch p1, :pswitch_data_34

    invoke-super {p0, p1, p2, p3}, Landroid/app/TabActivity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    const/4 v0, 0x1

    if-ne p2, v0, :cond_6

    const-string v0, "account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gf;

    iget-object v0, v0, Lcom/twitter/android/gf;->a:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/twitter/android/HomeTabActivity;->d:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/twitter/android/HomeTabActivity;->d:Ljava/lang/String;

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/twitter/android/HomeTabActivity;->k:Lcom/twitter/android/e;

    invoke-virtual {v1, v0}, Lcom/twitter/android/e;->a(Landroid/accounts/Account;)V

    goto :goto_6

    :pswitch_28
    iget-boolean v0, p0, Lcom/twitter/android/HomeTabActivity;->o:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/twitter/android/HomeTabActivity;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/HomeTabActivity;->o:Z

    goto :goto_6

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_7
        :pswitch_28
    .end packed-switch
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/app/TabActivity;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/4 v6, 0x1

    const/4 v3, 0x0

    const v8, 0x7f03001f

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/android/StartActivity;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    :goto_19
    return-void

    :cond_1a
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeTabActivity;->setContentView(I)V

    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/Navbar;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/Navbar;->a(Lcom/twitter/android/widget/n;)V

    iput-object v1, p0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    new-instance v0, Lcom/twitter/android/e;

    const v1, 0x7f070045

    invoke-virtual {p0, v1}, Lcom/twitter/android/HomeTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/twitter/android/e;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/twitter/android/f;)V

    iput-object v0, p0, Lcom/twitter/android/HomeTabActivity;->k:Lcom/twitter/android/e;

    invoke-virtual {p0, v3}, Lcom/twitter/android/HomeTabActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/HomeTabActivity;->m:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->m:Landroid/content/SharedPreferences;

    const-string v1, "tag"

    const-string v2, "home"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->m:Landroid/content/SharedPreferences;

    const-string v2, "home_item"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v6}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/HomeTabActivity;->d:Ljava/lang/String;

    new-instance v0, Lcom/twitter/android/ax;

    invoke-direct {v0, p0}, Lcom/twitter/android/ax;-><init>(Lcom/twitter/android/HomeTabActivity;)V

    iput-object v0, p0, Lcom/twitter/android/HomeTabActivity;->j:Lcom/twitter/android/client/g;

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    iget-object v3, p0, Lcom/twitter/android/HomeTabActivity;->j:Lcom/twitter/android/client/g;

    invoke-virtual {v0, v3}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/g;)V

    new-instance v0, Lcom/twitter/android/aw;

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/twitter/android/aw;-><init>(Lcom/twitter/android/HomeTabActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/twitter/android/HomeTabActivity;->l:Lcom/twitter/android/aw;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/IconTabHost;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/IconTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/IconTabHost;->a(Lcom/twitter/android/widget/e;)V

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/HomeActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "type"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "home"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a7

    const-string v5, "home_item"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_a7
    const-string v5, "home"

    invoke-virtual {v0, v5}, Lcom/twitter/android/widget/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    const v6, 0x7f020108

    const v7, 0x7f0b000c

    invoke-static {v3, v8, v0, v6, v7}, Lcom/twitter/android/widget/TabIndicator;->a(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;II)Lcom/twitter/android/widget/TabIndicator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twitter/android/widget/IconTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/HomeActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "type"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "connect"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dd

    const-string v5, "home_item"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_dd
    const-string v5, "connect"

    invoke-virtual {v0, v5}, Lcom/twitter/android/widget/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    const v6, 0x7f020100

    const v7, 0x7f0b0197

    invoke-static {v3, v8, v0, v6, v7}, Lcom/twitter/android/widget/TabIndicator;->a(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;II)Lcom/twitter/android/widget/TabIndicator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twitter/android/widget/IconTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/HomeActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "type"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "discover"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_113

    const-string v1, "home_item"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_113
    const-string v1, "discover"

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f020104

    const v5, 0x7f0b000d

    invoke-static {v3, v8, v0, v2, v5}, Lcom/twitter/android/widget/TabIndicator;->a(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;II)Lcom/twitter/android/widget/TabIndicator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/IconTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const-string v1, "account"

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f02010c

    const v4, 0x7f0b01a2

    invoke-static {v3, v8, v0, v2, v4}, Lcom/twitter/android/widget/TabIndicator;->a(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;II)Lcom/twitter/android/widget/TabIndicator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/HomeActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "type"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/IconTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/HomeTabActivity;->a(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->a()V

    goto/16 :goto_19
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->j:Lcom/twitter/android/client/g;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/HomeTabActivity;->j:Lcom/twitter/android/client/g;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->b(Lcom/twitter/android/client/g;)V

    :cond_e
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/twitter/android/HomeTabActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/twitter/android/HomeTabActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_58

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    :sswitch_d
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/twitter/android/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_c

    :sswitch_18
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/AccountsDialogActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "tab"

    const-string v3, "home"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account_name"

    iget-object v3, p0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v3}, Lcom/twitter/android/client/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/HomeTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_c

    :sswitch_37
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "user_id"

    iget-object v3, p0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v3}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "screen_name"

    iget-object v3, p0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v3}, Lcom/twitter/android/client/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/twitter/android/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_c

    :sswitch_data_58
    .sparse-switch
        0x7f070017 -> :sswitch_d
        0x7f0700d6 -> :sswitch_37
        0x7f0700d7 -> :sswitch_18
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 5

    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v0, "ver"

    const/4 v2, 0x3

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "tag"

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "home_item"

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/HomeActivity;

    invoke-virtual {v0}, Lcom/twitter/android/HomeActivity;->a()I

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "st"

    iget-wide v2, p0, Lcom/twitter/android/HomeTabActivity;->i:J

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected onResume()V
    .registers 15

    const-wide/32 v12, 0xea60

    const/4 v4, 0x2

    const/4 v11, 0x1

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/HomeTabActivity;->d:Ljava/lang/String;

    if-nez v1, :cond_18

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;)V

    :cond_18
    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-static {p0}, Lcom/twitter/android/StartActivity;->a(Landroid/app/Activity;)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    sget v1, Lcom/twitter/android/HomeTabActivity;->h:I

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/twitter/android/HomeTabActivity;->m:Landroid/content/SharedPreferences;

    const-string v2, "ver"

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_ba

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->v()V

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.location"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-direct {p0}, Lcom/twitter/android/HomeTabActivity;->c()V

    :cond_42
    :goto_42
    const/4 v1, 0x3

    sput v1, Lcom/twitter/android/HomeTabActivity;->h:I

    :cond_45
    iget-object v1, p0, Lcom/twitter/android/HomeTabActivity;->m:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "st"

    invoke-interface {v1, v4, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/android/HomeTabActivity;->i:J

    iget-wide v4, p0, Lcom/twitter/android/HomeTabActivity;->i:J

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-gez v1, :cond_62

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->o()V

    iput-wide v2, p0, Lcom/twitter/android/HomeTabActivity;->i:J

    :cond_62
    invoke-virtual {v0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v1

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->f()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/twitter/android/client/a;

    const-string v6, "hometab"

    invoke-direct {v5, p0, v4, v6, v8}, Lcom/twitter/android/client/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "ft"

    invoke-virtual {v5, v4, v9, v10}, Lcom/twitter/android/client/a;->a(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v4, v6, v9

    if-nez v4, :cond_92

    iget-object v4, p0, Lcom/twitter/android/HomeTabActivity;->p:Landroid/os/Handler;

    new-instance v6, Lcom/twitter/android/ay;

    invoke-direct {v6, p0, v1, v8}, Lcom/twitter/android/ay;-><init>(Lcom/twitter/android/HomeTabActivity;Lcom/twitter/android/client/Session;I)V

    invoke-virtual {v4, v6, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v5}, Lcom/twitter/android/client/a;->a()Lcom/twitter/android/client/a;

    move-result-object v4

    const-string v6, "ft"

    invoke-virtual {v4, v6, v2, v3}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;J)Lcom/twitter/android/client/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/android/client/a;->c()Z

    :cond_92
    const-string v4, "taut"

    invoke-virtual {v5, v4, v9, v10}, Lcom/twitter/android/client/a;->a(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->q()J

    move-result-wide v8

    add-long/2addr v6, v8

    cmp-long v0, v6, v2

    if-gez v0, :cond_21

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->p:Landroid/os/Handler;

    new-instance v4, Lcom/twitter/android/ay;

    invoke-direct {v4, p0, v1, v11}, Lcom/twitter/android/ay;-><init>(Lcom/twitter/android/HomeTabActivity;Lcom/twitter/android/client/Session;I)V

    invoke-virtual {v0, v4, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v5}, Lcom/twitter/android/client/a;->a()Lcom/twitter/android/client/a;

    move-result-object v0

    const-string v1, "taut"

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;J)Lcom/twitter/android/client/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/a;->c()Z

    goto/16 :goto_21

    :cond_ba
    if-ne v1, v11, :cond_ff

    new-instance v1, Lcom/twitter/android/at;

    invoke-direct {v1, p0}, Lcom/twitter/android/at;-><init>(Lcom/twitter/android/HomeTabActivity;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "photo_service"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0019

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0169

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00d4

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0092

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_42

    :cond_ff
    if-ne v1, v4, :cond_42

    const-string v1, "discover_prefs"

    invoke-virtual {p0, v1, v8}, Lcom/twitter/android/HomeTabActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "show_loc_dlg"

    invoke-interface {v1, v2, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.location"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-direct {p0}, Lcom/twitter/android/HomeTabActivity;->c()V

    goto/16 :goto_42
.end method

.method protected onStart()V
    .registers 4

    invoke-super {p0}, Landroid/app/TabActivity;->onStart()V

    iget-boolean v0, p0, Lcom/twitter/android/HomeTabActivity;->n:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/HomeTabActivity;->n:Z

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v0

    const-string v2, "app:ready"

    invoke-static {p0, v0, v1, v2}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;JLjava/lang/String;)V

    :cond_15
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/HomeActivity;

    invoke-virtual {v0}, Lcom/twitter/android/HomeActivity;->a()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/HomeTabActivity;->b(Ljava/lang/String;I)V

    return-void
.end method
