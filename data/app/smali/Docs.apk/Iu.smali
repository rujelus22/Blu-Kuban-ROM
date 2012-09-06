.class public final LIu;
.super LIh;
.source "HoneycombActionBarHelper.java"


# static fields
.field private static final a:Z


# instance fields
.field private final a:LIC;

.field private a:LIl;

.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lck;",
            ">;"
        }
    .end annotation
.end field

.field private a:Landroid/content/ComponentName;

.field private a:Landroid/os/Bundle;

.field private a:Landroid/widget/SearchView;

.field private a:Ljava/lang/String;

.field private a:[Landroid/accounts/Account;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, LIu;->a:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ILIC;LanD;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "I",
            "LIC;",
            "LanD",
            "<",
            "LdL;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3}, LIh;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 87
    new-array v0, v1, [Landroid/accounts/Account;

    iput-object v0, p0, LIu;->a:[Landroid/accounts/Account;

    .line 88
    iput-boolean v1, p0, LIu;->b:Z

    .line 95
    iput-object p4, p0, LIu;->a:LIC;

    .line 96
    iput-object p5, p0, LIu;->a:LanD;

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_1b

    .line 99
    invoke-direct {p0}, LIu;->b()Z

    move-result v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 102
    :cond_1b
    return-void
.end method

.method private static a([Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 162
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_12

    .line 163
    aget-object v1, p0, v0

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 167
    :goto_e
    return v0

    .line 162
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :cond_12
    const/4 v0, -0x1

    goto :goto_e
.end method

.method static synthetic a(LIu;)Landroid/widget/SearchView;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, LIu;->a:Landroid/widget/SearchView;

    return-object v0
.end method

.method private a([Landroid/accounts/Account;)Ljava/util/Set;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 172
    array-length v2, p1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_13

    aget-object v3, p1, v0

    .line 173
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 175
    :cond_13
    return-object v1
.end method

.method static synthetic a(LIu;Ljava/lang/String;Landroid/view/MenuItem;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, LIu;->a(Ljava/lang/String;Landroid/view/MenuItem;)V

    return-void
.end method

.method private a(Landroid/app/ActionBar;)V
    .registers 4
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, LIu;->a:[Landroid/accounts/Account;

    invoke-virtual {p0}, LIu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LIu;->a([Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    .line 181
    if-ltz v0, :cond_f

    .line 182
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 184
    :cond_f
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/view/MenuItem;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, LIu;->a:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 337
    sget-boolean v0, LIu;->a:Z

    if-eqz v0, :cond_d

    .line 338
    invoke-interface {p2}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 341
    :cond_d
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEARCH"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, LIu;->a:Landroid/app/Activity;

    const-string v2, "search"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 346
    iget-object v2, p0, LIu;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_49

    .line 348
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 354
    :goto_2d
    if-eqz p1, :cond_34

    .line 355
    const-string v0, "query"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    :cond_34
    iget-object v0, p0, LIu;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_3f

    .line 358
    const-string v0, "app_data"

    iget-object v2, p0, LIu;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 361
    :cond_3f
    iget-object v0, p0, LIu;->a:LIl;

    if-eqz v0, :cond_4f

    .line 362
    iget-object v0, p0, LIu;->a:LIl;

    invoke-interface {v0, v1}, LIl;->b(Landroid/content/Intent;)V

    .line 366
    :goto_48
    return-void

    .line 351
    :cond_49
    iget-object v0, p0, LIu;->a:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2d

    .line 364
    :cond_4f
    iget-object v0, p0, LIu;->a:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_48
.end method

.method static synthetic a()Z
    .registers 1

    .prologue
    .line 51
    sget-boolean v0, LIu;->a:Z

    return v0
.end method

.method private b()Z
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, LIu;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/google/android/apps/docs/app/BaseActivity;

    if-eqz v0, :cond_f

    .line 113
    iget-object v0, p0, LIu;->a:Landroid/app/Activity;

    check-cast v0, Lcom/google/android/apps/docs/app/BaseActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/BaseActivity;->c()Z

    move-result v0

    .line 115
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, LIu;->b:Z

    .line 427
    return-void
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 409
    .line 410
    sget v1, LcR;->launcher_docs_icon:I

    if-ne p1, v1, :cond_12

    .line 411
    const/4 v0, 0x1

    .line 418
    :cond_6
    :goto_6
    iget-object v1, p0, LIu;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 419
    if-eqz v1, :cond_11

    .line 420
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 422
    :cond_11
    return-void

    .line 412
    :cond_12
    sget v1, LcR;->launcher_drive_icon:I

    if-eq p1, v1, :cond_6

    .line 415
    const-string v1, "ActionBar cannot display requested resId"

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    goto :goto_6
.end method

.method public a(LIB;)V
    .registers 2
    .parameter

    .prologue
    .line 230
    return-void
.end method

.method public a(Landroid/view/MenuItem;LIl;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 237
    if-nez p1, :cond_3

    .line 328
    :cond_2
    :goto_2
    return-void

    .line 242
    :cond_3
    iget-object v0, p0, LIu;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    if-nez v0, :cond_18

    .line 243
    iget-object v0, p0, LIu;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    .line 244
    invoke-virtual {v0}, LdL;->c()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 247
    :cond_18
    iput-object p2, p0, LIu;->a:LIl;

    .line 248
    iget-object v0, p0, LIu;->a:Landroid/app/Activity;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 249
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    .line 250
    instance-of v2, v1, Landroid/widget/SearchView;

    if-eqz v2, :cond_2

    .line 254
    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, LIu;->a:Landroid/widget/SearchView;

    .line 255
    iget-object v1, p0, LIu;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, LIu;->a(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, LIu;->a:Landroid/widget/SearchView;

    iget-object v2, p0, LIu;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 257
    iget-object v0, p0, LIu;->a:Landroid/widget/SearchView;

    new-instance v1, LIx;

    invoke-direct {v1, p0, p1}, LIx;-><init>(LIu;Landroid/view/MenuItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 284
    iget-object v0, p0, LIu;->a:Landroid/widget/SearchView;

    new-instance v1, LIy;

    invoke-direct {v1, p0, p1}, LIy;-><init>(LIu;Landroid/view/MenuItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 298
    iget-object v0, p0, LIu;->a:Landroid/widget/SearchView;

    new-instance v1, LIz;

    invoke-direct {v1, p0, p1}, LIz;-><init>(LIu;Landroid/view/MenuItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    goto :goto_2
.end method

.method public a(Landroid/widget/Button;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-virtual {p0}, LIu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 149
    :cond_a
    :goto_a
    return-void

    .line 144
    :cond_b
    invoke-super {p0, p1, p2}, LIh;->a(Landroid/widget/Button;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, LIu;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_a

    .line 147
    invoke-direct {p0, v0}, LIu;->a(Landroid/app/ActionBar;)V

    goto :goto_a
.end method

.method public a(Landroid/widget/Button;[Landroid/accounts/Account;LIj;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-direct {p0, p2}, LIu;->a([Landroid/accounts/Account;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, LIu;->a:[Landroid/accounts/Account;

    invoke-direct {p0, v1}, LIu;->a([Landroid/accounts/Account;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 192
    iget-object v1, p0, LIu;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_3c

    if-nez v0, :cond_3c

    .line 194
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 195
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 197
    iput-object p2, p0, LIu;->a:[Landroid/accounts/Account;

    .line 198
    new-instance v0, LIv;

    invoke-direct {v0, p0, p2}, LIv;-><init>(LIu;[Landroid/accounts/Account;)V

    .line 209
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, LIu;->a:Landroid/app/Activity;

    const v4, 0x1090009

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 212
    new-instance v0, LIw;

    invoke-direct {v0, p0, p2, p3}, LIw;-><init>(LIu;[Landroid/accounts/Account;LIj;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 222
    invoke-direct {p0, v1}, LIu;->a(Landroid/app/ActionBar;)V

    .line 224
    :cond_3c
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, LIu;->a:Ljava/lang/String;

    .line 398
    iget-object v0, p0, LIu;->a:Landroid/widget/SearchView;

    if-eqz v0, :cond_11

    .line 399
    iget-object v0, p0, LIu;->a:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 400
    iget-object v0, p0, LIu;->a:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 402
    :cond_11
    return-void
.end method

.method public a(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 377
    if-nez p5, :cond_6

    iget-object v0, p0, LIu;->a:Landroid/widget/SearchView;

    if-nez v0, :cond_19

    .line 378
    :cond_6
    iget-object v0, p0, LIu;->a:Landroid/app/Activity;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 380
    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 393
    :goto_18
    return-void

    .line 386
    :cond_19
    if-eqz p1, :cond_23

    .line 387
    iput-object p1, p0, LIu;->a:Ljava/lang/String;

    .line 388
    iget-object v0, p0, LIu;->a:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 390
    :cond_23
    iput-object p4, p0, LIu;->a:Landroid/os/Bundle;

    .line 391
    iput-object p3, p0, LIu;->a:Landroid/content/ComponentName;

    .line 392
    iget-object v0, p0, LIu;->a:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    goto :goto_18
.end method

.method public a(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_28

    iget-boolean v1, p0, LIu;->b:Z

    if-nez v1, :cond_28

    .line 122
    invoke-direct {p0}, LIu;->b()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 123
    iget-object v1, p0, LIu;->a:LIC;

    invoke-virtual {p0}, LIu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, LIC;->c(Ljava/lang/String;)V

    .line 135
    :goto_1d
    return v0

    .line 125
    :cond_1e
    iget-object v1, p0, LIu;->a:LIC;

    invoke-virtual {p0}, LIu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, LIC;->b(Ljava/lang/String;)V

    goto :goto_1d

    .line 128
    :cond_28
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, LcS;->menu_create_new_doc:I

    if-ne v1, v2, :cond_3a

    .line 129
    iget-object v1, p0, LIu;->a:LIC;

    invoke-virtual {p0}, LIu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, LIC;->a(Ljava/lang/String;)V

    goto :goto_1d

    .line 131
    :cond_3a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, LcS;->menu_search:I

    if-ne v1, v2, :cond_48

    .line 132
    iget-object v1, p0, LIu;->a:LIC;

    invoke-interface {v1}, LIC;->a()V

    goto :goto_1d

    .line 135
    :cond_48
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, LIu;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_15

    .line 155
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 p2, 0x0

    :cond_12
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 158
    :cond_15
    return-void
.end method
