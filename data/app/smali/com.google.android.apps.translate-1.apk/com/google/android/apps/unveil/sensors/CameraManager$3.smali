.class Lcom/google/android/apps/unveil/sensors/CameraManager$3;
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
        "Ljava/lang/String;",
        ">;"
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
    .line 280
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$3;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    iput-object p2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$3;->val$unveilContext:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager$3;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$3;->val$unveilContext:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/UnveilContext;->getCameraType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
