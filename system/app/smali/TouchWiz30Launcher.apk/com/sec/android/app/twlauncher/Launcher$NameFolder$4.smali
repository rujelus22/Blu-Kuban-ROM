.class Lcom/sec/android/app/twlauncher/Launcher$NameFolder$4;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->createDialog(Landroid/app/AlertDialog$Builder;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/Launcher$NameFolder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher$NameFolder;)V
    .registers 2
    .parameter

    .prologue
    .line 5560
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder$4;->this$1:Lcom/sec/android/app/twlauncher/Launcher$NameFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 5566
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder$4;->this$1:Lcom/sec/android/app/twlauncher/Launcher$NameFolder;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->mInput:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->access$3200(Lcom/sec/android/app/twlauncher/Launcher$NameFolder;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 5567
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder$4;->this$1:Lcom/sec/android/app/twlauncher/Launcher$NameFolder;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5568
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder$4;->this$1:Lcom/sec/android/app/twlauncher/Launcher$NameFolder;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->mInput:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->access$3200(Lcom/sec/android/app/twlauncher/Launcher$NameFolder;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 5571
    return-void
.end method
