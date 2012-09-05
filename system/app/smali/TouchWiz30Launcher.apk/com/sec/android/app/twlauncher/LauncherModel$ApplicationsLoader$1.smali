.class Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

.field final synthetic val$appAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

.field final synthetic val$launcher:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader$1;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader$1;->val$appAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iput-object p3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader$1;->val$launcher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader$1;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$600(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader$1;->val$appAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eq v0, v1, :cond_14

    .line 1038
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "ApplicationsLoader runnable: appAdapter is stale"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :goto_13
    return-void

    .line 1041
    :cond_14
    const-string v0, "Launcher.LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launcher.onApplicationsLoaded; mApplicationsAdpater: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader$1;->val$appAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", items loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader$1;->val$appAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader$1;->val$launcher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader$1;->val$appAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->onApplicationsLoaded(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    goto :goto_13
.end method
