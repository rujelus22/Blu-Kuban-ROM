.class Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;)V
    .registers 2
    .parameter

    .prologue
    .line 5722
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "aView"

    .prologue
    .line 5724
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->mDontShowAgain:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->access$3900(Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    #calls: Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->dialogRes(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->access$4000(Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;Z)V

    .line 5725
    return-void
.end method
