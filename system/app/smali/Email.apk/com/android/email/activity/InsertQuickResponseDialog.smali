.class public Lcom/android/email/activity/InsertQuickResponseDialog;
.super Landroid/app/DialogFragment;
.source "InsertQuickResponseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/InsertQuickResponseDialog$Callback;
    }
.end annotation


# instance fields
.field private mQuickResponsesView:Landroid/widget/ListView;

.field private mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 52
    return-void
.end method

.method private getCallback()Lcom/android/email/activity/InsertQuickResponseDialog$Callback;
    .registers 3

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/email/activity/InsertQuickResponseDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 146
    .local v0, targetFragment:Landroid/app/Fragment;
    if-eqz v0, :cond_9

    .line 147
    check-cast v0, Lcom/android/email/activity/InsertQuickResponseDialog$Callback;

    .line 149
    .end local v0           #targetFragment:Landroid/app/Fragment;
    :goto_8
    return-object v0

    .restart local v0       #targetFragment:Landroid/app/Fragment;
    :cond_9
    invoke-virtual {p0}, Lcom/android/email/activity/InsertQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/InsertQuickResponseDialog$Callback;

    move-object v0, v1

    goto :goto_8
.end method

.method public static newInstance(Landroid/app/Fragment;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/activity/InsertQuickResponseDialog;
    .registers 10
    .parameter "callbackFragment"
    .parameter "account"

    .prologue
    .line 67
    new-instance v3, Lcom/android/email/activity/InsertQuickResponseDialog;

    invoke-direct {v3}, Lcom/android/email/activity/InsertQuickResponseDialog;-><init>()V

    .line 71
    .local v3, dialog:Lcom/android/email/activity/InsertQuickResponseDialog;
    if-eqz p0, :cond_f

    .line 73
    :try_start_7
    move-object v0, p0

    check-cast v0, Lcom/android/email/activity/InsertQuickResponseDialog$Callback;

    move-object v2, v0
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_b} :catch_1d

    .line 78
    .local v2, callback:Lcom/android/email/activity/InsertQuickResponseDialog$Callback;
    const/4 v5, 0x0

    invoke-virtual {v3, p0, v5}, Lcom/android/email/activity/InsertQuickResponseDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 81
    .end local v2           #callback:Lcom/android/email/activity/InsertQuickResponseDialog$Callback;
    :cond_f
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v1, args:Landroid/os/Bundle;
    const-string v5, "account"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 83
    invoke-virtual {v3, v1}, Lcom/android/email/activity/InsertQuickResponseDialog;->setArguments(Landroid/os/Bundle;)V

    .line 84
    return-object v3

    .line 74
    .end local v1           #args:Landroid/os/Bundle;
    :catch_1d
    move-exception v4

    .line 75
    .local v4, e:Ljava/lang/ClassCastException;
    new-instance v5, Ljava/lang/ClassCastException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " must implement Callback"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 139
    const/4 v0, -0x2

    if-ne p2, v0, :cond_6

    .line 140
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 142
    :cond_6
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 16
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/android/email/activity/InsertQuickResponseDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v13

    .line 91
    .local v13, targetFragment:Landroid/app/Fragment;
    if-eqz v13, :cond_d

    .line 94
    :try_start_7
    invoke-virtual {p0}, Lcom/android/email/activity/InsertQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v11

    check-cast v11, Lcom/android/email/activity/InsertQuickResponseDialog$Callback;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_d} :catch_62

    .line 101
    :cond_d
    invoke-virtual {p0}, Lcom/android/email/activity/InsertQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 102
    .local v5, context:Landroid/content/Context;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    .local v10, b:Landroid/app/AlertDialog$Builder;
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, v5}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/InsertQuickResponseDialog;->mQuickResponsesView:Landroid/widget/ListView;

    .line 106
    invoke-virtual {p0}, Lcom/android/email/activity/InsertQuickResponseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/android/emailcommon/provider/Account;

    .line 107
    .local v9, account:Lcom/android/emailcommon/provider/Account;
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/InsertQuickResponseDialog;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 108
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;

    iget-object v1, p0, Lcom/android/email/activity/InsertQuickResponseDialog;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    iget-wide v2, v9, Lcom/android/emailcommon/provider/Account;->mId:J

    iget-object v4, p0, Lcom/android/email/activity/InsertQuickResponseDialog;->mQuickResponsesView:Landroid/widget/ListView;

    const/4 v6, 0x0

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;JLandroid/widget/ListView;Landroid/content/Context;Landroid/app/FragmentManager;Landroid/widget/AdapterView$OnItemClickListener;Z)V

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 111
    invoke-virtual {p0}, Lcom/android/email/activity/InsertQuickResponseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/InsertQuickResponseDialog;->mQuickResponsesView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 95
    .end local v5           #context:Landroid/content/Context;
    .end local v9           #account:Lcom/android/emailcommon/provider/Account;
    .end local v10           #b:Landroid/app/AlertDialog$Builder;
    :catch_62
    move-exception v12

    .line 96
    .local v12, e:Ljava/lang/ClassCastException;
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/activity/InsertQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement Callback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/email/activity/InsertQuickResponseDialog;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 121
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 122
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/android/email/activity/InsertQuickResponseDialog;->getCallback()Lcom/android/email/activity/InsertQuickResponseDialog$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/InsertQuickResponseDialog;->mQuickResponsesView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/email/activity/InsertQuickResponseDialog$Callback;->onQuickResponseSelected(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/email/activity/InsertQuickResponseDialog;->dismiss()V

    .line 132
    return-void
.end method
