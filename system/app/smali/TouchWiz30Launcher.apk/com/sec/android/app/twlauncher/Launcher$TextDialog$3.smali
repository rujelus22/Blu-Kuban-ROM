.class Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 5884
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5886
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget v0, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->mId:I

    .line 5887
    .local v0, id:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    .line 5888
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->uninstallPackage()Z
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$4300(Lcom/sec/android/app/twlauncher/Launcher;)Z

    .line 5899
    :cond_e
    :goto_e
    return-void

    .line 5889
    :cond_f
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    .line 5890
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->menudiscard()V

    .line 5891
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    #calls: Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->cleanup()V
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->access$4100(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V

    goto :goto_e

    .line 5893
    :cond_1f
    const/4 v1, 0x5

    if-eq v0, v1, :cond_26

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2e

    .line 5895
    :cond_26
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->removePage()V

    goto :goto_e

    .line 5896
    :cond_2e
    const/4 v1, 0x6

    if-ne v0, v1, :cond_e

    .line 5897
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mFolderToRemove:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-static {v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$4400(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->removeFolderCB(ZLcom/sec/android/app/twlauncher/UserFolderInfo;)V

    goto :goto_e
.end method
