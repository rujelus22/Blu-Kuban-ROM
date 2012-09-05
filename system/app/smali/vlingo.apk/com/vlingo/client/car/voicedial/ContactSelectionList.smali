.class public Lcom/vlingo/client/car/voicedial/ContactSelectionList;
.super Lcom/vlingo/client/car/CarScrollableItem;
.source "ContactSelectionList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/voicedial/ContactSelectionList$ContactSelectionListActionListener;,
        Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;
    }
.end annotation


# instance fields
.field private contactList:Lcom/vlingo/client/core/contacts/SortedContactList;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private listener:Lcom/vlingo/client/car/voicedial/ContactSelectionList$ContactSelectionListActionListener;

.field private spokenText:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method static synthetic access$200(Lcom/vlingo/client/car/voicedial/ContactSelectionList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/car/voicedial/ContactSelectionList;)Lcom/vlingo/client/car/voicedial/ContactSelectionList$ContactSelectionListActionListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->listener:Lcom/vlingo/client/car/voicedial/ContactSelectionList$ContactSelectionListActionListener;

    return-object v0
.end method

.method private trimSpokenTextBasedOnMatches()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    .line 136
    iget-object v11, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->spokenText:Ljava/lang/String;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 138
    .local v10, wordsArray:[Ljava/lang/String;
    array-length v11, v10

    if-ne v11, v13, :cond_d

    .line 181
    :goto_c
    return-void

    .line 141
    :cond_d
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 142
    .local v8, spokenWords:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    array-length v11, v10

    if-ge v1, v11, :cond_22

    .line 143
    aget-object v11, v10, v1

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 147
    :cond_22
    invoke-virtual {v8}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Vector;

    .line 149
    .local v6, newSpokenWords:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v1, 0x0

    :goto_29
    iget-object v11, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->contactList:Lcom/vlingo/client/core/contacts/SortedContactList;

    invoke-virtual {v11}, Lcom/vlingo/client/core/contacts/SortedContactList;->getNumDisplayItems()I

    move-result v11

    if-ge v1, v11, :cond_86

    .line 150
    iget-object v11, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->contactList:Lcom/vlingo/client/core/contacts/SortedContactList;

    invoke-virtual {v11, v1}, Lcom/vlingo/client/core/contacts/SortedContactList;->get(I)Lcom/vlingo/client/core/contacts/DisplayItem;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    .line 151
    .local v3, item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    iget-object v11, v3, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v11}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, itemNameWords:[Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 154
    .local v7, spokenWord:Ljava/lang/String;
    const/4 v0, 0x0

    .line 156
    .local v0, foundSpokenWord:Z
    const/4 v5, 0x0

    .local v5, j:I
    :goto_57
    array-length v11, v4

    if-ge v5, v11, :cond_6c

    .line 157
    aget-object v11, v4, v5

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_80

    .line 158
    const/4 v0, 0x1

    .line 163
    :cond_6c
    if-nez v0, :cond_49

    .line 166
    invoke-virtual {v6, v7}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v11

    if-ne v11, v13, :cond_49

    .line 168
    invoke-virtual {v6}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->spokenText:Ljava/lang/String;

    goto :goto_c

    .line 156
    :cond_80
    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    .line 149
    .end local v0           #foundSpokenWord:Z
    .end local v5           #j:I
    .end local v7           #spokenWord:Ljava/lang/String;
    :cond_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 176
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    .end local v4           #itemNameWords:[Ljava/lang/String;
    :cond_86
    const-string v11, ""

    iput-object v11, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->spokenText:Ljava/lang/String;

    .line 177
    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_8e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 178
    .local v9, word:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->spokenText:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->spokenText:Ljava/lang/String;

    goto :goto_8e

    .line 180
    .end local v9           #word:Ljava/lang/String;
    :cond_b6
    iget-object v11, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->spokenText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->spokenText:Ljava/lang/String;

    goto/16 :goto_c
.end method


# virtual methods
.method public handleUpdatePage(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 9
    .parameter "action"

    .prologue
    const/4 v4, 0x1

    .line 64
    const-string v3, "To"

    invoke-virtual {p1, v3}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, contact:Ljava/lang/String;
    const-string v3, "PhoneType"

    invoke-virtual {p1, v3}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, type:Ljava/lang/String;
    if-eqz v0, :cond_8a

    .line 67
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    iget-object v3, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_8a

    .line 68
    iget-object v3, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;

    #getter for: Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;->item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    invoke-static {v3}, Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;->access$000(Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;)Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    move-result-object v3

    iget-object v3, v3, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v3}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 69
    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->listener:Lcom/vlingo/client/car/voicedial/ContactSelectionList$ContactSelectionListActionListener;

    iget-object v3, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;

    #getter for: Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;->item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    invoke-static {v3}, Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;->access$000(Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;)Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    move-result-object v3

    invoke-interface {v5, p0, v3, v2}, Lcom/vlingo/client/car/voicedial/ContactSelectionList$ContactSelectionListActionListener;->onContactSelected(Lcom/vlingo/client/car/voicedial/ContactSelectionList;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Ljava/lang/String;)V

    move v3, v4

    .line 78
    .end local v1           #i:I
    :goto_42
    return v3

    .line 72
    .restart local v1       #i:I
    :cond_43
    iget-object v3, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;

    #getter for: Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;->item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    invoke-static {v3}, Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;->access$000(Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;)Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    move-result-object v3

    iget-object v3, v3, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v3}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->spokenText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 73
    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->listener:Lcom/vlingo/client/car/voicedial/ContactSelectionList$ContactSelectionListActionListener;

    iget-object v3, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;

    #getter for: Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;->item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    invoke-static {v3}, Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;->access$000(Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;)Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    move-result-object v3

    invoke-interface {v5, p0, v3, v2}, Lcom/vlingo/client/car/voicedial/ContactSelectionList$ContactSelectionListActionListener;->onContactSelected(Lcom/vlingo/client/car/voicedial/ContactSelectionList;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Ljava/lang/String;)V

    move v3, v4

    .line 74
    goto :goto_42

    .line 67
    :cond_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 78
    .end local v1           #i:I
    :cond_8a
    const/4 v3, 0x0

    goto :goto_42
.end method

.method public initialize(Lcom/vlingo/client/core/contacts/SortedContactList;Ljava/lang/String;Lcom/vlingo/client/car/voicedial/ContactSelectionList$ContactSelectionListActionListener;)V
    .registers 12
    .parameter "contactList"
    .parameter "spokenText"
    .parameter "listener"

    .prologue
    .line 84
    invoke-static {p2}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 85
    invoke-static {p2}, Lcom/vlingo/client/core/util/StringUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 88
    :cond_a
    iput-object p3, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->listener:Lcom/vlingo/client/car/voicedial/ContactSelectionList$ContactSelectionListActionListener;

    .line 89
    iput-object p1, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->contactList:Lcom/vlingo/client/core/contacts/SortedContactList;

    .line 90
    iput-object p2, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->spokenText:Ljava/lang/String;

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/SortedContactList;->getNumDisplayItems()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->items:Ljava/util/ArrayList;

    .line 93
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1c
    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/SortedContactList;->getNumDisplayItems()I

    move-result v3

    if-ge v0, v3, :cond_36

    .line 94
    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/contacts/SortedContactList;->get(I)Lcom/vlingo/client/core/contacts/DisplayItem;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    .line 95
    .local v1, item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    iget-object v3, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->items:Ljava/util/ArrayList;

    new-instance v4, Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;-><init>(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/car/voicedial/ContactSelectionList$1;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 98
    .end local v1           #item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    :cond_36
    const v2, 0x7f03003f

    .line 99
    .local v2, resID:I
    iget-object v3, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->listView:Landroid/widget/ListView;

    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0f00d8

    iget-object v7, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->items:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v2, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    iget-object v3, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->listView:Landroid/widget/ListView;

    new-instance v4, Lcom/vlingo/client/car/voicedial/ContactSelectionList$1;

    invoke-direct {v4, p0}, Lcom/vlingo/client/car/voicedial/ContactSelectionList$1;-><init>(Lcom/vlingo/client/car/voicedial/ContactSelectionList;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    return-void
.end method

.method public onDelegateAttached()V
    .registers 9

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 108
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onDelegateAttached()V

    .line 110
    invoke-direct {p0}, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->trimSpokenTextBasedOnMatches()V

    .line 112
    iget-object v3, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->textView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->spokenText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 115
    .local v2, res:Landroid/content/res/Resources;
    new-array v1, v5, [Lcom/vlingo/client/core/tts/TTSDemand;

    .line 116
    .local v1, demands:[Lcom/vlingo/client/core/tts/TTSDemand;
    sget-object v3, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->VD_MULTIPLE_CONTACTS_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    aput-object v3, v1, v6

    .line 118
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isPromptModeSet()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 119
    const v3, 0x7f090241

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->spokenText:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->controller:Lcom/vlingo/client/car/TaskController;

    invoke-interface {v5, p0}, Lcom/vlingo/client/car/TaskController;->getCommandForItem(Lcom/vlingo/client/car/CarScrollableItem;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, choices:Ljava/lang/String;
    invoke-static {v0}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v3

    aput-object v3, v1, v7

    .line 121
    aget-object v3, v1, v7

    iput-object v3, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->autoListenDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 122
    iget-object v3, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v3, v1}, Lcom/vlingo/client/car/CarActivityDelegate;->speak([Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 128
    .end local v0           #choices:Ljava/lang/String;
    :goto_44
    return-void

    .line 125
    :cond_45
    aget-object v3, v1, v6

    iput-object v3, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->autoListenDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 126
    iget-object v3, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    aget-object v4, v1, v6

    invoke-interface {v3, v4}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_44
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 52
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onFinishInflate()V

    .line 55
    const v0, 0x7f0f002f

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->textView:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0f0036

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->listView:Landroid/widget/ListView;

    .line 57
    return-void
.end method
