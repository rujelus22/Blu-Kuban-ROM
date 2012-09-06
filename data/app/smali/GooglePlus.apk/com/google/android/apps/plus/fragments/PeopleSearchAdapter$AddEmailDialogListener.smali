.class public Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$AddEmailDialogListener;
.super Landroid/support/v4/app/Fragment;
.source "PeopleSearchAdapter.java"

# interfaces
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddEmailDialogListener"
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 287
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 317
    return-void
.end method

.method public onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "which"
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 324
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 310
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$AddEmailDialogListener;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;

    if-eqz v0, :cond_9

    .line 301
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$AddEmailDialogListener;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 303
    :cond_9
    return-void
.end method

.method public setAdapter(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V
    .registers 2
    .parameter "adapter"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$AddEmailDialogListener;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;

    .line 293
    return-void
.end method
