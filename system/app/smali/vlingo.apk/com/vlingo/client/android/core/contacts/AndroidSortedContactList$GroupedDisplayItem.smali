.class public Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
.super Lcom/vlingo/client/core/contacts/DisplayItem;
.source "AndroidSortedContactList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupedDisplayItem"
.end annotation


# instance fields
.field private final displayItems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/contacts/DisplayItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/contacts/DisplayItem;)V
    .registers 4
    .parameter "firstItem"

    .prologue
    .line 136
    iget-object v0, p1, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    iget v1, p1, Lcom/vlingo/client/core/contacts/DisplayItem;->detailIndex:I

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/core/contacts/DisplayItem;-><init>(Lcom/vlingo/client/core/contacts/VlingoContact;I)V

    .line 133
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->displayItems:Ljava/util/Vector;

    .line 137
    iget-object v0, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->displayItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/contacts/DisplayItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, allItems:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    invoke-virtual {p1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/contacts/DisplayItem;

    iget-object v1, v0, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {p1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/contacts/DisplayItem;

    iget v0, v0, Lcom/vlingo/client/core/contacts/DisplayItem;->detailIndex:I

    invoke-direct {p0, v1, v0}, Lcom/vlingo/client/core/contacts/DisplayItem;-><init>(Lcom/vlingo/client/core/contacts/VlingoContact;I)V

    .line 133
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->displayItems:Ljava/util/Vector;

    .line 142
    iget-object v0, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->displayItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 143
    return-void
.end method


# virtual methods
.method addItem(Lcom/vlingo/client/core/contacts/DisplayItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->displayItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->displayItems:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v0

    return-object v0
.end method

.method public getContactId()I
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->displayItems:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactId()I

    move-result v0

    return v0
.end method

.method public getDisplayItems()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/contacts/DisplayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->displayItems:Ljava/util/Vector;

    return-object v0
.end method
