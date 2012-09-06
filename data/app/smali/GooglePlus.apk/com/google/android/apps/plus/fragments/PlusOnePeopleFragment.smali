.class public Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "PlusOnePeopleFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment$PeopleSetQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/DialogFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAdapter:Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->dismiss()V

    .line 113
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 8
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 77
    packed-switch p1, :pswitch_data_20

    .line 89
    :cond_4
    :goto_4
    return-object v2

    .line 79
    :pswitch_5
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v3, :cond_4

    .line 83
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 84
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "plus_one_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, plusOneId:Ljava/lang/String;
    new-instance v2, Lcom/google/android/apps/plus/phone/PlusOnePeopleLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/apps/plus/phone/PlusOnePeopleLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_4

    .line 77
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 54
    const v3, 0x7f030064

    invoke-virtual {p1, v3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 56
    .local v2, view:Landroid/view/View;
    new-instance v3, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;

    .line 57
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 58
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 59
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    const v3, 0x7f09006e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v3, 0x7f09006f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 64
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    const v4, 0x7f0801d3

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, extras:Landroid/os/Bundle;
    const-string v3, "account"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 69
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v5, v6, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 70
    const v3, 0x7f090079

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 72
    return-object v2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
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
    .line 117
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;

    invoke-virtual {v3, p3}, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->isExtraPeopleViewIndex(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 130
    :cond_8
    :goto_8
    return-void

    .line 121
    :cond_9
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;

    invoke-virtual {v3, p3}, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 122
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_8

    .line 126
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, personId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 129
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_8
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 6
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_34

    .line 103
    :goto_7
    return-void

    .line 96
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090079

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "total_plus_ones"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 98
    .local v0, totalPlusOnes:I
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->setExtraPeopleCount(I)V

    .line 99
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;

    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_7

    .line 94
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
