.class Lcom/google/android/apps/googlevoice/system/AndroidComponentManager$1;
.super Ljava/lang/Object;
.source "AndroidComponentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;->setComponentEnabled(Ljava/lang/Class;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;

.field final synthetic val$componentClass:Ljava/lang/Class;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;Ljava/lang/Class;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AndroidComponentManager$1;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/AndroidComponentManager$1;->val$componentClass:Ljava/lang/Class;

    iput-boolean p3, p0, Lcom/google/android/apps/googlevoice/system/AndroidComponentManager$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidComponentManager$1;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;

    #getter for: Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;->packageManager:Lcom/google/android/apps/googlevoice/proxy/PackageManagerProxy;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;->access$100(Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;)Lcom/google/android/apps/googlevoice/proxy/PackageManagerProxy;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidComponentManager$1;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidComponentManager$1;->val$componentClass:Ljava/lang/Class;

    #calls: Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;->getComponentName(Ljava/lang/Class;)Landroid/content/ComponentName;
    invoke-static {v0, v3}, Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;->access$000(Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;Ljava/lang/Class;)Landroid/content/ComponentName;

    move-result-object v3

    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidComponentManager$1;->val$enabled:Z

    if-eqz v0, :cond_18

    move v0, v1

    :goto_14
    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/apps/googlevoice/proxy/PackageManagerProxy;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 37
    return-void

    .line 34
    :cond_18
    const/4 v0, 0x2

    goto :goto_14
.end method
