.class public Lcom/android/task/TaskLaunchActivity;
.super Landroid/app/Activity;
.source "TaskLaunchActivity.java"


# static fields
.field public static mbExitFlg:Z

.field private static mbMainFlg:Z


# instance fields
.field private mExtras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-boolean v0, Lcom/android/task/TaskLaunchActivity;->mbExitFlg:Z

    .line 23
    sput-boolean v0, Lcom/android/task/TaskLaunchActivity;->mbMainFlg:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    return-void
.end method

.method private initAccount()V
    .registers 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/task/TaskLaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/task/TaskAccount;->initAccountColor(Landroid/content/res/Resources;)V

    .line 112
    return-void
.end method

.method private launchTaskView()V
    .registers 5

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/task/TaskLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 91
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/task/TaskMainActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    if-eqz v1, :cond_14

    .line 93
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 95
    :cond_14
    iget-object v1, p0, Lcom/android/task/TaskLaunchActivity;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_1d

    .line 96
    iget-object v1, p0, Lcom/android/task/TaskLaunchActivity;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 98
    :cond_1d
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 100
    invoke-direct {p0}, Lcom/android/task/TaskLaunchActivity;->initAccount()V

    .line 104
    const/16 v0, 0x63

    invoke-virtual {p0, v2, v0}, Lcom/android/task/TaskLaunchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 106
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 56
    const-string v1, "LunchTask"

    const-string v2, "======== onActivityResult ========"

    invoke-static {v1, v2}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/16 v1, 0x63

    if-ne p1, v1, :cond_14

    .line 62
    sput-boolean v3, Lcom/android/task/TaskLaunchActivity;->mbExitFlg:Z

    .line 63
    sput-boolean v3, Lcom/android/task/TaskLaunchActivity;->mbMainFlg:Z

    .line 65
    invoke-virtual {p0}, Lcom/android/task/TaskLaunchActivity;->finish()V

    .line 83
    :cond_13
    :goto_13
    return-void

    .line 67
    :cond_14
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 69
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_2a

    .line 70
    sget-boolean v1, Lcom/android/task/TaskLaunchActivity;->mbMainFlg:Z

    if-nez v1, :cond_13

    .line 71
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/task/TaskLaunchActivity;->mbMainFlg:Z

    .line 72
    invoke-direct {p0}, Lcom/android/task/TaskLaunchActivity;->launchTaskView()V

    goto :goto_13

    .line 77
    :cond_2a
    sput-boolean v3, Lcom/android/task/TaskLaunchActivity;->mbExitFlg:Z

    .line 78
    sput-boolean v3, Lcom/android/task/TaskLaunchActivity;->mbMainFlg:Z

    .line 80
    invoke-virtual {p0}, Lcom/android/task/TaskLaunchActivity;->finish()V

    goto :goto_13
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 31
    const-string v0, "LunchTask"

    const-string v1, "======== onCreate ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget-boolean v0, Lcom/android/task/TaskLaunchActivity;->mbExitFlg:Z

    if-nez v0, :cond_20

    .line 36
    sget-boolean v0, Lcom/android/task/TaskLaunchActivity;->mbMainFlg:Z

    if-nez v0, :cond_1a

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/task/TaskLaunchActivity;->mbMainFlg:Z

    .line 38
    invoke-direct {p0}, Lcom/android/task/TaskLaunchActivity;->launchTaskView()V

    .line 52
    :goto_19
    return-void

    .line 41
    :cond_1a
    invoke-virtual {p0}, Lcom/android/task/TaskLaunchActivity;->finish()V

    .line 42
    sput-boolean v2, Lcom/android/task/TaskLaunchActivity;->mbMainFlg:Z

    goto :goto_19

    .line 46
    :cond_20
    sput-boolean v2, Lcom/android/task/TaskLaunchActivity;->mbExitFlg:Z

    .line 47
    sput-boolean v2, Lcom/android/task/TaskLaunchActivity;->mbMainFlg:Z

    .line 48
    invoke-virtual {p0}, Lcom/android/task/TaskLaunchActivity;->finish()V

    goto :goto_19
.end method
