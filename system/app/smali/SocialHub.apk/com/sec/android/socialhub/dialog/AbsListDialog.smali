.class public abstract Lcom/sec/android/socialhub/dialog/AbsListDialog;
.super Landroid/app/AlertDialog$Builder;
.source "AbsListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/dialog/AbsListDialog$IDialogClickListener;,
        Lcom/sec/android/socialhub/dialog/AbsListDialog$IDialogDismissListener;
    }
.end annotation


# instance fields
.field protected bIsSelected:Z

.field protected mAdapter:Landroid/widget/ListAdapter;

.field protected mClickListener:Lcom/sec/android/socialhub/dialog/AbsListDialog$IDialogClickListener;

.field protected mContext:Landroid/content/Context;

.field protected mDismisListener:Lcom/sec/android/socialhub/dialog/AbsListDialog$IDialogDismissListener;

.field protected mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "object"
    .parameter "icon"
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    .line 32
    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mObject:Ljava/lang/Object;

    .line 33
    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mAdapter:Landroid/widget/ListAdapter;

    .line 34
    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mDismisListener:Lcom/sec/android/socialhub/dialog/AbsListDialog$IDialogDismissListener;

    .line 35
    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mClickListener:Lcom/sec/android/socialhub/dialog/AbsListDialog$IDialogClickListener;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->bIsSelected:Z

    .line 41
    iput-object p1, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mObject:Ljava/lang/Object;

    .line 43
    invoke-virtual {p0, p3}, Lcom/sec/android/socialhub/dialog/AbsListDialog;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 44
    invoke-virtual {p0, p4}, Lcom/sec/android/socialhub/dialog/AbsListDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 45
    return-void
.end method


# virtual methods
.method public abstract getDialogAdapter(Ljava/lang/Object;)Landroid/widget/ListAdapter;
.end method

.method public abstract onHandleCommand(Landroid/content/DialogInterface;I)V
.end method

.method public setOnClickListner(Lcom/sec/android/socialhub/dialog/AbsListDialog$IDialogClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mClickListener:Lcom/sec/android/socialhub/dialog/AbsListDialog$IDialogClickListener;

    .line 60
    return-void
.end method

.method public setOnDismisListener(Lcom/sec/android/socialhub/dialog/AbsListDialog$IDialogDismissListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mDismisListener:Lcom/sec/android/socialhub/dialog/AbsListDialog$IDialogDismissListener;

    .line 55
    return-void
.end method

.method public showDialog()V
    .registers 4

    .prologue
    .line 74
    iget-object v1, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mObject:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/dialog/AbsListDialog;->getDialogAdapter(Ljava/lang/Object;)Landroid/widget/ListAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mAdapter:Landroid/widget/ListAdapter;

    .line 76
    iget-object v1, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mAdapter:Landroid/widget/ListAdapter;

    new-instance v2, Lcom/sec/android/socialhub/dialog/AbsListDialog$1;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/dialog/AbsListDialog$1;-><init>(Lcom/sec/android/socialhub/dialog/AbsListDialog;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/socialhub/dialog/AbsListDialog;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {p0}, Lcom/sec/android/socialhub/dialog/AbsListDialog;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 93
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v1, Lcom/sec/android/socialhub/dialog/AbsListDialog$2;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/dialog/AbsListDialog$2;-><init>(Lcom/sec/android/socialhub/dialog/AbsListDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 104
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 105
    return-void
.end method
