.class public Lcom/swype/android/settings/SelectUdbWordsActivity;
.super Landroid/app/ListActivity;
.source "SelectUdbWordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field protected static final DIALOG_CONFIRM_DELETE:I


# instance fields
.field protected deleteButton:Landroid/view/View;

.field protected selector:Landroid/widget/Checkable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 168
    return-void
.end method


# virtual methods
.method protected deleteCheckedWords()V
    .registers 5

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/swype/android/settings/SelectUdbWordsActivity;->getWordListAdapter()Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->getChecked()Ljava/util/Set;

    move-result-object v0

    .line 149
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_28

    .line 150
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 151
    const-string v2, "words"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/swype/android/settings/SelectUdbWordsActivity;->setResult(ILandroid/content/Intent;)V

    .line 153
    invoke-virtual {p0}, Lcom/swype/android/settings/SelectUdbWordsActivity;->finish()V

    .line 155
    :cond_28
    return-void
.end method

.method protected getWordListAdapter()Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;
    .registers 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/swype/android/settings/SelectUdbWordsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v2, 0x7f030010

    invoke-virtual {p0, v2}, Lcom/swype/android/settings/SelectUdbWordsActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/swype/android/settings/SelectUdbWordsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "words"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 49
    .local v1, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/swype/android/settings/SelectUdbWordsActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 50
    .local v0, checked:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_20

    .line 51
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #checked:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 54
    .restart local v0       #checked:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_20
    new-instance v2, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;

    invoke-direct {v2, p0, v1, v0}, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;-><init>(Lcom/swype/android/settings/SelectUdbWordsActivity;Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {p0, v2}, Lcom/swype/android/settings/SelectUdbWordsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    const v2, 0x1020014

    invoke-virtual {p0, v2}, Lcom/swype/android/settings/SelectUdbWordsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    iput-object v2, p0, Lcom/swype/android/settings/SelectUdbWordsActivity;->selector:Landroid/widget/Checkable;

    .line 57
    iget-object v2, p0, Lcom/swype/android/settings/SelectUdbWordsActivity;->selector:Landroid/widget/Checkable;

    check-cast v2, Landroid/view/View;

    new-instance v3, Lcom/swype/android/settings/SelectUdbWordsActivity$1;

    invoke-direct {v3, p0}, Lcom/swype/android/settings/SelectUdbWordsActivity$1;-><init>(Lcom/swype/android/settings/SelectUdbWordsActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v2, 0x1020019

    invoke-virtual {p0, v2}, Lcom/swype/android/settings/SelectUdbWordsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/swype/android/settings/SelectUdbWordsActivity;->deleteButton:Landroid/view/View;

    .line 67
    iget-object v2, p0, Lcom/swype/android/settings/SelectUdbWordsActivity;->deleteButton:Landroid/view/View;

    new-instance v3, Lcom/swype/android/settings/SelectUdbWordsActivity$2;

    invoke-direct {v3, p0}, Lcom/swype/android/settings/SelectUdbWordsActivity$2;-><init>(Lcom/swype/android/settings/SelectUdbWordsActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v2, 0x102001a

    invoke-virtual {p0, v2}, Lcom/swype/android/settings/SelectUdbWordsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/swype/android/settings/SelectUdbWordsActivity$3;

    invoke-direct {v3, p0}, Lcom/swype/android/settings/SelectUdbWordsActivity$3;-><init>(Lcom/swype/android/settings/SelectUdbWordsActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/swype/android/settings/SelectUdbWordsActivity;->updateControls()V

    .line 86
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 102
    packed-switch p1, :pswitch_data_44

    :cond_4
    move-object v0, v3

    .line 122
    :goto_5
    return-object v0

    .line 104
    :pswitch_6
    invoke-virtual {p0}, Lcom/swype/android/settings/SelectUdbWordsActivity;->getWordListAdapter()Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->getChecked()Ljava/util/Set;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 107
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/swype/android/settings/SelectUdbWordsActivity$4;

    invoke-direct {v2, p0}, Lcom/swype/android/settings/SelectUdbWordsActivity$4;-><init>(Lcom/swype/android/settings/SelectUdbWordsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_5

    .line 102
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/swype/android/settings/SelectUdbWordsActivity;->getWordListAdapter()Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->toggle(I)V

    .line 91
    invoke-virtual {p0}, Lcom/swype/android/settings/SelectUdbWordsActivity;->updateControls()V

    .line 92
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 127
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 128
    packed-switch p1, :pswitch_data_34

    .line 142
    :goto_7
    return-void

    .line 130
    :pswitch_8
    invoke-virtual {p0}, Lcom/swype/android/settings/SelectUdbWordsActivity;->getWordListAdapter()Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->getChecked()Ljava/util/Set;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 133
    check-cast p2, Landroid/app/AlertDialog;

    .line 136
    if-ne v0, v2, :cond_23

    .line 137
    const v0, 0x7f07009a

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SelectUdbWordsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_1f
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 139
    :cond_23
    const v1, 0x7f07009b

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/swype/android/settings/SelectUdbWordsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 128
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/swype/android/settings/SelectUdbWordsActivity;->getWordListAdapter()Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->getChecked()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected updateControls()V
    .registers 4

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/swype/android/settings/SelectUdbWordsActivity;->getWordListAdapter()Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;

    move-result-object v0

    .line 159
    .local v0, adapter:Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;
    iget-object v1, p0, Lcom/swype/android/settings/SelectUdbWordsActivity;->deleteButton:Landroid/view/View;

    invoke-virtual {v0}, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->isAnyWordChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 160
    iget-object v1, p0, Lcom/swype/android/settings/SelectUdbWordsActivity;->selector:Landroid/widget/Checkable;

    invoke-virtual {v0}, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->isEveryWordChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 161
    return-void
.end method
