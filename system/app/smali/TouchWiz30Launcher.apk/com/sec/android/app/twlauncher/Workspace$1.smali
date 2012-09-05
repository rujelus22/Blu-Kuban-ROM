.class Lcom/sec/android/app/twlauncher/Workspace$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Workspace;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Workspace;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Workspace;)V
    .registers 2
    .parameter

    .prologue
    .line 1253
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace$1;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace$1;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->hide()V

    .line 1256
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace$1;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->requestFrame()V

    .line 1257
    return-void
.end method
