.class public Lcom/sec/android/Kies/kies_admin;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "kies_admin.java"


# static fields
.field private static final DBG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 13
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_a
    sput-boolean v0, Lcom/sec/android/Kies/kies_admin;->DBG:Z

    return-void

    :cond_d
    move v0, v1

    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method

.method private removeKiesRealKey()V
    .registers 5

    .prologue
    .line 39
    const-string v0, "/data/data/com.sec.android.Kies/realkey.key"

    .line 42
    .local v0, REAL_KEY_FILE:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, realKey:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 45
    sget-boolean v2, Lcom/sec/android/Kies/kies_admin;->DBG:Z

    if-eqz v2, :cond_18

    const-string v2, "KIES"

    const-string v3, "Delete real key"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_18
    :goto_18
    return-void

    .line 47
    :cond_19
    sget-boolean v2, Lcom/sec/android/Kies/kies_admin;->DBG:Z

    if-eqz v2, :cond_18

    const-string v2, "KIES"

    const-string v3, "Real key is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/android/Kies/kies_admin;->removeKiesRealKey()V

    .line 28
    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 20
    return-void
.end method

.method public onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/android/Kies/kies_admin;->removeKiesRealKey()V

    .line 36
    return-void
.end method
