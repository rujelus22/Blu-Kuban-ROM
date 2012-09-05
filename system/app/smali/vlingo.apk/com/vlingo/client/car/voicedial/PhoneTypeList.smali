.class public Lcom/vlingo/client/car/voicedial/PhoneTypeList;
.super Lcom/vlingo/client/car/CarScrollableItem;
.source "PhoneTypeList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;,
        Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;
    }
.end annotation


# static fields
.field private static final MAX_CONTACTS_PER_TYPE:I = 0x5


# instance fields
.field private item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private listener:Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/voicedial/PhoneTypeList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static findMatchingDisplayItems(Landroid/content/Context;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Ljava/lang/String;Z)Ljava/util/Vector;
    .registers 11
    .parameter "context"
    .parameter "groupedItem"
    .parameter "type"
    .parameter "useType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/contacts/DisplayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 166
    .local v2, items:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    invoke-virtual {p1}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->getDisplayItems()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 167
    .local v1, item:Lcom/vlingo/client/core/contacts/DisplayItem;
    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/ContactDetail;->getType()I

    move-result v5

    if-eqz p3, :cond_49

    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/ContactDetail;->getIndex()Ljava/lang/Integer;

    move-result-object v4

    :goto_2b
    invoke-static {p0, v5, v4}, Lcom/vlingo/client/util/ContactUtil;->getTypeString(Landroid/content/Context;ILjava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, typeStr:Ljava/lang/String;
    const-string v4, " "

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 170
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 167
    .end local v3           #typeStr:Ljava/lang/String;
    :cond_49
    const/4 v4, 0x0

    goto :goto_2b

    .line 173
    .end local v1           #item:Lcom/vlingo/client/core/contacts/DisplayItem;
    :cond_4b
    return-object v2
.end method

.method public static findMatchingDisplayItemsWithType(Landroid/content/Context;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Ljava/lang/String;)Ljava/util/Vector;
    .registers 5
    .parameter "context"
    .parameter "groupedItem"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/contacts/DisplayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->findMatchingDisplayItems(Landroid/content/Context;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Ljava/lang/String;Z)Ljava/util/Vector;

    move-result-object v0

    .line 158
    .local v0, items:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-eqz v1, :cond_c

    .line 160
    .end local v0           #items:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    :goto_b
    return-object v0

    .restart local v0       #items:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    :cond_c
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->findMatchingDisplayItems(Landroid/content/Context;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Ljava/lang/String;Z)Ljava/util/Vector;

    move-result-object v0

    goto :goto_b
.end method

.method private getContactChoices(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "type"

    .prologue
    const v6, 0x7f0f00d8

    .line 126
    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 127
    .local v1, res:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    iget-object v3, v3, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v3}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, tts:Ljava/lang/String;
    if-eqz p1, :cond_28

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090325

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5a
    iget-object v3, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8a

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;

    invoke-virtual {v3, v6}, Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;->stringForResourceID(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 136
    :cond_8a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f09023f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->items:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;

    invoke-virtual {v3, v6}, Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;->stringForResourceID(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    return-object v2
.end method

.method private indexOfType(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6
    .parameter "type"

    .prologue
    .line 266
    const-string v3, "[^0-9]"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 267
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 268
    .local v0, matcher:Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, result:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1b

    .line 271
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 273
    :goto_1a
    return-object v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method private performAutoListenDemand(Ljava/lang/String;)V
    .registers 6
    .parameter "tts"

    .prologue
    const/4 v3, 0x1

    .line 142
    const/4 v1, 0x2

    new-array v0, v1, [Lcom/vlingo/client/core/tts/TTSDemand;

    .line 143
    .local v0, demands:[Lcom/vlingo/client/core/tts/TTSDemand;
    const/4 v1, 0x0

    sget-object v2, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->VD_MULTIPLE_TYPES_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    aput-object v2, v0, v1

    .line 144
    invoke-static {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    aput-object v1, v0, v3

    .line 145
    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->autoListenDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 146
    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1, v0}, Lcom/vlingo/client/car/CarActivityDelegate;->speak([Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 147
    return-void
.end method


# virtual methods
.method public demandToAutoListenFor()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDupTypeMap(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;)Ljava/util/Map;
    .registers 8
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 98
    .local v3, typesInList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v0, dupTypesInList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->getDisplayItems()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 100
    .local v2, typeItem:Lcom/vlingo/client/core/contacts/DisplayItem;
    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/ContactDetail;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 101
    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/ContactDetail;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 104
    .end local v2           #typeItem:Lcom/vlingo/client/core/contacts/DisplayItem;
    :cond_45
    return-object v0
.end method

.method public handleUpdatePage(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 12
    .parameter "action"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 230
    const-string v7, "PhoneType"

    invoke-virtual {p1, v7}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, type:Ljava/lang/String;
    if-eqz v4, :cond_32

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_32

    .line 232
    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    invoke-static {v7, v8, v4}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->findMatchingDisplayItemsWithType(Landroid/content/Context;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .line 233
    .local v2, matchingItems:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v7

    if-ne v7, v6, :cond_33

    .line 234
    iget-object v7, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->listener:Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;

    iget-object v8, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    invoke-virtual {v2, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-direct {p0, v4}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->indexOfType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, p0, v8, v5, v9}, Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;->onPhoneTypeSelected(Lcom/vlingo/client/car/voicedial/PhoneTypeList;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/Integer;)V

    :goto_31
    move v5, v6

    .line 258
    .end local v2           #matchingItems:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    :cond_32
    return v5

    .line 236
    .restart local v2       #matchingItems:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    :cond_33
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v7

    if-le v7, v6, :cond_5a

    .line 240
    new-instance v5, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    invoke-direct {v5, v2}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;-><init>(Ljava/util/Vector;)V

    iget-object v7, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->listener:Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;

    invoke-virtual {p0, v5, v7}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->initialize(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;)V

    .line 241
    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->textView:Landroid/widget/TextView;

    const-string v7, " "

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->textView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 243
    invoke-direct {p0, v4}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->getContactChoices(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, tts:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->setAutoListenShouldTrigger(Z)V

    .line 245
    invoke-direct {p0, v3}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->performAutoListenDemand(Ljava/lang/String;)V

    goto :goto_31

    .line 250
    .end local v3           #tts:Ljava/lang/String;
    :cond_5a
    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090252

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v4, v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, formatType:Ljava/lang/String;
    const/4 v7, 0x2

    new-array v0, v7, [Lcom/vlingo/client/core/tts/TTSDemand;

    .line 252
    .local v0, demands:[Lcom/vlingo/client/core/tts/TTSDemand;
    sget-object v7, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->VD_NO_MATCHING_TYPE:Lcom/vlingo/client/core/tts/TTSDemand;

    aput-object v7, v0, v5

    .line 253
    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v5

    aput-object v5, v0, v6

    .line 254
    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5, v0}, Lcom/vlingo/client/car/CarActivityDelegate;->speak([Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_31
.end method

.method public initialize(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;)V
    .registers 14
    .parameter "item"
    .parameter "listener"

    .prologue
    const/4 v8, 0x0

    .line 64
    iput-object p1, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    .line 65
    iput-object p2, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->listener:Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;

    .line 67
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->getDisplayItems()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->items:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p0, p1}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->getDupTypeMap(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;)Ljava/util/Map;

    move-result-object v2

    .line 70
    .local v2, mapTypeToIndex:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->getDisplayItems()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 71
    .local v5, typeItem:Lcom/vlingo/client/core/contacts/DisplayItem;
    invoke-virtual {v5}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vlingo/client/core/contacts/ContactDetail;->getType()I

    move-result v4

    .line 72
    .local v4, type:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 73
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 74
    .local v1, index:I
    const/4 v6, 0x5

    if-gt v1, v6, :cond_20

    .line 75
    invoke-virtual {v5}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/vlingo/client/core/contacts/ContactDetail;->setIndex(I)V

    .line 76
    iget-object v6, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->items:Ljava/util/ArrayList;

    new-instance v7, Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;

    invoke-direct {v7, p0, v5, v8}, Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;-><init>(Lcom/vlingo/client/car/voicedial/PhoneTypeList;Lcom/vlingo/client/core/contacts/DisplayItem;Lcom/vlingo/client/car/voicedial/PhoneTypeList$1;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 81
    .end local v1           #index:I
    :cond_6e
    iget-object v6, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->items:Ljava/util/ArrayList;

    new-instance v7, Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;

    invoke-direct {v7, p0, v5, v8}, Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;-><init>(Lcom/vlingo/client/car/voicedial/PhoneTypeList;Lcom/vlingo/client/core/contacts/DisplayItem;Lcom/vlingo/client/car/voicedial/PhoneTypeList$1;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 84
    .end local v4           #type:I
    .end local v5           #typeItem:Lcom/vlingo/client/core/contacts/DisplayItem;
    :cond_79
    iget-object v6, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->textView:Landroid/widget/TextView;

    iget-object v7, p1, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v7}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v3, 0x7f030042

    .line 87
    .local v3, resID:I
    iget-object v6, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->listView:Landroid/widget/ListView;

    new-instance v7, Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor;

    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_a8

    iget-object v10, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->items:Ljava/util/ArrayList;

    invoke-direct {v7, v8, v3, v9, v10}, Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor;-><init>(Landroid/content/Context;I[ILjava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object v6, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->listView:Landroid/widget/ListView;

    new-instance v7, Lcom/vlingo/client/car/voicedial/PhoneTypeList$1;

    invoke-direct {v7, p0, p2, p1}, Lcom/vlingo/client/car/voicedial/PhoneTypeList$1;-><init>(Lcom/vlingo/client/car/voicedial/PhoneTypeList;Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    return-void

    .line 87
    :array_a8
    .array-data 0x4
        0xd8t 0x0t 0xft 0x7ft
        0xdbt 0x0t 0xft 0x7ft
    .end array-data
.end method

.method public onDelegateAttached()V
    .registers 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onDelegateAttached()V

    .line 154
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onFinishInflate()V

    .line 59
    const v0, 0x7f0f002f

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->textView:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0f0036

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->listView:Landroid/widget/ListView;

    .line 61
    return-void
.end method

.method public onShown()V
    .registers 4

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->shownForTheFirstTime:Z

    .line 117
    .local v0, firstShown:Z
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onShown()V

    .line 119
    if-eqz v0, :cond_f

    .line 120
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->getContactChoices(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, tts:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->performAutoListenDemand(Ljava/lang/String;)V

    .line 123
    .end local v1           #tts:Ljava/lang/String;
    :cond_f
    return-void
.end method

.method public setIgnoreTTS()V
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->shownForTheFirstTime:Z

    .line 113
    return-void
.end method
