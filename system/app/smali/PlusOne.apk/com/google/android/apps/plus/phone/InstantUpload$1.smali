.class final Lcom/google/android/apps/plus/phone/InstantUpload$1;
.super Ljava/lang/Object;
.source "InstantUpload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/InstantUpload;->startMonitoring(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$start:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/InstantUpload$1;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/google/android/apps/plus/phone/InstantUpload$1;->val$start:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/InstantUpload$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/InstantUpload$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 146
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/InstantUpload$1;->val$start:Z

    if-eqz v0, :cond_2e

    move v0, v1

    .line 150
    :goto_12
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/google/android/apps/plus/service/CameraMonitor;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/InstantUpload$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 155
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/InstantUpload$1;->val$start:Z

    if-eqz v1, :cond_30

    .line 156
    invoke-static {v0}, Lcom/google/android/apps/plus/service/CameraMonitor;->registerObservers(Landroid/content/Context;)V

    .line 160
    :goto_2d
    return-void

    .line 146
    :cond_2e
    const/4 v0, 0x2

    goto :goto_12

    .line 158
    :cond_30
    invoke-static {v0}, Lcom/google/android/apps/plus/service/CameraMonitor;->unregisterObservers(Landroid/content/Context;)V

    goto :goto_2d
.end method
