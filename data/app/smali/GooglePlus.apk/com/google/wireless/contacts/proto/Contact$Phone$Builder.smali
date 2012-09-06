.class public final Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Contact.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Contact$PhoneOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact$Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Contact$Phone;",
        "Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Contact$PhoneOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private evergreen_:Z

.field private metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

.field private phone_:Ljava/lang/Object;

.field private type_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 831
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 973
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1016
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->phone_:Ljava/lang/Object;

    .line 1052
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->type_:Ljava/lang/Object;

    .line 832
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->maybeForceBuilderInitialization()V

    .line 833
    return-void
.end method

.method static synthetic access$900()Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
    .registers 1

    .prologue
    .line 826
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
    .registers 1

    .prologue
    .line 838
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 836
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$Phone;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Contact$Phone;
    .registers 3

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$Phone;

    move-result-object v0

    .line 864
    .local v0, result:Lcom/google/wireless/contacts/proto/Contact$Phone;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$Phone;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 865
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 867
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$Phone;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Contact$Phone;
    .registers 6

    .prologue
    .line 881
    new-instance v1, Lcom/google/wireless/contacts/proto/Contact$Phone;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Contact$Phone;-><init>(Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;Lcom/google/wireless/contacts/proto/Contact$1;)V

    .line 882
    .local v1, result:Lcom/google/wireless/contacts/proto/Contact$Phone;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    .line 883
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 884
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 885
    or-int/lit8 v2, v2, 0x1

    .line 887
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$Phone;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$Phone;->access$1102(Lcom/google/wireless/contacts/proto/Contact$Phone;Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 888
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 889
    or-int/lit8 v2, v2, 0x2

    .line 891
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->phone_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$Phone;->phone_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$Phone;->access$1202(Lcom/google/wireless/contacts/proto/Contact$Phone;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 893
    or-int/lit8 v2, v2, 0x4

    .line 895
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->type_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$Phone;->type_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$Phone;->access$1302(Lcom/google/wireless/contacts/proto/Contact$Phone;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 897
    or-int/lit8 v2, v2, 0x8

    .line 899
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->evergreen_:Z

    #setter for: Lcom/google/wireless/contacts/proto/Contact$Phone;->evergreen_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$Phone;->access$1402(Lcom/google/wireless/contacts/proto/Contact$Phone;Z)Z

    .line 900
    #setter for: Lcom/google/wireless/contacts/proto/Contact$Phone;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Contact$Phone;->access$1502(Lcom/google/wireless/contacts/proto/Contact$Phone;I)I

    .line 901
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->clear()Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->clear()Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
    .registers 2

    .prologue
    .line 842
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 843
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 844
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    .line 845
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->phone_:Ljava/lang/Object;

    .line 846
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    .line 847
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->type_:Ljava/lang/Object;

    .line 848
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    .line 849
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->evergreen_:Z

    .line 850
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    .line 851
    return-object p0
.end method

.method public clearEvergreen()Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
    .registers 2

    .prologue
    .line 1102
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    .line 1103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->evergreen_:Z

    .line 1105
    return-object p0
.end method

.method public clearMetadata()Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
    .registers 2

    .prologue
    .line 1009
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1011
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    .line 1012
    return-object p0
.end method

.method public clearPhone()Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
    .registers 2

    .prologue
    .line 1040
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    .line 1041
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getPhone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->phone_:Ljava/lang/Object;

    .line 1043
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
    .registers 2

    .prologue
    .line 1076
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    .line 1077
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->type_:Ljava/lang/Object;

    .line 1079
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
    .registers 3

    .prologue
    .line 855
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$Phone;)Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;

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
    .line 826
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$Phone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$Phone;
    .registers 2

    .prologue
    .line 859
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$Phone;

    move-result-object v0

    return-object v0
.end method

.method public getEvergreen()Z
    .registers 2

    .prologue
    .line 1093
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->evergreen_:Z

    return v0
.end method

.method public getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 2

    .prologue
    .line 978
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->phone_:Ljava/lang/Object;

    .line 1022
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1023
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1024
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->phone_:Ljava/lang/Object;

    .line 1027
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

.method public getType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->type_:Ljava/lang/Object;

    .line 1058
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1059
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1060
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->type_:Ljava/lang/Object;

    .line 1063
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

.method public hasEvergreen()Z
    .registers 3

    .prologue
    .line 1090
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasMetadata()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 975
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhone()Z
    .registers 3

    .prologue
    .line 1018
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    .line 1054
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 922
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
    .line 826
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 826
    check-cast p1, Lcom/google/wireless/contacts/proto/Contact$Phone;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$Phone;)Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;

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
    .line 826
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 930
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 931
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_52

    .line 936
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 938
    :sswitch_d
    return-object p0

    .line 943
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->newBuilder()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    .line 944
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->hasMetadata()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 945
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    .line 947
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 948
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->setMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;

    goto :goto_0

    .line 952
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    .line 953
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->phone_:Ljava/lang/Object;

    goto :goto_0

    .line 957
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    .line 958
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->type_:Ljava/lang/Object;

    goto :goto_0

    .line 962
    :sswitch_44
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    .line 963
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->evergreen_:Z

    goto :goto_0

    .line 931
    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_37
        0x20 -> :sswitch_44
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Contact$Phone;)Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 905
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$Phone;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 918
    :cond_6
    :goto_6
    return-object p0

    .line 906
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Phone;->hasMetadata()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 907
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->mergeMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;

    .line 909
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Phone;->hasPhone()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 910
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->setPhone(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;

    .line 912
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Phone;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 913
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->setType(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;

    .line 915
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Phone;->hasEvergreen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 916
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getEvergreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->setEvergreen(Z)Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;

    goto :goto_6
.end method

.method public mergeMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 997
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 999
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata;->newBuilder(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1005
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    .line 1006
    return-object p0

    .line 1002
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    goto :goto_1f
.end method

.method public setEvergreen(Z)Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1096
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    .line 1097
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->evergreen_:Z

    .line 1099
    return-object p0
.end method

.method public setMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;)Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 991
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->build()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 993
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    .line 994
    return-object p0
.end method

.method public setMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 981
    if-nez p1, :cond_8

    .line 982
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 984
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 986
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    .line 987
    return-object p0
.end method

.method public setPhone(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1031
    if-nez p1, :cond_8

    .line 1032
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1034
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    .line 1035
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->phone_:Ljava/lang/Object;

    .line 1037
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1067
    if-nez p1, :cond_8

    .line 1068
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1070
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->bitField0_:I

    .line 1071
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->type_:Ljava/lang/Object;

    .line 1073
    return-object p0
.end method
