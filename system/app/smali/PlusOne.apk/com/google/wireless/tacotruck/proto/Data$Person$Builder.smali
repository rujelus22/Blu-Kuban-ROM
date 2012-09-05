.class public final Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PersonOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Person;",
        "Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$PersonOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private email_:Ljava/lang/Object;

.field private focusObfuscatedId_:Ljava/lang/Object;

.field private gaiaId_:J

.field private name_:Ljava/lang/Object;

.field private profilePhotoUrl_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 10925
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11098
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 11134
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->name_:Ljava/lang/Object;

    .line 11170
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->email_:Ljava/lang/Object;

    .line 11206
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 10926
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->maybeForceBuilderInitialization()V

    .line 10927
    return-void
.end method

.method static synthetic access$13800(Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10920
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13900()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .registers 1

    .prologue
    .line 10920
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10968
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    .line 10969
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 10970
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 10973
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .registers 1

    .prologue
    .line 10932
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 10930
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 3

    .prologue
    .line 10959
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    .line 10960
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 10961
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10963
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10920
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 6

    .prologue
    .line 10977
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Person;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Person;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 10978
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Person;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    .line 10979
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 10980
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 10981
    or-int/lit8 v2, v2, 0x1

    .line 10983
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->gaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Person;->gaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Person;->access$14102(Lcom/google/wireless/tacotruck/proto/Data$Person;J)J

    .line 10984
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 10985
    or-int/lit8 v2, v2, 0x2

    .line 10987
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Person;->focusObfuscatedId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Person;->access$14202(Lcom/google/wireless/tacotruck/proto/Data$Person;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10988
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 10989
    or-int/lit8 v2, v2, 0x4

    .line 10991
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Person;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Person;->access$14302(Lcom/google/wireless/tacotruck/proto/Data$Person;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10992
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 10993
    or-int/lit8 v2, v2, 0x8

    .line 10995
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->email_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Person;->email_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Person;->access$14402(Lcom/google/wireless/tacotruck/proto/Data$Person;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10996
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 10997
    or-int/lit8 v2, v2, 0x10

    .line 10999
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Person;->profilePhotoUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Person;->access$14502(Lcom/google/wireless/tacotruck/proto/Data$Person;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11000
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Person;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Person;->access$14602(Lcom/google/wireless/tacotruck/proto/Data$Person;I)I

    .line 11001
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10920
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10920
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .registers 3

    .prologue
    .line 10936
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 10937
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->gaiaId_:J

    .line 10938
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    .line 10939
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 10940
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    .line 10941
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->name_:Ljava/lang/Object;

    .line 10942
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    .line 10943
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->email_:Ljava/lang/Object;

    .line 10944
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    .line 10945
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 10946
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    .line 10947
    return-object p0
.end method

.method public clearEmail()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .registers 2

    .prologue
    .line 11194
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    .line 11195
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->email_:Ljava/lang/Object;

    .line 11197
    return-object p0
.end method

.method public clearFocusObfuscatedId()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .registers 2

    .prologue
    .line 11122
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    .line 11123
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 11125
    return-object p0
.end method

.method public clearGaiaId()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .registers 3

    .prologue
    .line 11091
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    .line 11092
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->gaiaId_:J

    .line 11094
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .registers 2

    .prologue
    .line 11158
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    .line 11159
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->name_:Ljava/lang/Object;

    .line 11161
    return-object p0
.end method

.method public clearProfilePhotoUrl()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .registers 2

    .prologue
    .line 11230
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    .line 11231
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getProfilePhotoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 11233
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 10920
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10920
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .registers 3

    .prologue
    .line 10951
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

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
    .line 10920
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 10920
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10920
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 2

    .prologue
    .line 10955
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 4

    .prologue
    .line 11175
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->email_:Ljava/lang/Object;

    .line 11176
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 11177
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11178
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->email_:Ljava/lang/Object;

    .line 11181
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

.method public getFocusObfuscatedId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 11103
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 11104
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 11105
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11106
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 11109
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

.method public getGaiaId()J
    .registers 3

    .prologue
    .line 11082
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->gaiaId_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 11139
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->name_:Ljava/lang/Object;

    .line 11140
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 11141
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11142
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->name_:Ljava/lang/Object;

    .line 11145
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

.method public getProfilePhotoUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 11211
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 11212
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 11213
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11214
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 11217
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

.method public hasEmail()Z
    .registers 3

    .prologue
    .line 11172
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

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

.method public hasFocusObfuscatedId()Z
    .registers 3

    .prologue
    .line 11100
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

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

.method public hasGaiaId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 11079
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasName()Z
    .registers 3

    .prologue
    .line 11136
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

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

.method public hasProfilePhotoUrl()Z
    .registers 3

    .prologue
    .line 11208
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
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
    .line 10920
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

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
    .line 10920
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11033
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 11034
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_50

    .line 11039
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11041
    :sswitch_d
    return-object p0

    .line 11046
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    .line 11047
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->gaiaId_:J

    goto :goto_0

    .line 11051
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    .line 11052
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 11056
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    .line 11057
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->email_:Ljava/lang/Object;

    goto :goto_0

    .line 11061
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    .line 11062
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 11066
    :sswitch_42
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    .line 11067
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    goto :goto_0

    .line 11034
    nop

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_42
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 11005
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 11021
    :cond_6
    :goto_6
    return-object p0

    .line 11006
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasGaiaId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 11007
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 11009
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasFocusObfuscatedId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 11010
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 11012
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 11013
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 11015
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 11016
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 11018
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasProfilePhotoUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11019
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getProfilePhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setProfilePhotoUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_6
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11185
    if-nez p1, :cond_8

    .line 11186
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11188
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    .line 11189
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->email_:Ljava/lang/Object;

    .line 11191
    return-object p0
.end method

.method public setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11113
    if-nez p1, :cond_8

    .line 11114
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11116
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    .line 11117
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 11119
    return-object p0
.end method

.method public setGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 11085
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    .line 11086
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->gaiaId_:J

    .line 11088
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11149
    if-nez p1, :cond_8

    .line 11150
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11152
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    .line 11153
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->name_:Ljava/lang/Object;

    .line 11155
    return-object p0
.end method

.method public setProfilePhotoUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11221
    if-nez p1, :cond_8

    .line 11222
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11224
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->bitField0_:I

    .line 11225
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 11227
    return-object p0
.end method
