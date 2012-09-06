.class public final Lcom/dropbox/android/util/aI;
.super Ljava/lang/Object;
.source "panda.py"


# direct methods
.method public static a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/dropbox/android/util/bb;->b(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 49
    const-class v0, Lcom/dropbox/android/service/DropboxNetworkReceiver;

    invoke-static {p0, v0}, Lcom/dropbox/android/util/aI;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    const-class v0, Lcom/dropbox/android/service/PowerReceiver;

    invoke-static {p0, v0}, Lcom/dropbox/android/util/aI;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    :cond_12
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 78
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    .line 80
    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 83
    :cond_14
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 35
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/dropbox/android/util/bb;->b(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 36
    if-eqz p2, :cond_19

    move v0, v1

    .line 37
    :goto_c
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 40
    :cond_18
    return-void

    .line 36
    :cond_19
    const/4 v0, 0x2

    goto :goto_c
.end method
