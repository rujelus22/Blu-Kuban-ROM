.class Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog$2;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 5697
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 5699
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    .line 5700
    return-void
.end method
