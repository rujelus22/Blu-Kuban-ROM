.class Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$2;
.super Ljava/lang/Object;
.source "GLSurfaceViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 698
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$2;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 700
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$2;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawRequested:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->access$302(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;Z)Z

    .line 701
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$2;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    #calls: Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawWithoutViewRoot()V
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->access$400(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)V

    .line 702
    return-void
.end method
