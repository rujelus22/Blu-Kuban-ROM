.class Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GLSurfaceCreatedNotifier;
.super Ljava/lang/Object;
.source "GLSurfaceViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLSurfaceCreatedNotifier"
.end annotation


# instance fields
.field private final mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/twlauncher/Launcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 3
    .parameter "launcher"

    .prologue
    .line 1207
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1208
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GLSurfaceCreatedNotifier;->mLauncher:Ljava/lang/ref/WeakReference;

    .line 1209
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1212
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GLSurfaceCreatedNotifier;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    .line 1213
    .local v0, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    if-eqz v0, :cond_d

    .line 1214
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDeferredOptionsMenu()V

    .line 1216
    :cond_d
    return-void
.end method
