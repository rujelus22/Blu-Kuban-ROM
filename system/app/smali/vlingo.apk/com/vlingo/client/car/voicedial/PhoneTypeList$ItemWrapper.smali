.class final Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;
.super Lcom/vlingo/client/ui/MultipleFieldResource;
.source "PhoneTypeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/voicedial/PhoneTypeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemWrapper"
.end annotation


# instance fields
.field private final item:Lcom/vlingo/client/core/contacts/DisplayItem;

.field final synthetic this$0:Lcom/vlingo/client/car/voicedial/PhoneTypeList;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/car/voicedial/PhoneTypeList;Lcom/vlingo/client/core/contacts/DisplayItem;)V
    .registers 3
    .parameter
    .parameter "item"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;->this$0:Lcom/vlingo/client/car/voicedial/PhoneTypeList;

    invoke-direct {p0}, Lcom/vlingo/client/ui/MultipleFieldResource;-><init>()V

    .line 184
    iput-object p2, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;->item:Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 185
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/car/voicedial/PhoneTypeList;Lcom/vlingo/client/core/contacts/DisplayItem;Lcom/vlingo/client/car/voicedial/PhoneTypeList$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;-><init>(Lcom/vlingo/client/car/voicedial/PhoneTypeList;Lcom/vlingo/client/core/contacts/DisplayItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;)Lcom/vlingo/client/core/contacts/DisplayItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;->item:Lcom/vlingo/client/core/contacts/DisplayItem;

    return-object v0
.end method


# virtual methods
.method public stringForResourceID(I)Ljava/lang/CharSequence;
    .registers 5
    .parameter "id"

    .prologue
    .line 188
    const v0, 0x7f0f00d8

    if-ne p1, v0, :cond_24

    .line 189
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;->this$0:Lcom/vlingo/client/car/voicedial/PhoneTypeList;

    invoke-virtual {v0}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;->item:Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/ContactDetail;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;->item:Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/ContactDetail;->getIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vlingo/client/util/ContactUtil;->getLocalizedTypeString(Landroid/content/Context;ILjava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_23
    return-object v0

    .line 190
    :cond_24
    const v0, 0x7f0f00db

    if-ne p1, v0, :cond_34

    .line 191
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/PhoneTypeList$ItemWrapper;->item:Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 193
    :cond_34
    const-string v0, ""

    goto :goto_23
.end method
