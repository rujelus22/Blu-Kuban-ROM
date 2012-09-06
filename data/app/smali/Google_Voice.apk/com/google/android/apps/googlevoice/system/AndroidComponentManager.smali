.class public Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;
.super Ljava/lang/Object;
.source "AndroidComponentManager.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/system/ComponentManager;


# instance fields
.field private final backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;

.field private final context:Landroid/content/Context;

.field private final packageManager:Lcom/google/android/apps/googlevoice/proxy/PackageManagerProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/proxy/PackageManagerProxy;Lcom/google/android/apps/googlevoice/BackgroundThread;)V
    .registers 4
    .parameter "context"
    .parameter "packageManager"
    .parameter "backgroundThread"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;->packageManager:Lcom/google/android/apps/googlevoice/proxy/PackageManagerProxy;

    .line 26
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;->backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;Ljava/lang/Class;)Landroid/content/ComponentName;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;->getComponentName(Ljava/lang/Class;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;)Lcom/google/android/apps/googlevoice/proxy/PackageManagerProxy;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;->packageManager:Lcom/google/android/apps/googlevoice/proxy/PackageManagerProxy;

    return-object v0
.end method

.method private getComponentName(Ljava/lang/Class;)Landroid/content/ComponentName;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, componentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public setComponentEnabled(Ljava/lang/Class;Z)V
    .registers 5
    .parameter
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, componentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;->backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;

    new-instance v1, Lcom/google/android/apps/googlevoice/system/AndroidComponentManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/googlevoice/system/AndroidComponentManager$1;-><init>(Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;Ljava/lang/Class;Z)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/BackgroundThread;->runInBackground(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method
