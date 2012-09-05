.class Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;
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
    .line 5868
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5870
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget v0, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->mId:I

    .line 5872
    .local v0, id:I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    const/16 v1, 0x12

    if-ne v0, v1, :cond_18

    .line 5874
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->cancelRemovePage()V

    .line 5880
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    #calls: Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->cleanup()V
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->access$4100(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V

    .line 5881
    return-void

    .line 5875
    :cond_18
    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    .line 5876
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$4200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    goto :goto_12

    .line 5877
    :cond_27
    const/4 v1, 0x6

    if-ne v0, v1, :cond_12

    .line 5878
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->removeFolderCB(ZLcom/sec/android/app/twlauncher/UserFolderInfo;)V

    goto :goto_12
.end method
