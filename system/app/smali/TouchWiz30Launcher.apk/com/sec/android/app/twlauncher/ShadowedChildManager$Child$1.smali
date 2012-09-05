.class Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child$1;
.super Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
.source "ShadowedChildManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child$1;->this$1:Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;

    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    return-void
.end method


# virtual methods
.method public onContextLost()V
    .registers 3

    .prologue
    .line 98
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->onContextLost()V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child$1;->this$1:Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mInvalidated:Z

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child$1;->this$1:Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mHaveUploadedOnce:Z

    .line 101
    return-void
.end method
