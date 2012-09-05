.class Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1$2;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 5731
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 5733
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->dialogRes(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->access$4000(Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;Z)V

    .line 5734
    return-void
.end method
