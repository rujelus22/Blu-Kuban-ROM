.class public Lcom/google/android/apps/docs/app/AccountsActivity;
.super Lcom/google/android/apps/docs/app/BaseActivity;
.source "AccountsActivity.java"


# instance fields
.field public a:LHW;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lck;",
            ">;"
        }
    .end annotation
.end field

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/ListView;

.field private a:Lcom/google/android/apps/docs/view/TitleBar;

.field public a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:[Landroid/accounts/Account;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/AccountsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/AccountsActivity;->f()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/AccountsActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/app/AccountsActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    const-string v1, "accountName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/docs/app/AccountsActivity;->setResult(ILandroid/content/Intent;)V

    .line 192
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/AccountsActivity;->finish()V

    .line 193
    return-void
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/app/AccountsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/AccountsActivity;->e()V

    return-void
.end method

.method private e()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:LHW;

    invoke-interface {v0}, LHW;->a()[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:[Landroid/accounts/Account;

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:[Landroid/accounts/Account;

    array-length v0, v0

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:[Landroid/accounts/Account;

    array-length v0, v0

    new-array v4, v0, [Ljava/lang/String;

    .line 139
    iget-object v5, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:[Landroid/accounts/Account;

    array-length v6, v5

    move v0, v1

    move v2, v1

    :goto_16
    if-ge v0, v6, :cond_24

    aget-object v7, v5, v0

    .line 140
    add-int/lit8 v3, v2, 0x1

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v4, v2

    .line 139
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_16

    .line 143
    :cond_24
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget v2, LcU;->accounts_list_row:I

    invoke-direct {v0, p0, v2, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 144
    iget-object v2, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:Landroid/widget/ListView;

    new-instance v2, LdI;

    invoke-direct {v2, p0, v4}, LdI;-><init>(Lcom/google/android/apps/docs/app/AccountsActivity;[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:Landroid/widget/Button;

    new-instance v2, LdJ;

    invoke-direct {v2, p0}, LdJ;-><init>(Lcom/google/android/apps/docs/app/AccountsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/AccountsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, LcW;->accounts_title_all_apps:I

    array-length v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 163
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    array-length v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/AccountsActivity;->a()LIi;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LIi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method private f()V
    .registers 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:LHW;

    const-string v1, "com.google"

    new-instance v2, LdK;

    invoke-direct {v2, p0}, LdK;-><init>(Lcom/google/android/apps/docs/app/AccountsActivity;)V

    invoke-interface {v0, v1, p0, v2}, LHW;->a(Ljava/lang/String;Landroid/app/Activity;LHX;)V

    .line 186
    return-void
.end method


# virtual methods
.method protected a()Z
    .registers 2

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->c()V

    .line 97
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/AccountsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:Landroid/widget/ListView;

    .line 98
    sget v0, LcS;->title_bar:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/AccountsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/TitleBar;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    .line 99
    sget v0, LcS;->new_account_button:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/AccountsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:Landroid/widget/Button;

    .line 100
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/AccountsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:LdE;

    invoke-virtual {v1}, LdE;->a()V

    .line 68
    iget-object v1, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:LdE;

    const-string v2, "/pickAccount"

    invoke-virtual {v1, v2, v0}, LdE;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 70
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 71
    const-string v1, "AccountsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/AccountsActivity;->finish()V

    .line 91
    :goto_3e
    return-void

    .line 76
    :cond_3f
    sget v0, LcU;->accounts_activity:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/AccountsActivity;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/AccountsActivity;->a()LIi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    invoke-interface {v0, v1}, LIi;->a(LIB;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    sget-object v1, LdL;->b:LdL;

    invoke-virtual {v0, v1}, LdL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/AccountsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcR;->home_bg_plain:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    invoke-static {v0}, LXs;->a(Landroid/graphics/Bitmap;)LXs;

    move-result-object v0

    invoke-virtual {v0}, LXs;->a()LXs;

    move-result-object v0

    invoke-virtual {v0}, LXs;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/AccountsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 86
    sget v0, LcS;->root_layout:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/AccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3e

    .line 88
    :cond_91
    iget-object v0, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:Landroid/widget/Button;

    sget v1, LcR;->account_background_docs:I

    invoke-static {v0, v1}, Laam;->a(Landroid/view/View;I)V

    goto :goto_3e
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/AccountsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 113
    sget v1, LcV;->menu_accounts_activity:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 119
    iget-object v1, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:Lck;

    invoke-interface {v1, p0}, Lck;->a(Landroid/content/Context;)V

    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, LcS;->menu_account_settings:I

    if-ne v1, v2, :cond_14

    .line 121
    iget-object v1, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:LHW;

    invoke-interface {v1, p0}, LHW;->a(Landroid/content/Context;)V

    .line 129
    :goto_13
    return v0

    .line 123
    :cond_14
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, LcS;->menu_send_feedback:I

    if-ne v1, v2, :cond_27

    .line 124
    new-instance v1, LXM;

    const-string v2, "android_docs"

    invoke-direct {v1, p0, v2}, LXM;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, LXM;->a()V

    goto :goto_13

    .line 129
    :cond_27
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_13
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onResume()V

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 106
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/AccountsActivity;->e()V

    .line 107
    return-void
.end method
