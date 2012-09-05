.class public abstract Lcom/google/android/plus1/BasePlusOneAppSignupActivity;
.super Lcom/google/android/plus1/BasePlusOneSignupActivity;
.source "BasePlusOneAppSignupActivity.java"


# static fields
.field private static final DOWNLOAD_ES_INTENT:Landroid/content/Intent;


# instance fields
.field private mLaunchPlusIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.google.android.apps.plus"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sput-object v0, Lcom/google/android/plus1/BasePlusOneAppSignupActivity;->DOWNLOAD_ES_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneAppSignupActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.apps.plus"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/plus1/BasePlusOneAppSignupActivity;->mLaunchPlusIntent:Landroid/content/Intent;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    .line 44
    :cond_f
    :goto_f
    return-void

    .line 31
    :catch_10
    move-exception v0

    .line 32
    .local v0, e:Ljava/lang/Exception;
    instance-of v1, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v1, :cond_26

    .line 35
    const-string v1, "PlusOneActivity"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 36
    const-string v1, "PlusOneActivity"

    const-string v2, "Google+ app is not installed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 39
    :cond_26
    const-string v1, "PlusOneActivity"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 40
    const-string v1, "PlusOneActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
