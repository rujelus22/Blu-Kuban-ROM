.class Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->createDialog(II)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 5655
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "dialog"

    .prologue
    .line 5657
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->mId:I
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->access$3700(Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherManager;->dialogRes(IZZ)V

    .line 5658
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;

    #calls: Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->closeDialog()V
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->access$3800(Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;)V

    .line 5659
    return-void
.end method
