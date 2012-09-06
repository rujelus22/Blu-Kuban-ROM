.class public final Lcom/google/android/apps/reader/fragment/MainScreen;
.super Ljava/lang/Object;
.source "MainScreen.java"


# static fields
.field private static final FLAG_ACTIVITY_CLEAR_TASK:I = 0x8000


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static intent(Landroid/content/Context;Lcom/google/android/accounts/Account;)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_24

    .line 69
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    :cond_24
    if-eqz p1, :cond_34

    .line 74
    const-string v1, "authAccount"

    iget-object v2, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "accountType"

    iget-object v2, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    :cond_34
    return-object v0
.end method

.method public static show(Landroid/content/Context;Lcom/google/android/accounts/Account;)V
    .registers 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/google/android/apps/reader/fragment/MainScreen;->intent(Landroid/content/Context;Lcom/google/android/accounts/Account;)Landroid/content/Intent;

    move-result-object v0

    .line 55
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method
