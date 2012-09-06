.class public Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SelectInstrumentFamilyDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$InstrumentFamilyListAdapter;,
        Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$SelectInstrumentFamilyListener;
    }
.end annotation


# instance fields
.field private mSelectionList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->mSelectionList:Landroid/widget/ListView;

    return-object v0
.end method

.method public static newInstance(Ljava/util/List;Ljava/util/List;II)Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;
    .registers 9
    .parameter
    .parameter
    .parameter "titleResourceId"
    .parameter "defaultIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)",
            "Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, instrumentFamilyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p1, instrumentAddTextList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;

    invoke-direct {v2}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;-><init>()V

    .line 57
    .local v2, dialogFragment:Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v1, arguments:Landroid/os/Bundle;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 59
    .local v3, selectionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 61
    .local v0, addTextList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    const-string v4, "instrument_family_list"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 63
    const-string v4, "instrument_add_text_list"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 64
    const-string v4, "title_resource_id"

    invoke-virtual {v1, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    const-string v4, "selected_index"

    invoke-virtual {v1, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {v2, v1}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v2
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    .line 111
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "instrument_family_list"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 113
    .local v3, instrumentFamilyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "instrument_add_text_list"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 116
    .local v2, instrumentAddTextList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_7e

    .line 117
    const-string v7, "selected_index"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 121
    .local v4, selectedIndex:Ljava/lang/Integer;
    :goto_21
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "title_resource_id"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 122
    .local v6, titleResourceId:I
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f0e003e

    invoke-direct {v0, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 125
    .local v0, contextThemeWrapper:Landroid/view/ContextThemeWrapper;
    new-instance v5, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$InstrumentFamilyListAdapter;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v5, v3, v2, v7}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$InstrumentFamilyListAdapter;-><init>(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V

    .line 127
    .local v5, selectionListAdapter:Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$InstrumentFamilyListAdapter;
    new-instance v7, Landroid/widget/ListView;

    invoke-direct {v7, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->mSelectionList:Landroid/widget/ListView;

    .line 128
    iget-object v7, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->mSelectionList:Landroid/widget/ListView;

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 129
    iget-object v7, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->mSelectionList:Landroid/widget/ListView;

    invoke-virtual {v7, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    iget-object v7, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->mSelectionList:Landroid/widget/ListView;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 132
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    .local v1, dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 134
    iget-object v7, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->mSelectionList:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 135
    const v7, 0x7f070059

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 136
    const v7, 0x7f07012b

    new-instance v8, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$1;

    invoke-direct {v8, p0, v3}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$1;-><init>(Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7

    .line 119
    .end local v0           #contextThemeWrapper:Landroid/view/ContextThemeWrapper;
    .end local v1           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v4           #selectedIndex:Ljava/lang/Integer;
    .end local v5           #selectionListAdapter:Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$InstrumentFamilyListAdapter;
    .end local v6           #titleResourceId:I
    :cond_7e
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "selected_index"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .restart local v4       #selectedIndex:Ljava/lang/Integer;
    goto :goto_21
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 153
    const-string v0, "selected_index"

    iget-object v1, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->mSelectionList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    return-void
.end method
