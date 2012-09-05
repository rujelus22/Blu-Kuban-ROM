.class Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->createDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 8050
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 8053
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 8054
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    .line 8055
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    .line 8056
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->saveMenuMode(I)V

    .line 8058
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    .line 8059
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    .line 8060
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->saveMenuMode(I)V

    .line 8062
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->removeDialog(I)V

    .line 8064
    return-void
.end method
