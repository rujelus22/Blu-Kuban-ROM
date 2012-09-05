.class public final Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Profile.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Profile$GenderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Profile$Gender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Profile$Gender;",
        "Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Profile$GenderOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

.field private type_:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1087
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1205
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1248
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->UNKNOWN:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->type_:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    .line 1088
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->maybeForceBuilderInitialization()V

    .line 1089
    return-void
.end method

.method static synthetic access$1400()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
    .registers 1

    .prologue
    .line 1082
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
    .registers 1

    .prologue
    .line 1094
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1092
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/contacts/proto/Profile$Gender;
    .registers 3

    .prologue
    .line 1115
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v0

    .line 1116
    .local v0, result:Lcom/google/wireless/contacts/proto/Profile$Gender;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Gender;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1117
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1119
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1082
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Profile$Gender;
    .registers 6

    .prologue
    .line 1133
    new-instance v1, Lcom/google/wireless/contacts/proto/Profile$Gender;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Profile$Gender;-><init>(Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;Lcom/google/wireless/contacts/proto/Profile$1;)V

    .line 1134
    .local v1, result:Lcom/google/wireless/contacts/proto/Profile$Gender;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

    .line 1135
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1136
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1137
    or-int/lit8 v2, v2, 0x1

    .line 1139
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$Gender;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$Gender;->access$1602(Lcom/google/wireless/contacts/proto/Profile$Gender;Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1140
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1141
    or-int/lit8 v2, v2, 0x2

    .line 1143
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->type_:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$Gender;->type_:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$Gender;->access$1702(Lcom/google/wireless/contacts/proto/Profile$Gender;Lcom/google/wireless/contacts/proto/Profile$Gender$Type;)Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    .line 1144
    #setter for: Lcom/google/wireless/contacts/proto/Profile$Gender;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Profile$Gender;->access$1802(Lcom/google/wireless/contacts/proto/Profile$Gender;I)I

    .line 1145
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1082
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->clear()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1082
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->clear()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
    .registers 2

    .prologue
    .line 1098
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1099
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1100
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

    .line 1101
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->UNKNOWN:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->type_:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    .line 1102
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

    .line 1103
    return-object p0
.end method

.method public clearMetadata()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
    .registers 2

    .prologue
    .line 1241
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1243
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

    .line 1244
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
    .registers 2

    .prologue
    .line 1265
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

    .line 1266
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->UNKNOWN:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->type_:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    .line 1268
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1082
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1082
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
    .registers 3

    .prologue
    .line 1107
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

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
    .line 1082
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1082
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1082
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$Gender;
    .registers 2

    .prologue
    .line 1111
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Gender;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 2

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    return-object v0
.end method

.method public getType()Lcom/google/wireless/contacts/proto/Profile$Gender$Type;
    .registers 2

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->type_:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    return-object v0
.end method

.method public hasMetadata()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1207
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasType()Z
    .registers 3

    .prologue
    .line 1250
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

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
    .line 1082
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

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
    .line 1082
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1168
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 1169
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_3e

    .line 1174
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1176
    :sswitch_d
    return-object p0

    .line 1181
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->newBuilder()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v1

    .line 1182
    .local v1, subBuilder:Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->hasMetadata()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1183
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    .line 1185
    :cond_1f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1186
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->setMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    goto :goto_0

    .line 1190
    .end local v1           #subBuilder:Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1191
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->valueOf(I)Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    move-result-object v3

    .line 1192
    .local v3, value:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;
    if-eqz v3, :cond_0

    .line 1193
    iget v4, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

    .line 1194
    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->type_:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    goto :goto_0

    .line 1169
    nop

    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_2a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 1149
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Gender;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1156
    :cond_6
    :goto_6
    return-object p0

    .line 1150
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Gender;->hasMetadata()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1151
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Gender;->getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->mergeMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    .line 1153
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Gender;->hasType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1154
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Gender;->getType()Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->setType(Lcom/google/wireless/contacts/proto/Profile$Gender$Type;)Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    goto :goto_6
.end method

.method public mergeMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1229
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1231
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata;->newBuilder(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1237
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

    .line 1238
    return-object p0

    .line 1234
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    goto :goto_1f
.end method

.method public setMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;)Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1223
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->build()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1225
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

    .line 1226
    return-object p0
.end method

.method public setMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1213
    if-nez p1, :cond_8

    .line 1214
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1216
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1218
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

    .line 1219
    return-object p0
.end method

.method public setType(Lcom/google/wireless/contacts/proto/Profile$Gender$Type;)Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1256
    if-nez p1, :cond_8

    .line 1257
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1259
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->bitField0_:I

    .line 1260
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->type_:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    .line 1262
    return-object p0
.end method
