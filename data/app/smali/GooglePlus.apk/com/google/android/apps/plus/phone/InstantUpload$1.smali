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
    .line 168
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/InstantUpload$1;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/google/android/apps/plus/phone/InstantUpload$1;->val$start:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 172
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/InstantUpload$1;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 173
    .local v4, pm:Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/InstantUpload$1;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, packageName:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/google/android/apps/plus/phone/InstantUpload$1;->val$start:Z

    if-eqz v6, :cond_34

    move v2, v5

    .line 177
    .local v2, newState:I
    :goto_12
    new-instance v1, Landroid/content/ComponentName;

    const-class v6, Lcom/google/android/apps/plus/service/CameraMonitor;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v3, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v1, componentName:Landroid/content/ComponentName;
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v6

    if-eq v6, v2, :cond_26

    .line 181
    invoke-virtual {v4, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 186
    :cond_26
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/InstantUpload$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 187
    .local v0, applicationContext:Landroid/content/Context;
    iget-boolean v5, p0, Lcom/google/android/apps/plus/phone/InstantUpload$1;->val$start:Z

    if-eqz v5, :cond_36

    .line 188
    invoke-static {v0}, Lcom/google/android/apps/plus/service/CameraMonitor;->registerObservers(Landroid/content/Context;)V

    .line 192
    :goto_33
    return-void

    .line 174
    .end local v0           #applicationContext:Landroid/content/Context;
    .end local v1           #componentName:Landroid/content/ComponentName;
    .end local v2           #newState:I
    :cond_34
    const/4 v2, 0x2

    goto :goto_12

    .line 190
    .restart local v0       #applicationContext:Landroid/content/Context;
    .restart local v1       #componentName:Landroid/content/ComponentName;
    .restart local v2       #newState:I
    :cond_36
    invoke-static {v0}, Lcom/google/android/apps/plus/service/CameraMonitor;->unregisterObservers(Landroid/content/Context;)V

    goto :goto_33
.end method
