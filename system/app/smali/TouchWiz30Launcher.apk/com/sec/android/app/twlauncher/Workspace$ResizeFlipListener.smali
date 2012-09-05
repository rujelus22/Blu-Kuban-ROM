.class Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizeFlipListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Workspace;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Workspace;)V
    .registers 2
    .parameter

    .prologue
    .line 3827
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Workspace;Lcom/sec/android/app/twlauncher/Workspace$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3827
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;-><init>(Lcom/sec/android/app/twlauncher/Workspace;)V

    return-void
.end method


# virtual methods
.method public onCustomFlipEnd()V
    .registers 4

    .prologue
    .line 3848
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #getter for: Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$1100(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->onCustomFlipEnd()V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_d} :catch_e

    .line 3853
    :goto_d
    return-void

    .line 3849
    :catch_e
    move-exception v0

    .line 3850
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "Workspace.ResizeFlipListener"

    const-string v2, "CustomViewFlippser is attempting to end a flip on a null AppWidget"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public onCustomFlipStart()V
    .registers 4

    .prologue
    .line 3830
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #getter for: Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$1100(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->onCustomFlipStart()V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_d} :catch_e

    .line 3835
    :goto_d
    return-void

    .line 3831
    :catch_e
    move-exception v0

    .line 3832
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "Workspace.ResizeFlipListener"

    const-string v2, "CustomViewFlippser is attempting to start a flip on a null AppWidget"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method
