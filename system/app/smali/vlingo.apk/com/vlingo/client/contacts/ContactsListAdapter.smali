.class public Lcom/vlingo/client/contacts/ContactsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactsListAdapter.java"


# static fields
.field public static final MAX_LIST_ITEMS:I = 0x19

.field private static log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field m_contactsMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

.field m_otherChoicesHeader:Landroid/widget/TextView;

.field m_parentContext:Landroid/content/Context;

.field m_parentScreen:Lcom/vlingo/client/contacts/ContactScreen;

.field m_topChoiceDetailAddress:Ljava/lang/String;

.field m_topChoiceDetailType:Ljava/lang/String;

.field m_topChoiceDetailViewList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field m_topChoiceId:I

.field m_topChoiceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/vlingo/client/contacts/ContactsListAdapter;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/contacts/ContactsListAdapter;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/vlingo/client/contacts/ContactScreen;Lcom/vlingo/client/core/contacts/ContactsMatcher;)V
    .registers 4
    .parameter "parentScreen"
    .parameter "contactsMatcher"

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_topChoiceDetailViewList:Ljava/util/Vector;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_otherChoicesHeader:Landroid/widget/TextView;

    .line 45
    iput-object p2, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_contactsMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    .line 46
    iput-object p1, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_parentScreen:Lcom/vlingo/client/contacts/ContactScreen;

    .line 47
    invoke-interface {p1}, Lcom/vlingo/client/contacts/ContactScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_parentContext:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method buildTopChoiceDetailViews()V
    .registers 16

    .prologue
    .line 73
    iget-object v12, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_contactsMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v12}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getTopChoice()Lcom/vlingo/client/core/contacts/VlingoContact;

    move-result-object v0

    .line 74
    .local v0, c:Lcom/vlingo/client/core/contacts/VlingoContact;
    if-eqz v0, :cond_11c

    .line 76
    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/VlingoContact;->getNumDetails()I

    move-result v7

    .line 78
    .local v7, numDetails:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_d
    if-ge v4, v7, :cond_11c

    .line 79
    invoke-virtual {v0, v4}, Lcom/vlingo/client/core/contacts/VlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v1

    .line 81
    .local v1, cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    const v5, 0x7f03001b

    .line 83
    .local v5, id:I
    iget-object v12, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_parentContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static {v12, v5, v13}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 84
    .local v2, detailView:Landroid/view/View;
    const v12, 0x7f0f006c

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 85
    .local v6, iv:Landroid/widget/ImageView;
    const v12, 0x7f0f000f

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 86
    .local v10, tv:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const-string v9, ""

    .line 89
    .local v9, title:Ljava/lang/String;
    const-string v11, ""

    .line 90
    .local v11, type:Ljava/lang/String;
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 91
    .local v8, res:Landroid/content/res/Resources;
    const-string v12, "call"

    iget-object v13, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_parentScreen:Lcom/vlingo/client/contacts/ContactScreen;

    invoke-interface {v13}, Lcom/vlingo/client/contacts/ContactScreen;->getActionType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c8

    .line 93
    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/VlingoContact;->getId()I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_a6

    .line 94
    const v12, 0x7f090044

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 100
    :goto_5e
    const v12, 0x7f020182

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    :cond_64
    :goto_64
    const v12, 0x7f0f0034

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #tv:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 112
    .restart local v10       #tv:Landroid/widget/TextView;
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    new-instance v3, Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-direct {v3, v0, v4}, Lcom/vlingo/client/core/contacts/DisplayItem;-><init>(Lcom/vlingo/client/core/contacts/VlingoContact;I)V

    .line 115
    .local v3, di:Lcom/vlingo/client/core/contacts/DisplayItem;
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    if-nez v4, :cond_8e

    .line 117
    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/VlingoContact;->getId()I

    move-result v12

    iput v12, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_topChoiceId:I

    .line 118
    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_topChoiceDetailAddress:Ljava/lang/String;

    .line 119
    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_topChoiceName:Ljava/lang/String;

    .line 120
    iput-object v11, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_topChoiceDetailType:Ljava/lang/String;

    .line 123
    :cond_8e
    add-int/lit8 v12, v7, -0x1

    if-lt v4, v12, :cond_9d

    .line 124
    const v12, 0x7f0f0072

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_otherChoicesHeader:Landroid/widget/TextView;

    .line 127
    :cond_9d
    iget-object v12, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_topChoiceDetailViewList:Ljava/util/Vector;

    invoke-virtual {v12, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    .line 97
    .end local v3           #di:Lcom/vlingo/client/core/contacts/DisplayItem;
    :cond_a6
    iget-object v12, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_parentContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/ContactDetail;->getType()I

    move-result v13

    const-string v14, ""

    invoke-static {v12, v13, v14}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 98
    const v12, 0x7f090045

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-virtual {v8, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_5e

    .line 102
    :cond_c8
    const-string v12, "sms"

    iget-object v13, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_parentScreen:Lcom/vlingo/client/contacts/ContactScreen;

    invoke-interface {v13}, Lcom/vlingo/client/contacts/ContactScreen;->getActionType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ff

    .line 103
    iget-object v12, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_parentContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/ContactDetail;->getType()I

    move-result v13

    const-string v14, ""

    invoke-static {v12, v13, v14}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 104
    const v12, 0x7f090155

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-virtual {v8, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 105
    const v12, 0x7f020184

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_64

    .line 107
    :cond_ff
    const-string v12, "email"

    iget-object v13, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_parentScreen:Lcom/vlingo/client/contacts/ContactScreen;

    invoke-interface {v13}, Lcom/vlingo/client/contacts/ContactScreen;->getActionType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_64

    .line 108
    const v12, 0x7f09025b

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 109
    const v12, 0x7f020183

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_64

    .line 131
    .end local v1           #cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    .end local v2           #detailView:Landroid/view/View;
    .end local v4           #i:I
    .end local v5           #id:I
    .end local v6           #iv:Landroid/widget/ImageView;
    .end local v7           #numDetails:I
    .end local v8           #res:Landroid/content/res/Resources;
    .end local v9           #title:Ljava/lang/String;
    .end local v10           #tv:Landroid/widget/TextView;
    .end local v11           #type:Ljava/lang/String;
    :cond_11c
    return-void
.end method

.method public getCount()I
    .registers 4

    .prologue
    .line 207
    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_contactsMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getTopChoice()Lcom/vlingo/client/core/contacts/VlingoContact;

    move-result-object v1

    .line 208
    .local v1, topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;
    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_contactsMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getNumContacts()I

    move-result v0

    .line 209
    .local v0, count:I
    if-eqz v1, :cond_13

    .line 210
    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getNumDetails()I

    move-result v2

    add-int/2addr v0, v2

    .line 212
    :cond_13
    const/16 v2, 0x19

    if-le v0, v2, :cond_19

    .line 213
    const/16 v0, 0x19

    .line 215
    :cond_19
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 6
    .parameter "position"

    .prologue
    .line 219
    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_contactsMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getTopChoice()Lcom/vlingo/client/core/contacts/VlingoContact;

    move-result-object v0

    .line 220
    .local v0, topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;
    if-nez v0, :cond_13

    .line 221
    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_contactsMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getSortedContacts()Lcom/vlingo/client/core/contacts/SortedContactList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/vlingo/client/core/contacts/SortedContactList;->get(I)Lcom/vlingo/client/core/contacts/DisplayItem;

    move-result-object v2

    .line 228
    :goto_12
    return-object v2

    .line 223
    :cond_13
    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/VlingoContact;->getNumDetails()I

    move-result v1

    .line 224
    .local v1, topChoiceDetailSize:I
    if-lt p1, v1, :cond_26

    .line 225
    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_contactsMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getSortedContacts()Lcom/vlingo/client/core/contacts/SortedContactList;

    move-result-object v2

    sub-int v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/vlingo/client/core/contacts/SortedContactList;->get(I)Lcom/vlingo/client/core/contacts/DisplayItem;

    move-result-object v2

    goto :goto_12

    .line 228
    :cond_26
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public getItemId(I)J
    .registers 6
    .parameter "position"

    .prologue
    .line 233
    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_topChoiceDetailViewList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 234
    .local v1, topChoiceDetailSize:I
    if-lt p1, v1, :cond_15

    .line 235
    sub-int/2addr p1, v1

    .line 236
    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_contactsMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getSortedContacts()Lcom/vlingo/client/core/contacts/SortedContactList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/vlingo/client/core/contacts/SortedContactList;->getId(I)I

    move-result v2

    int-to-long v2, v2

    .line 240
    :goto_14
    return-wide v2

    .line 239
    :cond_15
    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_topChoiceDetailViewList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 240
    .local v0, di:Lcom/vlingo/client/core/contacts/DisplayItem;
    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactId()I

    move-result v2

    int-to-long v2, v2

    goto :goto_14
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 26
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_topChoiceDetailViewList:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v13

    .line 135
    .local v13, topChoiceDetailSize:I
    const/4 v6, 0x0

    .line 136
    .local v6, isPhoneType:Z
    sget-object v18, Lcom/vlingo/client/contacts/ContactsListAdapter;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "in getView position "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 137
    const-string v18, "call"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_parentScreen:Lcom/vlingo/client/contacts/ContactScreen;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/vlingo/client/contacts/ContactScreen;->getActionType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_136

    .line 138
    const/4 v6, 0x1

    .line 144
    :cond_3a
    :goto_3a
    move/from16 v0, p1

    if-lt v0, v13, :cond_187

    .line 145
    sub-int p1, p1, v13

    .line 146
    const/4 v12, 0x0

    .line 148
    .local v12, row:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_parentContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f030019

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_contactsMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getSortedContacts()Lcom/vlingo/client/core/contacts/SortedContactList;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/contacts/SortedContactList;->get(I)Lcom/vlingo/client/core/contacts/DisplayItem;

    move-result-object v7

    .line 152
    .local v7, item:Lcom/vlingo/client/core/contacts/DisplayItem;
    invoke-virtual {v12, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 154
    iget-object v4, v7, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 155
    .local v4, c:Lcom/vlingo/client/core/contacts/VlingoContact;
    invoke-virtual {v7}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v5

    .line 157
    .local v5, cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    const v18, 0x7f0f000d

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 158
    .local v15, txtContactName:Landroid/widget/TextView;
    const v18, 0x7f0f000f

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 159
    .local v14, txtContactDetail:Landroid/widget/TextView;
    const v18, 0x7f0f000e

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 160
    .local v16, txtContactType:Landroid/widget/TextView;
    const v18, 0x7f0f006c

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 161
    .local v8, iv:Landroid/widget/ImageView;
    const v18, 0x7f0f006b

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 162
    .local v9, iv_star:Landroid/widget/ImageView;
    const v18, 0x7f0f000c

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/QuickContactBadge;

    .line 164
    .local v11, qcb:Landroid/widget/QuickContactBadge;
    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v10

    .line 165
    .local v10, name:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/vlingo/client/core/contacts/ContactDetail;->isStarred()Z

    move-result v18

    if-eqz v18, :cond_be

    .line 166
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    :cond_be
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {v5}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const-string v18, "call"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_parentScreen:Lcom/vlingo/client/contacts/ContactScreen;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/vlingo/client/contacts/ContactScreen;->getActionType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14b

    .line 173
    const v18, 0x7f020182

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    :cond_e4
    :goto_e4
    if-eqz v6, :cond_107

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_parentContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual {v5}, Lcom/vlingo/client/core/contacts/ContactDetail;->getType()I

    move-result v19

    const-string v20, ""

    invoke-static/range {v18 .. v20}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 184
    .local v17, typeString:Ljava/lang/String;
    if-eqz v17, :cond_106

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_183

    .line 185
    :cond_106
    const/4 v6, 0x0

    .line 192
    .end local v17           #typeString:Ljava/lang/String;
    :cond_107
    :goto_107
    if-nez v6, :cond_112

    .line 193
    const/16 v18, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    :cond_112
    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/VlingoContact;->getId()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_parentScreen:Lcom/vlingo/client/contacts/ContactScreen;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/vlingo/client/contacts/ContactScreen;->getActionType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v5}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_parentContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v11, v1, v2, v3}, Lcom/vlingo/client/contacts/AndroidContactUtil;->applyContactImageToQuickContactBadge(ILandroid/widget/QuickContactBadge;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 201
    .end local v4           #c:Lcom/vlingo/client/core/contacts/VlingoContact;
    .end local v5           #cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    .end local v7           #item:Lcom/vlingo/client/core/contacts/DisplayItem;
    .end local v8           #iv:Landroid/widget/ImageView;
    .end local v9           #iv_star:Landroid/widget/ImageView;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #qcb:Landroid/widget/QuickContactBadge;
    .end local v12           #row:Landroid/view/View;
    .end local v14           #txtContactDetail:Landroid/widget/TextView;
    .end local v15           #txtContactName:Landroid/widget/TextView;
    .end local v16           #txtContactType:Landroid/widget/TextView;
    :goto_135
    return-object v12

    .line 140
    :cond_136
    const-string v18, "sms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_parentScreen:Lcom/vlingo/client/contacts/ContactScreen;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/vlingo/client/contacts/ContactScreen;->getActionType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3a

    .line 141
    const/4 v6, 0x1

    goto/16 :goto_3a

    .line 175
    .restart local v4       #c:Lcom/vlingo/client/core/contacts/VlingoContact;
    .restart local v5       #cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    .restart local v7       #item:Lcom/vlingo/client/core/contacts/DisplayItem;
    .restart local v8       #iv:Landroid/widget/ImageView;
    .restart local v9       #iv_star:Landroid/widget/ImageView;
    .restart local v10       #name:Ljava/lang/String;
    .restart local v11       #qcb:Landroid/widget/QuickContactBadge;
    .restart local v12       #row:Landroid/view/View;
    .restart local v14       #txtContactDetail:Landroid/widget/TextView;
    .restart local v15       #txtContactName:Landroid/widget/TextView;
    .restart local v16       #txtContactType:Landroid/widget/TextView;
    :cond_14b
    const-string v18, "sms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_parentScreen:Lcom/vlingo/client/contacts/ContactScreen;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/vlingo/client/contacts/ContactScreen;->getActionType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_167

    .line 176
    const v18, 0x7f020184

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_e4

    .line 178
    :cond_167
    const-string v18, "email"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_parentScreen:Lcom/vlingo/client/contacts/ContactScreen;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/vlingo/client/contacts/ContactScreen;->getActionType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e4

    .line 179
    const v18, 0x7f020183

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_e4

    .line 188
    .restart local v17       #typeString:Ljava/lang/String;
    :cond_183
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_107

    .line 201
    .end local v4           #c:Lcom/vlingo/client/core/contacts/VlingoContact;
    .end local v5           #cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    .end local v7           #item:Lcom/vlingo/client/core/contacts/DisplayItem;
    .end local v8           #iv:Landroid/widget/ImageView;
    .end local v9           #iv_star:Landroid/widget/ImageView;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #qcb:Landroid/widget/QuickContactBadge;
    .end local v12           #row:Landroid/view/View;
    .end local v14           #txtContactDetail:Landroid/widget/TextView;
    .end local v15           #txtContactName:Landroid/widget/TextView;
    .end local v16           #txtContactType:Landroid/widget/TextView;
    .end local v17           #typeString:Ljava/lang/String;
    :cond_187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_topChoiceDetailViewList:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    move-object/from16 v12, v18

    goto :goto_135
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 58
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/ContactsListAdapter;->updateOtherChoicesCount()V

    .line 59
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_topChoiceDetailViewList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 52
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/ContactsListAdapter;->buildTopChoiceDetailViews()V

    .line 53
    return-void
.end method

.method updateOtherChoicesCount()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 62
    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_contactsMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getNumContacts()I

    move-result v0

    .line 63
    .local v0, count:I
    if-lez v0, :cond_2f

    .line 64
    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_otherChoicesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_2f

    .line 65
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 66
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_otherChoicesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_otherChoicesHeader:Landroid/widget/TextView;

    const v3, 0x7f09025e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_2f
    return-void
.end method
