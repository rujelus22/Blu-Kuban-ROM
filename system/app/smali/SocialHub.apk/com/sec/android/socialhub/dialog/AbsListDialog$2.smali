.class Lcom/sec/android/socialhub/dialog/AbsListDialog$2;
.super Ljava/lang/Object;
.source "AbsListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/dialog/AbsListDialog;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/dialog/AbsListDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/dialog/AbsListDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog$2;->this$0:Lcom/sec/android/socialhub/dialog/AbsListDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog$2;->this$0:Lcom/sec/android/socialhub/dialog/AbsListDialog;

    iget-object v0, v0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mDismisListener:Lcom/sec/android/socialhub/dialog/AbsListDialog$IDialogDismissListener;

    if-eqz v0, :cond_11

    .line 99
    iget-object v0, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog$2;->this$0:Lcom/sec/android/socialhub/dialog/AbsListDialog;

    iget-object v0, v0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mDismisListener:Lcom/sec/android/socialhub/dialog/AbsListDialog$IDialogDismissListener;

    iget-object v1, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog$2;->this$0:Lcom/sec/android/socialhub/dialog/AbsListDialog;

    iget-boolean v1, v1, Lcom/sec/android/socialhub/dialog/AbsListDialog;->bIsSelected:Z

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/dialog/AbsListDialog$IDialogDismissListener;->onDismis(Z)V

    .line 101
    :cond_11
    return-void
.end method
