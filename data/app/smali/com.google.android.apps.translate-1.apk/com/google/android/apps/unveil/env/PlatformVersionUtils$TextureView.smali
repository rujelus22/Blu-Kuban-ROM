.class public Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;
.super Ljava/lang/Object;
.source "PlatformVersionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/PlatformVersionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureView"
.end annotation


# instance fields
.field private surfaceTexture:Ljava/lang/Object;

.field private final textureView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;->textureView:Landroid/view/View;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;->surfaceTexture:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter "surfaceTexture"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;->textureView:Landroid/view/View;

    .line 60
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;->surfaceTexture:Ljava/lang/Object;

    .line 61
    return-void
.end method


# virtual methods
.method public getSurfaceTexture()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;->surfaceTexture:Ljava/lang/Object;

    if-nez v0, :cond_13

    .line 65
    invoke-static {}, Lcom/google/android/apps/unveil/env/PlatformVersionUtils;->access$000()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;->textureView:Landroid/view/View;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    #calls: Lcom/google/android/apps/unveil/env/PlatformVersionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/unveil/env/PlatformVersionUtils;->access$100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;->surfaceTexture:Ljava/lang/Object;

    .line 67
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;->surfaceTexture:Ljava/lang/Object;

    return-object v0
.end method
