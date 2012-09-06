.class public Lcom/google/android/youtube/core/async/FroyoSignInActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/AlertDialog;

.field private b:Lcom/google/android/youtube/core/async/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    return-void
.end method

.method public static a(Landroid/content/Context;[Landroid/accounts/Account;)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 63
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    :goto_6
    array-length v2, p1

    if-ge v0, v2, :cond_12

    .line 65
    aget-object v2, p1, v0

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 68
    :cond_12
    array-length v0, p1

    const v2, 0x7f0b003a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/android/youtube/core/async/FroyoSignInActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "accounts"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .registers 2

    .prologue
    .line 185
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->setResult(I)V

    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 187
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/FroyoSignInActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->setResult(I)V

    iget-object v0, p0, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/FroyoSignInActivity;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "exception"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/FroyoSignInActivity;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/core/async/FroyoSignInActivity;Ljava/lang/String;)Landroid/accounts/Account;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 42
    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->b:Lcom/google/android/youtube/core/async/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/a;->a()[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_1c

    aget-object v0, v2, v1

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    :goto_17
    return-object v0

    :cond_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_1c
    const/4 v0, 0x0

    goto :goto_17
.end method

.method static synthetic b(Lcom/google/android/youtube/core/async/FroyoSignInActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 42
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->a()V

    :goto_9
    return-void

    :cond_a
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->b:Lcom/google/android/youtube/core/async/a;

    new-instance v1, Lcom/google/android/youtube/core/async/ac;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/async/ac;-><init>(Lcom/google/android/youtube/core/async/FroyoSignInActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;)V

    goto :goto_9
.end method

.method static synthetic c(Lcom/google/android/youtube/core/async/FroyoSignInActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->a()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    const-string v1, "accounts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/BaseApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->P()Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->b:Lcom/google/android/youtube/core/async/a;

    .line 84
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0039

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/google/android/youtube/core/async/z;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/async/z;-><init>(Lcom/google/android/youtube/core/async/FroyoSignInActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/google/android/youtube/core/async/y;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/async/y;-><init>(Lcom/google/android/youtube/core/async/FroyoSignInActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->a:Landroid/app/AlertDialog;

    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v2, Lcom/google/android/youtube/core/async/aa;

    invoke-direct {v2, p0, v1}, Lcom/google/android/youtube/core/async/aa;-><init>(Lcom/google/android/youtube/core/async/FroyoSignInActivity;[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->a:Landroid/app/AlertDialog;

    new-instance v1, Lcom/google/android/youtube/core/async/ab;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/async/ab;-><init>(Lcom/google/android/youtube/core/async/FroyoSignInActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 125
    return-void
.end method
