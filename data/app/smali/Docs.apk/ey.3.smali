.class public Ley;
.super Log;
.source "DocsPreferencesActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Ley;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-direct {p0}, Log;-><init>()V

    return-void
.end method

.method private a()V
    .registers 2

    .prologue
    .line 505
    invoke-direct {p0}, Ley;->a()Z

    move-result v0

    if-nez v0, :cond_9

    .line 506
    invoke-direct {p0}, Ley;->b()V

    .line 508
    :cond_9
    return-void
.end method

.method static synthetic a(Ley;)V
    .registers 1
    .parameter

    .prologue
    .line 457
    invoke-direct {p0}, Ley;->a()V

    return-void
.end method

.method private a()Z
    .registers 3

    .prologue
    .line 500
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static synthetic a(Ley;)Z
    .registers 2
    .parameter

    .prologue
    .line 457
    invoke-direct {p0}, Ley;->a()Z

    move-result v0

    return v0
.end method

.method private b()V
    .registers 4

    .prologue
    .line 516
    iget-object v0, p0, Ley;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    .line 517
    invoke-static {v0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->b(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 518
    invoke-static {v0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->b(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-nez v1, :cond_15

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 519
    return-void

    .line 518
    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static synthetic b(Ley;)V
    .registers 1
    .parameter

    .prologue
    .line 457
    invoke-direct {p0}, Ley;->b()V

    return-void
.end method

.method private c()V
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 522
    iget-object v3, p0, Ley;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    .line 523
    iget-object v0, p0, Ley;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LHW;

    invoke-interface {v0}, LHW;->a()[Landroid/accounts/Account;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_d
    if-ge v2, v5, :cond_55

    aget-object v0, v4, v2

    .line 524
    iget-object v6, v3, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Llu;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v6, v0}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v6

    .line 526
    iget-object v0, v3, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Llu;

    invoke-interface {v0, v6}, Llu;->b(LkG;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_23
    :goto_23
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 527
    iget-object v8, v3, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Llu;

    invoke-interface {v8, v6, v0}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v8

    .line 528
    if-eqz v8, :cond_23

    .line 529
    if-eqz v8, :cond_48

    const/4 v0, 0x1

    :goto_3a
    invoke-static {v0}, LafQ;->b(Z)V

    .line 530
    const-wide/16 v9, -0x1

    sget-object v0, LQM;->a:LQM;

    invoke-virtual {v8, v9, v10, v0}, LkR;->a(JLQM;)V

    .line 531
    invoke-virtual {v8}, LkR;->c()V

    goto :goto_23

    :cond_48
    move v0, v1

    .line 529
    goto :goto_3a

    .line 534
    :cond_4a
    iget-object v0, p0, Ley;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LQN;

    invoke-interface {v0}, LQN;->a()V

    .line 523
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    .line 536
    :cond_55
    return-void
.end method

.method static synthetic c(Ley;)V
    .registers 1
    .parameter

    .prologue
    .line 457
    invoke-direct {p0}, Ley;->c()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 460
    iget-object v0, p0, Ley;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    .line 461
    iget-object v1, p0, Ley;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->j(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Lck;

    move-result-object v1

    invoke-interface {v1, v0}, Lck;->a(Landroid/content/Context;)V

    .line 463
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080045

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, LcY;->pin_encryption_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, LcY;->pin_encryption_message:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, LcY;->pin_encryption_continue:I

    new-instance v3, LeB;

    invoke-direct {v3, p0, v0}, LeB;-><init>(Ley;Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, LeA;

    invoke-direct {v2, p0}, LeA;-><init>(Ley;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lez;

    invoke-direct {v1, p0}, Lez;-><init>(Ley;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 512
    invoke-direct {p0}, Ley;->b()V

    .line 513
    return-void
.end method
