.class Lcom/sec/android/socialhub/dialog/AbsListDialog$1;
.super Ljava/lang/Object;
.source "AbsListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 80
    iput-object p1, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog$1;->this$0:Lcom/sec/android/socialhub/dialog/AbsListDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog$1;->this$0:Lcom/sec/android/socialhub/dialog/AbsListDialog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->bIsSelected:Z

    .line 84
    iget-object v0, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog$1;->this$0:Lcom/sec/android/socialhub/dialog/AbsListDialog;

    iget-object v0, v0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mClickListener:Lcom/sec/android/socialhub/dialog/AbsListDialog$IDialogClickListener;

    if-eqz v0, :cond_12

    .line 85
    iget-object v0, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog$1;->this$0:Lcom/sec/android/socialhub/dialog/AbsListDialog;

    iget-object v0, v0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mClickListener:Lcom/sec/android/socialhub/dialog/AbsListDialog$IDialogClickListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/socialhub/dialog/AbsListDialog$IDialogClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 86
    :cond_12
    iget-object v0, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog$1;->this$0:Lcom/sec/android/socialhub/dialog/AbsListDialog;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/socialhub/dialog/AbsListDialog;->onHandleCommand(Landroid/content/DialogInterface;I)V

    .line 87
    return-void
.end method
