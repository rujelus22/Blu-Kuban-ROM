.class Lcom/google/android/apps/unveil/env/gl/GLCameraPreview$1;
.super Ljava/lang/Object;
.source "GLCameraPreview.java"

# interfaces
.implements Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer$RenderCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview$1;->this$0:Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public frameRendered()V
    .registers 1

    .prologue
    .line 52
    return-void
.end method
