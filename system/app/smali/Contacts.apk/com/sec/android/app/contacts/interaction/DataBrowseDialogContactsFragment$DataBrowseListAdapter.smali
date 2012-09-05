.class public Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment$DataBrowseListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataBrowseDialogContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataBrowseListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;Landroid/content/Context;IILjava/util/ArrayList;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "textViewId"
    .parameter
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    .local p5, dataSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment$DataBrowseListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;

    .line 176
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment$DataBrowseListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment$DataBrowseListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    .line 178
    #setter for: Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;->mAccountType:Ljava/lang/String;
    invoke-static {p1, p6}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;->access$102(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment$DataBrowseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 181
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;)V
    .registers 16
    .parameter "view"
    .parameter "context"
    .parameter "dataInfo"

    .prologue
    .line 184
    const-string v3, ""

    .line 185
    .local v3, kindString:Ljava/lang/String;
    const-string v9, ""

    .line 187
    .local v9, typeString:Ljava/lang/String;
    iget-object v5, p3, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;->mimeType:Ljava/lang/String;

    .line 188
    .local v5, mimeType:Ljava/lang/String;
    iget v0, p3, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;->dataType:I

    .line 189
    .local v0, dataType:I
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment$DataBrowseListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment$DataBrowseListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;->mAccountType:Ljava/lang/String;
    invoke-static {v11}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;->access$100(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v5}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v2

    .line 191
    .local v2, kind:Lcom/android/contacts/model/DataKind;
    if-eqz v2, :cond_68

    .line 192
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment$DataBrowseListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget v11, v2, Lcom/android/contacts/model/DataKind;->titleRes:I

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 194
    iget-object v10, v2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v10, :cond_7a

    .line 195
    iget-object v10, v2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/AccountType$EditType;

    .line 196
    .local v8, type:Lcom/android/contacts/model/AccountType$EditType;
    iget v10, v8, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    if-ne v10, v0, :cond_2c

    .line 197
    iget-object v10, v8, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v10, :cond_77

    .line 200
    iget v10, v8, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {p2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 212
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v8           #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_46
    :goto_46
    const v10, 0x1020014

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 214
    .local v6, text1:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v4, kindTypeString:Ljava/lang/StringBuilder;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    if-eqz v9, :cond_61

    .line 217
    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    .end local v4           #kindTypeString:Ljava/lang/StringBuilder;
    .end local v6           #text1:Landroid/widget/TextView;
    :cond_68
    const v10, 0x1020015

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 223
    .local v7, text2:Landroid/widget/TextView;
    iget-object v10, p3, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;->data:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    return-void

    .line 203
    .end local v7           #text2:Landroid/widget/TextView;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v8       #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_77
    iget-object v9, p3, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;->typeString:Ljava/lang/String;

    .line 205
    goto :goto_46

    .line 209
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v8           #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_7a
    const-string v9, ""

    goto :goto_46
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 229
    if-nez p2, :cond_18

    .line 230
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment$DataBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment$DataBrowseListAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 235
    .local v0, v:Landroid/view/View;
    :goto_a
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment$DataBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment$DataBrowseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment$DataBrowseListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;)V

    .line 237
    return-object v0

    .line 232
    .end local v0           #v:Landroid/view/View;
    :cond_18
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_a
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 241
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment$DataBrowseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04004c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 243
    .local v0, view:Landroid/view/View;
    return-object v0
.end method
