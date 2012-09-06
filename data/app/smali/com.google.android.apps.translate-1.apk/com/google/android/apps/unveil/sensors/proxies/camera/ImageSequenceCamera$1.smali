.class Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$1;
.super Ljava/lang/Object;
.source "ImageSequenceCamera.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;-><init>(Landroid/os/Handler;Ljava/util/Map;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$1;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .parameter "dir"
    .parameter "filename"

    .prologue
    .line 111
    const-string v0, ".jpg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, ".png"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
