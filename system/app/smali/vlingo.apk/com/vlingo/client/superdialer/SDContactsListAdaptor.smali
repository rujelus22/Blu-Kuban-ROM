.class public Lcom/vlingo/client/superdialer/SDContactsListAdaptor;
.super Landroid/widget/BaseAdapter;
.source "SDContactsListAdaptor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/superdialer/SDContactsListAdaptor$SDContactClickListener;
    }
.end annotation


# instance fields
.field private final contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

.field private final context:Landroid/content/Context;

.field private currentQuery:Ljava/lang/String;

.field private final listView:Landroid/widget/ListView;

.field private final listener:Lcom/vlingo/client/superdialer/SDContactsListAdaptor$SDContactClickListener;

.field private showing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;Lcom/vlingo/client/core/contacts/ContactsMatcher;Lcom/vlingo/client/superdialer/SDContactsListAdaptor$SDContactClickListener;)V
    .registers 6
    .parameter "context"
    .parameter "lv"
    .parameter "cm"
    .parameter "listener"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->currentQuery:Ljava/lang/String;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->showing:Z

    .line 44
    iput-object p1, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->listView:Landroid/widget/ListView;

    .line 46
    iput-object p3, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    .line 47
    iput-object p4, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->listener:Lcom/vlingo/client/superdialer/SDContactsListAdaptor$SDContactClickListener;

    .line 49
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 4

    .prologue
    .line 67
    iget-boolean v1, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->showing:Z

    if-eqz v1, :cond_24

    .line 68
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getTopChoice()Lcom/vlingo/client/core/contacts/VlingoContact;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 69
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getNumContacts()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getTopChoice()Lcom/vlingo/client/core/contacts/VlingoContact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/VlingoContact;->getNumDetails()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .line 75
    :goto_21
    return v0

    .line 72
    :cond_22
    const/4 v0, 0x2

    goto :goto_21

    .line 75
    :cond_24
    const/4 v0, 0x1

    goto :goto_21
.end method

.method public getHeaderView()Landroid/view/View;
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 117
    iget-object v4, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f090364

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, header:Ljava/lang/String;
    iget-object v4, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->context:Landroid/content/Context;

    const-string v6, ""

    const/16 v7, 0x64

    invoke-static {v4, v1, v6, v7}, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/vlingo/client/superdialer/items/SDItemHeaderView;

    move-result-object v2

    .line 124
    .local v2, item:Lcom/vlingo/client/superdialer/items/SDItemHeaderView;
    iget-boolean v4, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->showing:Z

    if-eqz v4, :cond_41

    const/16 v4, 0x66

    :goto_1e
    invoke-virtual {v2, v4}, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->setAccessoryType(I)V

    .line 125
    iget-object v4, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getNumContacts()I

    move-result v6

    iget-object v4, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getTopChoice()Lcom/vlingo/client/core/contacts/VlingoContact;

    move-result-object v4

    if-eqz v4, :cond_44

    move v4, v5

    :goto_30
    add-int v0, v6, v4

    .line 127
    .local v0, count:I
    if-nez v0, :cond_46

    .line 128
    iget-object v4, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->context:Landroid/content/Context;

    const v5, 0x7f09041a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, subheader:Ljava/lang/String;
    :goto_3d
    invoke-virtual {v2, v3}, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->setSubHeader(Ljava/lang/CharSequence;)V

    .line 138
    return-object v2

    .line 124
    .end local v0           #count:I
    .end local v3           #subheader:Ljava/lang/String;
    :cond_41
    const/16 v4, 0x65

    goto :goto_1e

    .line 125
    :cond_44
    const/4 v4, 0x0

    goto :goto_30

    .line 130
    .restart local v0       #count:I
    :cond_46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    .restart local v3       #subheader:Ljava/lang/String;
    if-le v0, v5, :cond_76

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->context:Landroid/content/Context;

    const v6, 0x7f090418

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3d

    .line 134
    :cond_76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->context:Landroid/content/Context;

    const v6, 0x7f090417

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3d
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 146
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 61
    const/4 v0, -0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x1

    .line 81
    if-nez p1, :cond_8

    .line 82
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->getHeaderView()Landroid/view/View;

    move-result-object v3

    .line 111
    :goto_7
    return-object v3

    .line 85
    :cond_8
    add-int/lit8 p1, p1, -0x1

    .line 86
    iget-object v4, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getTopChoice()Lcom/vlingo/client/core/contacts/VlingoContact;

    move-result-object v4

    if-eqz v4, :cond_58

    .line 87
    iget-object v4, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getTopChoice()Lcom/vlingo/client/core/contacts/VlingoContact;

    move-result-object v1

    .line 88
    .local v1, contact:Lcom/vlingo/client/core/contacts/VlingoContact;
    if-nez p1, :cond_25

    .line 90
    iget-object v4, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->create(Landroid/content/Context;Lcom/vlingo/client/core/contacts/VlingoContact;I)Lcom/vlingo/client/superdialer/items/SDItemContactView;

    move-result-object v3

    .line 91
    .local v3, view:Lcom/vlingo/client/superdialer/items/SDItemContactView;
    invoke-virtual {v3, v1}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->setTag(Ljava/lang/Object;)V

    goto :goto_7

    .line 93
    .end local v3           #view:Lcom/vlingo/client/superdialer/items/SDItemContactView;
    :cond_25
    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getNumDetails()I

    move-result v4

    if-gt p1, v4, :cond_3b

    .line 95
    add-int/lit8 p1, p1, -0x1

    .line 96
    invoke-virtual {v1, p1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v0

    .line 97
    .local v0, cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    iget-object v4, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->context:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->create(Landroid/content/Context;Lcom/vlingo/client/core/contacts/ContactDetail;)Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;

    move-result-object v3

    .line 98
    .local v3, view:Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;
    invoke-virtual {v3, v1}, Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;->setTag(Ljava/lang/Object;)V

    goto :goto_7

    .line 102
    .end local v0           #cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    .end local v3           #view:Lcom/vlingo/client/superdialer/items/SDItemPhoneNumberView;
    :cond_3b
    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getNumDetails()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr p1, v4

    .line 103
    iget-object v4, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getSortedContacts()Lcom/vlingo/client/core/contacts/SortedContactList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/vlingo/client/core/contacts/SortedContactList;->get(I)Lcom/vlingo/client/core/contacts/DisplayItem;

    move-result-object v2

    .line 104
    .local v2, item:Lcom/vlingo/client/core/contacts/DisplayItem;
    iget-object v4, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->context:Landroid/content/Context;

    iget-object v5, v2, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-static {v4, v5, v7}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->create(Landroid/content/Context;Lcom/vlingo/client/core/contacts/VlingoContact;I)Lcom/vlingo/client/superdialer/items/SDItemContactView;

    move-result-object v3

    .line 105
    .local v3, view:Lcom/vlingo/client/superdialer/items/SDItemContactView;
    invoke-virtual {v3, v2}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->setTag(Ljava/lang/Object;)V

    goto :goto_7

    .line 110
    .end local v1           #contact:Lcom/vlingo/client/core/contacts/VlingoContact;
    .end local v2           #item:Lcom/vlingo/client/core/contacts/DisplayItem;
    .end local v3           #view:Lcom/vlingo/client/superdialer/items/SDItemContactView;
    :cond_58
    iget-object v4, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090419

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->create(Landroid/content/Context;Ljava/lang/String;Z)Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;

    move-result-object v3

    .line 111
    .local v3, view:Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;
    goto :goto_7
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public notifyListShowing(Z)V
    .registers 3
    .parameter "showing"

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->showing:Z

    if-eq p1, v0, :cond_1b

    .line 168
    iput-boolean p1, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->showing:Z

    .line 170
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    .line 171
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 172
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->notifyDataSetInvalidated()V

    .line 173
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->notifyDataSetChanged()V

    .line 174
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 177
    :cond_1b
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->notifyDataSetChanged()V

    .line 178
    return-void
.end method

.method public notifyQueryUpdated(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "newQuery"

    .prologue
    .line 156
    if-nez p1, :cond_a

    .line 157
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->currentQuery:Ljava/lang/String;

    .line 160
    :goto_6
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->notifyDataSetChanged()V

    .line 161
    return-void

    .line 159
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->currentQuery:Ljava/lang/String;

    goto :goto_6
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "arg1"
    .parameter "index"
    .parameter "arg3"
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
    .line 185
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_8

    .line 186
    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->listener:Lcom/vlingo/client/superdialer/SDContactsListAdaptor$SDContactClickListener;

    invoke-interface {v3}, Lcom/vlingo/client/superdialer/SDContactsListAdaptor$SDContactClickListener;->onContactHeaderClicked()V

    .line 205
    :cond_7
    :goto_7
    return-void

    .line 188
    :cond_8
    add-int/lit8 p3, p3, -0x1

    .line 189
    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v3}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getTopChoice()Lcom/vlingo/client/core/contacts/VlingoContact;

    move-result-object v1

    .line 190
    .local v1, contact:Lcom/vlingo/client/core/contacts/VlingoContact;
    if-eqz p3, :cond_7

    .line 193
    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getNumDetails()I

    move-result v3

    if-gt p3, v3, :cond_2c

    .line 195
    add-int/lit8 p3, p3, -0x1

    .line 196
    invoke-virtual {v1, p3}, Lcom/vlingo/client/core/contacts/VlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v0

    .line 197
    .local v0, cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->listener:Lcom/vlingo/client/superdialer/SDContactsListAdaptor$SDContactClickListener;

    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getId()I

    move-result v4

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v4, v5}, Lcom/vlingo/client/superdialer/SDContactsListAdaptor$SDContactClickListener;->onContactPhoneNumberClicked(Lcom/vlingo/client/core/contacts/VlingoContact;ILjava/lang/String;)V

    goto :goto_7

    .line 200
    .end local v0           #cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    :cond_2c
    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getNumDetails()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr p3, v3

    .line 201
    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v3}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getSortedContacts()Lcom/vlingo/client/core/contacts/SortedContactList;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/vlingo/client/core/contacts/SortedContactList;->get(I)Lcom/vlingo/client/core/contacts/DisplayItem;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    .line 202
    .local v2, groupItem:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    iget-object v3, p0, Lcom/vlingo/client/superdialer/SDContactsListAdaptor;->listener:Lcom/vlingo/client/superdialer/SDContactsListAdaptor$SDContactClickListener;

    invoke-interface {v3, v2}, Lcom/vlingo/client/superdialer/SDContactsListAdaptor$SDContactClickListener;->onContactClicked(Lcom/vlingo/client/core/contacts/DisplayItem;)V

    goto :goto_7
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 7
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    return v0
.end method
