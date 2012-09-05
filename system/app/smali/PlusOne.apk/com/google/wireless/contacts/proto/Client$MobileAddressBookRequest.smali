.class public final Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileAddressBookRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;

.field private static final serialVersionUID:J


# instance fields
.field private entry_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9436
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;

    .line 9437
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->initFields()V

    .line 9438
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 9087
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9124
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->memoizedIsInitialized:B

    .line 9141
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->memoizedSerializedSize:I

    .line 9088
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9082
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 9089
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9124
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->memoizedIsInitialized:B

    .line 9141
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->memoizedSerializedSize:I

    .line 9089
    return-void
.end method

.method static synthetic access$12500(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9082
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->entry_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$12502(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9082
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->entry_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;
    .registers 1

    .prologue
    .line 9093
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 9122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->entry_:Ljava/util/List;

    .line 9123
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9082
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;
    .registers 2

    .prologue
    .line 9097
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;

    return-object v0
.end method

.method public getEntry(I)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;
    .registers 3
    .parameter "index"

    .prologue
    .line 9114
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->entry_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    return-object v0
.end method

.method public getEntryCount()I
    .registers 2

    .prologue
    .line 9111
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->entry_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEntryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9104
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->entry_:Ljava/util/List;

    return-object v0
.end method

.method public getEntryOrBuilder(I)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntryOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 9118
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->entry_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntryOrBuilder;

    return-object v0
.end method

.method public getEntryOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntryOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9108
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->entry_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 9143
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->memoizedSerializedSize:I

    .line 9144
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 9152
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 9146
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 9147
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->entry_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 9148
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->entry_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 9147
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 9151
    :cond_22
    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->memoizedSerializedSize:I

    move v2, v1

    .line 9152
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 9159
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9135
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->getSerializedSize()I

    .line 9136
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->entry_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 9137
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->entry_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9136
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 9139
    :cond_1b
    return-void
.end method
