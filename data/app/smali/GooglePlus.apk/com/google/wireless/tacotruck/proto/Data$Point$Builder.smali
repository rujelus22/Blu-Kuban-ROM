.class public final Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Point;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Point;",
        "Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$PointOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private latitudeE7_:I

.field private longitudeE7_:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23918
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 23919
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->maybeForceBuilderInitialization()V

    .line 23920
    return-void
.end method

.method static synthetic access$32000()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 1

    .prologue
    .line 23913
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 1

    .prologue
    .line 23925
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 23923
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23913
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 3

    .prologue
    .line 23946
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    .line 23947
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Point;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 23948
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 23950
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23913
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 6

    .prologue
    .line 23964
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Point;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Point;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 23965
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Point;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    .line 23966
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 23967
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 23968
    or-int/lit8 v2, v2, 0x1

    .line 23970
    :cond_10
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->latitudeE7_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Point;->latitudeE7_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Point;->access$32202(Lcom/google/wireless/tacotruck/proto/Data$Point;I)I

    .line 23971
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 23972
    or-int/lit8 v2, v2, 0x2

    .line 23974
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->longitudeE7_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Point;->longitudeE7_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Point;->access$32302(Lcom/google/wireless/tacotruck/proto/Data$Point;I)I

    .line 23975
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Point;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Point;->access$32402(Lcom/google/wireless/tacotruck/proto/Data$Point;I)I

    .line 23976
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23913
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23913
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 23929
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 23930
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->latitudeE7_:I

    .line 23931
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    .line 23932
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->longitudeE7_:I

    .line 23933
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    .line 23934
    return-object p0
.end method

.method public clearLatitudeE7()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 2

    .prologue
    .line 24050
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    .line 24051
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->latitudeE7_:I

    .line 24053
    return-object p0
.end method

.method public clearLongitudeE7()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 2

    .prologue
    .line 24071
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    .line 24072
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->longitudeE7_:I

    .line 24074
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 23913
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23913
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 3

    .prologue
    .line 23938
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

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
    .line 23913
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 23913
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23913
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 2

    .prologue
    .line 23942
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    return-object v0
.end method

.method public getLatitudeE7()I
    .registers 2

    .prologue
    .line 24041
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->latitudeE7_:I

    return v0
.end method

.method public getLongitudeE7()I
    .registers 2

    .prologue
    .line 24062
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->longitudeE7_:I

    return v0
.end method

.method public hasLatitudeE7()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 24038
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLongitudeE7()Z
    .registers 3

    .prologue
    .line 24059
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 23991
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->hasLatitudeE7()Z

    move-result v1

    if-nez v1, :cond_8

    .line 23999
    :cond_7
    :goto_7
    return v0

    .line 23995
    :cond_8
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->hasLongitudeE7()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 23999
    const/4 v0, 0x1

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
    .line 23913
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 23913
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$Point;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

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
    .line 23913
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24007
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 24008
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 24013
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24015
    :sswitch_d
    return-object p0

    .line 24020
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    .line 24021
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->latitudeE7_:I

    goto :goto_0

    .line 24025
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    .line 24026
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->longitudeE7_:I

    goto :goto_0

    .line 24008
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 23980
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 23987
    :cond_6
    :goto_6
    return-object p0

    .line 23981
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->hasLatitudeE7()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 23982
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLatitudeE7()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->setLatitudeE7(I)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    .line 23984
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->hasLongitudeE7()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23985
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLongitudeE7()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->setLongitudeE7(I)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    goto :goto_6
.end method

.method public setLatitudeE7(I)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24044
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    .line 24045
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->latitudeE7_:I

    .line 24047
    return-object p0
.end method

.method public setLongitudeE7(I)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24065
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    .line 24066
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->longitudeE7_:I

    .line 24068
    return-object p0
.end method
