.class public Lcom/twitter/android/AuthorizeAppFragment;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/android/util/w;


# instance fields
.field private a:Lcom/twitter/android/client/b;

.field private b:Lcom/twitter/android/p;

.field private c:Lcom/twitter/android/gf;

.field private d:Lcom/twitter/android/widget/UserView;

.field private e:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private static varargs a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;C[Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;
    .registers 8

    const/16 v3, 0x22

    const/4 v2, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v2, :cond_e

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    :goto_d
    return-object p0

    :cond_e
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v2, :cond_1e

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    goto :goto_d

    :cond_1e
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/twitter/android/AuthorizeAppFragment;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;[Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_d
.end method

.method private static varargs a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;[Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;
    .registers 9

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int v2, v1, v0

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    array-length v3, p2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v3, :cond_1b

    aget-object v4, p2, v0

    const/16 v5, 0x21

    invoke-virtual {p0, v4, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1b
    return-object p0
.end method

.method private a(Lcom/twitter/android/gf;)V
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->d:Lcom/twitter/android/widget/UserView;

    iget-object v1, p1, Lcom/twitter/android/gf;->b:Lcom/twitter/android/api/ac;

    iget-object v2, v1, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    iget-wide v3, v1, Lcom/twitter/android/api/ac;->a:J

    if-eqz v2, :cond_25

    iget-object v5, p0, Lcom/twitter/android/AuthorizeAppFragment;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v5, v3, v4, v2}, Lcom/twitter/android/client/b;->g(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/UserView;->a(Landroid/graphics/Bitmap;)V

    :goto_13
    iget-object v2, v1, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    iget-object v3, v1, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/widget/UserView;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/twitter/android/api/ac;->h:Z

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/UserView;->b(Z)V

    iget-boolean v1, v1, Lcom/twitter/android/api/ac;->i:Z

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UserView;->c(Z)V

    return-void

    :cond_25
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/UserView;->a(Landroid/graphics/Bitmap;)V

    goto :goto_13
.end method


# virtual methods
.method public final a(Lcom/twitter/android/p;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/AuthorizeAppFragment;->b:Lcom/twitter/android/p;

    return-void
.end method

.method public final a(Lcom/twitter/android/util/v;Ljava/util/HashMap;)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->d:Lcom/twitter/android/widget/UserView;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->c:Lcom/twitter/android/gf;

    iget-object v0, v0, Lcom/twitter/android/gf;->b:Lcom/twitter/android/api/ac;

    iget-wide v0, v0, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/u;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/twitter/android/AuthorizeAppFragment;->d:Lcom/twitter/android/widget/UserView;

    invoke-virtual {v0}, Lcom/twitter/android/util/u;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/UserView;->a(Landroid/graphics/Bitmap;)V

    goto :goto_4
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 7

    const/4 v1, 0x0

    array-length v0, p1

    if-lez v0, :cond_2f

    array-length v2, p1

    move v0, v1

    :goto_6
    if-ge v0, v2, :cond_18

    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/twitter/android/AuthorizeAppFragment;->c:Lcom/twitter/android/gf;

    iget-object v4, v4, Lcom/twitter/android/gf;->a:Landroid/accounts/Account;

    invoke-virtual {v3, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_18
    invoke-virtual {p0}, Lcom/twitter/android/AuthorizeAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    aget-object v1, p1, v1

    new-instance v2, Lcom/twitter/android/gf;

    invoke-static {v0, v1}, Lcom/twitter/android/platform/j;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/twitter/android/api/ac;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/twitter/android/gf;-><init>(Landroid/accounts/Account;Lcom/twitter/android/api/ac;)V

    invoke-direct {p0, v2}, Lcom/twitter/android/AuthorizeAppFragment;->a(Lcom/twitter/android/gf;)V

    goto :goto_14

    :cond_2f
    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->b:Lcom/twitter/android/p;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->b:Lcom/twitter/android/p;

    invoke-interface {v0}, Lcom/twitter/android/p;->a()V

    goto :goto_14
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->c:Lcom/twitter/android/gf;

    invoke-direct {p0, v0}, Lcom/twitter/android/AuthorizeAppFragment;->a(Lcom/twitter/android/gf;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_e

    const-string v0, "account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gf;

    invoke-direct {p0, v0}, Lcom/twitter/android/AuthorizeAppFragment;->a(Lcom/twitter/android/gf;)V

    :cond_e
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_3c

    :cond_7
    :goto_7
    :pswitch_7
    return-void

    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/AuthorizeAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/AccountsDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/AuthorizeAppFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_7

    :pswitch_18
    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->b:Lcom/twitter/android/p;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->b:Lcom/twitter/android/p;

    iget-object v1, p0, Lcom/twitter/android/AuthorizeAppFragment;->c:Lcom/twitter/android/gf;

    iget-object v1, v1, Lcom/twitter/android/gf;->a:Landroid/accounts/Account;

    invoke-interface {v0, v1}, Lcom/twitter/android/p;->a(Landroid/accounts/Account;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f0b00d2

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_7

    :pswitch_32
    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->b:Lcom/twitter/android/p;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->b:Lcom/twitter/android/p;

    invoke-interface {v0}, Lcom/twitter/android/p;->a()V

    goto :goto_7

    :pswitch_data_3c
    .packed-switch 0x7f07002a
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_18
        :pswitch_32
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/AuthorizeAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->f()Lcom/twitter/android/api/ac;

    move-result-object v3

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    iput-object v1, p0, Lcom/twitter/android/AuthorizeAppFragment;->a:Lcom/twitter/android/client/b;

    new-instance v4, Lcom/twitter/android/gf;

    invoke-direct {v4, v2, v3}, Lcom/twitter/android/gf;-><init>(Landroid/accounts/Account;Lcom/twitter/android/api/ac;)V

    iput-object v4, p0, Lcom/twitter/android/AuthorizeAppFragment;->c:Lcom/twitter/android/gf;

    invoke-virtual {p0}, Lcom/twitter/android/AuthorizeAppFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "app"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/AuthorizeAppFragment;->e:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/twitter/android/client/b;->a(ILcom/twitter/android/util/w;)V

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const v0, 0x7f030007

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->a:Lcom/twitter/android/client/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/client/b;->b(ILcom/twitter/android/util/w;)V

    invoke-virtual {p0}, Lcom/twitter/android/AuthorizeAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 14

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f07002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b01cd

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/AuthorizeAppFragment;->e:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/twitter/android/AuthorizeAppFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/twitter/android/AuthorizeAppFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f0c0003

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    const v0, 0x7f0b01ce

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x22

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const v9, 0x7f0a001e

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aput-object v8, v6, v7

    invoke-static {v3, v0, v5, v6}, Lcom/twitter/android/AuthorizeAppFragment;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;C[Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    const v0, 0x7f080003

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v0, 0x0

    :goto_76
    if-ge v0, v6, :cond_90

    aget-object v7, v5, v0

    const/16 v8, 0xa

    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Landroid/text/style/BulletSpan;

    invoke-direct {v10, v2}, Landroid/text/style/BulletSpan;-><init>(I)V

    aput-object v10, v8, v9

    invoke-static {v3, v7, v8}, Lcom/twitter/android/AuthorizeAppFragment;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;[Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    :cond_90
    const v0, 0x7f07002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    const v0, 0x7f0b01cf

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x22

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const v8, 0x7f0a001f

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aput-object v7, v6, v4

    invoke-static {v3, v0, v5, v6}, Lcom/twitter/android/AuthorizeAppFragment;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;C[Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    const v0, 0x7f080004

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v0, 0x0

    :goto_c9
    if-ge v0, v4, :cond_e3

    aget-object v5, v1, v0

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Landroid/text/style/BulletSpan;

    invoke-direct {v8, v2}, Landroid/text/style/BulletSpan;-><init>(I)V

    aput-object v8, v6, v7

    invoke-static {v3, v5, v6}, Lcom/twitter/android/AuthorizeAppFragment;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;[Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c9

    :cond_e3
    const v0, 0x7f07002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070029

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/UserView;

    iput-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->d:Lcom/twitter/android/widget/UserView;

    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->d:Lcom/twitter/android/widget/UserView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UserView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
