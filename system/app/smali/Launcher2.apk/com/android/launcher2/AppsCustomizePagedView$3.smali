.class Lcom/android/launcher2/AppsCustomizePagedView$3;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppsCustomizePagedView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppsCustomizePagedView;

.field final synthetic val$appInfo:Lcom/android/launcher2/ApplicationInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/ApplicationInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iput-object p2, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->val$appInfo:Lcom/android/launcher2/ApplicationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    #getter for: Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->access$000(Lcom/android/launcher2/AppsCustomizePagedView;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->val$appInfo:Lcom/android/launcher2/ApplicationInfo;

    iget-object v1, v1, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->val$appInfo:Lcom/android/launcher2/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 502
    return-void
.end method
