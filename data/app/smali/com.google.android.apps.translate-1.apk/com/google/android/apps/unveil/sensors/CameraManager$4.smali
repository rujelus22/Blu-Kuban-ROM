.class Lcom/google/android/apps/unveil/sensors/CameraManager$4;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/google/android/apps/unveil/env/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/sensors/CameraManager;->init(Landroid/content/Context;Lcom/google/android/apps/unveil/UnveilContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/unveil/env/Provider",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

.field final synthetic val$unveilContext:Lcom/google/android/apps/unveil/UnveilContext;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/sensors/CameraManager;Lcom/google/android/apps/unveil/UnveilContext;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$4;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    iput-object p2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$4;->val$unveilContext:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager$4;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$4;->val$unveilContext:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/UnveilContext;->getCameraParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
