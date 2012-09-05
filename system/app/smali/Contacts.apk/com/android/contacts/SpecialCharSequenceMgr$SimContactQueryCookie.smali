.class Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/SpecialCharSequenceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimContactQueryCookie"
.end annotation


# instance fields
.field public contactNum:I

.field private mHandler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

.field private mToken:I

.field public progressDialog:Landroid/app/ProgressDialog;

.field private textField:Landroid/widget/EditText;


# virtual methods
.method public declared-synchronized getTextField()Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 1008
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->textField:Landroid/widget/EditText;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 1024
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_a

    .line 1025
    iget-object v0, p0, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1030
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->textField:Landroid/widget/EditText;

    .line 1033
    iget-object v0, p0, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->mHandler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    iget v1, p0, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->mToken:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;->cancelOperation(I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 1034
    monitor-exit p0

    return-void

    .line 1024
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
