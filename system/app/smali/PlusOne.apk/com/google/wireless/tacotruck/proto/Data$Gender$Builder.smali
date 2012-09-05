.class public final Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$GenderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Gender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Gender;",
        "Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$GenderOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 27646
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 27746
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->MALE:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    .line 27647
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->maybeForceBuilderInitialization()V

    .line 27648
    return-void
.end method

.method static synthetic access$37700()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    .registers 1

    .prologue
    .line 27641
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    .registers 1

    .prologue
    .line 27653
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 27651
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$Gender;
    .registers 3

    .prologue
    .line 27672
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    .line 27673
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Gender;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 27674
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 27676
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Gender;
    .registers 6

    .prologue
    .line 27690
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Gender;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Gender;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 27691
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Gender;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->bitField0_:I

    .line 27692
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 27693
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 27694
    or-int/lit8 v2, v2, 0x1

    .line 27696
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Gender;->type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->access$37902(Lcom/google/wireless/tacotruck/proto/Data$Gender;Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    .line 27697
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Gender;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->access$38002(Lcom/google/wireless/tacotruck/proto/Data$Gender;I)I

    .line 27698
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    .registers 2

    .prologue
    .line 27657
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 27658
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->MALE:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    .line 27659
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->bitField0_:I

    .line 27660
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    .registers 2

    .prologue
    .line 27763
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->bitField0_:I

    .line 27764
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->MALE:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    .line 27766
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 27641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    .registers 3

    .prologue
    .line 27664
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 27641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 27641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Gender;
    .registers 2

    .prologue
    .line 27668
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;
    .registers 2

    .prologue
    .line 27751
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    return-object v0
.end method

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 27748
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27641
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27641
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27718
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 27719
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_22

    .line 27724
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 27726
    :sswitch_d
    return-object p0

    .line 27731
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 27732
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    move-result-object v2

    .line 27733
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;
    if-eqz v2, :cond_0

    .line 27734
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->bitField0_:I

    .line 27735
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    goto :goto_0

    .line 27719
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 27702
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 27706
    :cond_6
    :goto_6
    return-object p0

    .line 27703
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->hasType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27704
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->getType()Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    goto :goto_6
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27754
    if-nez p1, :cond_8

    .line 27755
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27757
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->bitField0_:I

    .line 27758
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    .line 27760
    return-object p0
.end method
