.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOptionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 34764
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 34878
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 34921
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->label_:Ljava/lang/Object;

    .line 34765
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->maybeForceBuilderInitialization()V

    .line 34766
    return-void
.end method

.method static synthetic access$46900()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 1

    .prologue
    .line 34759
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 1

    .prologue
    .line 34771
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 34769
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34759
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    .registers 3

    .prologue
    .line 34792
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v0

    .line 34793
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 34794
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 34796
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34759
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    .registers 6

    .prologue
    .line 34810
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 34811
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    .line 34812
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 34813
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 34814
    or-int/lit8 v2, v2, 0x1

    .line 34816
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->access$47102(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 34817
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 34818
    or-int/lit8 v2, v2, 0x2

    .line 34820
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->access$47202(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34821
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->access$47302(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;I)I

    .line 34822
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 34759
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34759
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 2

    .prologue
    .line 34775
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 34776
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 34777
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    .line 34778
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->label_:Ljava/lang/Object;

    .line 34779
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    .line 34780
    return-object p0
.end method

.method public clearLabel()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 2

    .prologue
    .line 34945
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    .line 34946
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->label_:Ljava/lang/Object;

    .line 34948
    return-object p0
.end method

.method public clearValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 2

    .prologue
    .line 34914
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 34916
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    .line 34917
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 34759
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 34759
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 3

    .prologue
    .line 34784
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

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
    .line 34759
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 34759
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34759
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    .registers 2

    .prologue
    .line 34788
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 34926
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->label_:Ljava/lang/Object;

    .line 34927
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 34928
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 34929
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->label_:Ljava/lang/Object;

    .line 34932
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    .registers 2

    .prologue
    .line 34883
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    return-object v0
.end method

.method public hasLabel()Z
    .registers 3

    .prologue
    .line 34923
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasValue()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 34880
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 34837
    const/4 v0, 0x1

    return v0
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
    .line 34759
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 34759
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

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
    .line 34759
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34845
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 34846
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_38

    .line 34851
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 34853
    :sswitch_d
    return-object p0

    .line 34858
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    .line 34859
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 34860
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->getValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    .line 34862
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 34863
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->setValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    goto :goto_0

    .line 34867
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    .line 34868
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 34846
    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 34826
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 34833
    :cond_6
    :goto_6
    return-object p0

    .line 34827
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 34828
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->getValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->mergeValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    .line 34830
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34831
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->setLabel(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    goto :goto_6
.end method

.method public mergeValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 34902
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 34904
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 34910
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    .line 34911
    return-object p0

    .line 34907
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    goto :goto_1f
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 34936
    if-nez p1, :cond_8

    .line 34937
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34939
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    .line 34940
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->label_:Ljava/lang/Object;

    .line 34942
    return-object p0
.end method

.method public setValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 34896
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 34898
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    .line 34899
    return-object p0
.end method

.method public setValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 34886
    if-nez p1, :cond_8

    .line 34887
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34889
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 34891
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    .line 34892
    return-object p0
.end method
