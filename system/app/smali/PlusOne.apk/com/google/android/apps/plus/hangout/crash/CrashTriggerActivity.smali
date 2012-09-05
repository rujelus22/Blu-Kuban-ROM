.class public Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity;
.super Landroid/app/Activity;
.source "CrashTriggerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity$JavaCrashOnNativeThreadException;,
        Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity$NativeCrashException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity;->triggerCrash()V

    return-void
.end method

.method private triggerCrash()V
    .registers 4

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, javaCrashSignature:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.google.android.apps.plus.hangout.java_crash_signature"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_19
    if-nez v0, :cond_22

    .line 57
    new-instance v1, Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity$NativeCrashException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity$NativeCrashException;-><init>(Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity$1;)V

    throw v1

    .line 59
    :cond_22
    new-instance v1, Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity$JavaCrashOnNativeThreadException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity$JavaCrashOnNativeThreadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 42
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity$1;-><init>(Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    return-void
.end method
