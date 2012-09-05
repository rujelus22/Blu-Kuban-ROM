.class final Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;
.super Ljava/lang/Object;
.source "ContactSelectionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/voicedial/ContactSelectionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ItemWrapper"
.end annotation


# instance fields
.field private final item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;)V
    .registers 2
    .parameter "item"

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;->item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    .line 191
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/car/voicedial/ContactSelectionList$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;-><init>(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;)V

    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;)Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;->item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/ContactSelectionList$ItemWrapper;->item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    iget-object v0, v0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
