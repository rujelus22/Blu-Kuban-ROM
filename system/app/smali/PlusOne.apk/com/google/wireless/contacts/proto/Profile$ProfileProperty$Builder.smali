.class public final Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Profile.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Profile$ProfilePropertyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;",
        "Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Profile$ProfilePropertyOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private type_:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2073
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2173
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->BLOCKED:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->type_:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    .line 2074
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->maybeForceBuilderInitialization()V

    .line 2075
    return-void
.end method

.method static synthetic access$2800()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;
    .registers 1

    .prologue
    .line 2068
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;
    .registers 1

    .prologue
    .line 2080
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2078
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;
    .registers 3

    .prologue
    .line 2099
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    move-result-object v0

    .line 2100
    .local v0, result:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2101
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2103
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2068
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;
    .registers 6

    .prologue
    .line 2117
    new-instance v1, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;-><init>(Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;Lcom/google/wireless/contacts/proto/Profile$1;)V

    .line 2118
    .local v1, result:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->bitField0_:I

    .line 2119
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2120
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2121
    or-int/lit8 v2, v2, 0x1

    .line 2123
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->type_:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->type_:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->access$3002(Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;)Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    .line 2124
    #setter for: Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->access$3102(Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;I)I

    .line 2125
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2068
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->clear()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2068
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->clear()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;
    .registers 2

    .prologue
    .line 2084
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2085
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->BLOCKED:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->type_:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    .line 2086
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->bitField0_:I

    .line 2087
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;
    .registers 2

    .prologue
    .line 2190
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->bitField0_:I

    .line 2191
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->BLOCKED:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->type_:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    .line 2193
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2068
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2068
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;
    .registers 3

    .prologue
    .line 2091
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;)Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;

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
    .line 2068
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2068
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2068
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;
    .registers 2

    .prologue
    .line 2095
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;
    .registers 2

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->type_:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    return-object v0
.end method

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2175
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->bitField0_:I

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
    .line 2068
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;

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
    .line 2068
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2145
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2146
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_22

    .line 2151
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2153
    :sswitch_d
    return-object p0

    .line 2158
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2159
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->valueOf(I)Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    move-result-object v2

    .line 2160
    .local v2, value:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;
    if-eqz v2, :cond_0

    .line 2161
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->bitField0_:I

    .line 2162
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->type_:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    goto :goto_0

    .line 2146
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;)Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 2129
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2133
    :cond_6
    :goto_6
    return-object p0

    .line 2130
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->hasType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2131
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->getType()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->setType(Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;)Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;

    goto :goto_6
.end method

.method public setType(Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;)Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2181
    if-nez p1, :cond_8

    .line 2182
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2184
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->bitField0_:I

    .line 2185
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->type_:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    .line 2187
    return-object p0
.end method
