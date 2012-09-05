.class public Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;
.super Lcom/vlingo/client/core/contacts/SortedContactList;
.source "AndroidSortedContactList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    }
.end annotation


# static fields
.field protected static final DONE_DATA:I = 0x1

.field protected static final UPDATE_DATA:I

.field private static log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field private groupedItemMappings:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_updateDataHandler:Landroid/os/Handler;

.field private final useGroupedSortedContacts:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;-><init>(Z)V

    .line 34
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .parameter "useGroupedSortedContacts"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vlingo/client/core/contacts/SortedContactList;-><init>()V

    .line 37
    iput-boolean p1, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->useGroupedSortedContacts:Z

    .line 39
    if-eqz p1, :cond_15

    .line 40
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->groupedItemMappings:Ljava/util/Hashtable;

    .line 41
    invoke-direct {p0}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->createGroupedHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->m_updateDataHandler:Landroid/os/Handler;

    .line 45
    :goto_14
    return-void

    .line 44
    :cond_15
    invoke-direct {p0}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->createDefaultHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->m_updateDataHandler:Landroid/os/Handler;

    goto :goto_14
.end method

.method static synthetic access$000()Lcom/vlingo/client/core/logging/Logger;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->log:Lcom/vlingo/client/core/logging/Logger;

    return-object v0
.end method

.method static synthetic access$101(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;Ljava/util/Vector;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/vlingo/client/core/contacts/SortedContactList;->updateList(Ljava/util/Vector;)V

    return-void
.end method

.method static synthetic access$201(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-super {p0}, Lcom/vlingo/client/core/contacts/SortedContactList;->doneUpdate()V

    return-void
.end method

.method static synthetic access$300(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->m_displayItems:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;)Ljava/util/Hashtable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->groupedItemMappings:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->m_displayItems:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$601(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-super {p0}, Lcom/vlingo/client/core/contacts/SortedContactList;->notifyListener()V

    return-void
.end method

.method static synthetic access$701(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-super {p0}, Lcom/vlingo/client/core/contacts/SortedContactList;->doneUpdate()V

    return-void
.end method

.method private createDefaultHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 48
    new-instance v0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$1;

    invoke-direct {v0, p0}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$1;-><init>(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;)V

    return-object v0
.end method

.method private createGroupedHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 66
    new-instance v0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$2;

    invoke-direct {v0, p0}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$2;-><init>(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;)V

    return-object v0
.end method


# virtual methods
.method public doneUpdate()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 116
    sget-object v1, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v2, "scheduling list done"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/logging/Logger;->debug(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->m_updateDataHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    iget-object v1, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->m_updateDataHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 119
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->m_updateDataHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    return-void
.end method

.method public isUsingGroupedSortedContacts()Z
    .registers 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->useGroupedSortedContacts:Z

    return v0
.end method

.method public updateList(Ljava/util/Vector;)V
    .registers 7
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
    .local p1, newList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    const/4 v4, 0x0

    .line 106
    sget-object v1, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduling list update, size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/logging/Logger;->debug(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->m_updateDataHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    iget-object v1, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->m_updateDataHandler:Landroid/os/Handler;

    invoke-static {v1, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 112
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->m_updateDataHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 113
    return-void
.end method
