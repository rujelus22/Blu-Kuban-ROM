.class Lcom/sec/android/app/twlauncher/Launcher$TextDialog$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 5860
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 5862
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelRemovePage()V

    .line 5863
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    #calls: Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->cleanup()V
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->access$4100(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V

    .line 5864
    return-void
.end method
