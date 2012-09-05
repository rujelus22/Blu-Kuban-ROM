.class public Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$AddEmailDialogListener;
.super Landroid/support/v4/app/Fragment;
.source "PeopleSearchListAdapter.java"

# interfaces
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddEmailDialogListener"
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 251
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 281
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 274
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$AddEmailDialogListener;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_9

    .line 265
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$AddEmailDialogListener;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 267
    :cond_9
    return-void
.end method

.method public setAdapter(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V
    .registers 2
    .parameter "adapter"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$AddEmailDialogListener;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    .line 257
    return-void
.end method
