.class public Lcom/twitter/android/AuthorizeAppActivity;
.super Lcom/twitter/android/BaseFragmentActivity;

# interfaces
.implements Lcom/twitter/android/p;


# instance fields
.field private e:Landroid/content/ServiceConnection;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/AuthorizeAppActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/AuthorizeAppActivity;->d()V

    return-void
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppActivity;->e:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppActivity;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/twitter/android/AuthorizeAppActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/AuthorizeAppActivity;->e:Landroid/content/ServiceConnection;

    :cond_c
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/AuthorizeAppActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/twitter/android/AuthorizeAppActivity;->finish()V

    return-void
.end method

.method public final a(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/twitter/android/AuthorizeAppActivity;->finish()V

    return-void
.end method

.method public final a(Landroid/accounts/Account;)V
    .registers 6

    new-instance v0, Lcom/twitter/android/n;

    iget-object v1, p0, Lcom/twitter/android/AuthorizeAppActivity;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/AuthorizeAppActivity;->g:Ljava/lang/String;

    new-instance v3, Lcom/twitter/android/o;

    invoke-direct {v3, p0}, Lcom/twitter/android/o;-><init>(Lcom/twitter/android/AuthorizeAppActivity;)V

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/twitter/android/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/android/o;Landroid/accounts/Account;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/service/AuthTokenService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1f

    iput-object v0, p0, Lcom/twitter/android/AuthorizeAppActivity;->e:Landroid/content/ServiceConnection;

    :goto_1e
    return-void

    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/AuthorizeAppActivity;->e:Landroid/content/ServiceConnection;

    const v0, 0x7f0b01c0

    invoke-virtual {p0, v0}, Lcom/twitter/android/AuthorizeAppActivity;->a(I)V

    goto :goto_1e
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const v0, 0x7f030008

    const/4 v1, 0x1

    invoke-super {p0, p1, v0, v1}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/twitter/android/AuthorizeAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ck"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/AuthorizeAppActivity;->f:Ljava/lang/String;

    const-string v1, "cs"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/AuthorizeAppActivity;->g:Ljava/lang/String;

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lcom/twitter/android/AuthorizeAppActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/AuthorizeAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :try_start_33
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-string v3, "app"

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_33 .. :try_end_45} :catch_63

    :goto_45
    new-instance v0, Lcom/twitter/android/AuthorizeAppFragment;

    invoke-direct {v0}, Lcom/twitter/android/AuthorizeAppFragment;-><init>()V

    invoke-virtual {v0, v2}, Lcom/twitter/android/AuthorizeAppFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0, p0}, Lcom/twitter/android/AuthorizeAppFragment;->a(Lcom/twitter/android/p;)V

    invoke-virtual {p0}, Lcom/twitter/android/AuthorizeAppActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f070031

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_f

    :catch_63
    move-exception v0

    goto :goto_45
.end method

.method protected onDestroy()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/AuthorizeAppActivity;->d()V

    invoke-super {p0}, Lcom/twitter/android/BaseFragmentActivity;->onDestroy()V

    return-void
.end method
