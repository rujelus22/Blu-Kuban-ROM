.class public final Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiContactOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiContact;",
        "Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiContactOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:J

.field private name_:Ljava/lang/Object;

.field private phoneNumberFormatted_:Ljava/lang/Object;

.field private phoneNumber_:Ljava/lang/Object;

.field private phoneType_:I

.field private photoUrl_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 17170
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 17300
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->name_:Ljava/lang/Object;

    .line 17353
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 17448
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 17501
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->photoUrl_:Ljava/lang/Object;

    .line 17171
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->maybeForceBuilderInitialization()V

    .line 17172
    return-void
.end method

.method static synthetic access$20300()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 1

    .prologue
    .line 17165
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 1

    .prologue
    .line 17177
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 17175
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiContact;
    .registers 3

    .prologue
    .line 17206
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v0

    .line 17207
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiContact;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 17208
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 17210
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17165
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiContact;
    .registers 6

    .prologue
    .line 17214
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiContact;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiContact;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 17215
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiContact;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17216
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 17217
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 17218
    or-int/lit8 v2, v2, 0x1

    .line 17220
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiContact;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiContact;->access$20502(Lcom/google/grandcentral/api2/Api2$ApiContact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17221
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 17222
    or-int/lit8 v2, v2, 0x2

    .line 17224
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiContact;->access$20602(Lcom/google/grandcentral/api2/Api2$ApiContact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17225
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 17226
    or-int/lit8 v2, v2, 0x4

    .line 17228
    :cond_28
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneType_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneType_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiContact;->access$20702(Lcom/google/grandcentral/api2/Api2$ApiContact;I)I

    .line 17229
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 17230
    or-int/lit8 v2, v2, 0x8

    .line 17232
    :cond_35
    iget-wide v3, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->id_:J

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiContact;->id_:J
    invoke-static {v1, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiContact;->access$20802(Lcom/google/grandcentral/api2/Api2$ApiContact;J)J

    .line 17233
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 17234
    or-int/lit8 v2, v2, 0x10

    .line 17236
    :cond_42
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneNumberFormatted_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiContact;->access$20902(Lcom/google/grandcentral/api2/Api2$ApiContact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17237
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 17238
    or-int/lit8 v2, v2, 0x20

    .line 17240
    :cond_4f
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->photoUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiContact;->photoUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiContact;->access$21002(Lcom/google/grandcentral/api2/Api2$ApiContact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17241
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiContact;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiContact;->access$21102(Lcom/google/grandcentral/api2/Api2$ApiContact;I)I

    .line 17242
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17165
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 3

    .prologue
    .line 17181
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 17182
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->name_:Ljava/lang/Object;

    .line 17183
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17184
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 17185
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17186
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneType_:I

    .line 17187
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17188
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->id_:J

    .line 17189
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17190
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 17191
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17192
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->photoUrl_:Ljava/lang/Object;

    .line 17193
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17194
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 17165
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17165
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 3

    .prologue
    .line 17441
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17442
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->id_:J

    .line 17444
    return-object p0
.end method

.method public clearName()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 2

    .prologue
    .line 17336
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17337
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->name_:Ljava/lang/Object;

    .line 17339
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 2

    .prologue
    .line 17389
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17390
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 17392
    return-object p0
.end method

.method public clearPhoneNumberFormatted()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 2

    .prologue
    .line 17484
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17485
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getPhoneNumberFormatted()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 17487
    return-object p0
.end method

.method public clearPhoneType()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 2

    .prologue
    .line 17420
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17421
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneType_:I

    .line 17423
    return-object p0
.end method

.method public clearPhotoUrl()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 2

    .prologue
    .line 17537
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17538
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->photoUrl_:Ljava/lang/Object;

    .line 17540
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 3

    .prologue
    .line 17198
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiContact;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 17165
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 17165
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17165
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

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
    .line 17165
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiContact;
    .registers 2

    .prologue
    .line 17202
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 17165
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17165
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 17432
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->id_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 17305
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->name_:Ljava/lang/Object;

    .line 17306
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 17307
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17308
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->name_:Ljava/lang/Object;

    .line 17311
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

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 17316
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->name_:Ljava/lang/Object;

    .line 17317
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 17318
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17320
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->name_:Ljava/lang/Object;

    .line 17323
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 17358
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 17359
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 17360
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17361
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 17364
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

.method public getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 17369
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 17370
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 17371
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17373
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 17376
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getPhoneNumberFormatted()Ljava/lang/String;
    .registers 4

    .prologue
    .line 17453
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 17454
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 17455
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17456
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 17459
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

.method public getPhoneNumberFormattedBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 17464
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 17465
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 17466
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17468
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 17471
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getPhoneType()I
    .registers 2

    .prologue
    .line 17411
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneType_:I

    return v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 17506
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->photoUrl_:Ljava/lang/Object;

    .line 17507
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 17508
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17509
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->photoUrl_:Ljava/lang/Object;

    .line 17512
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

.method public getPhotoUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 17517
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->photoUrl_:Ljava/lang/Object;

    .line 17518
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 17519
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17521
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->photoUrl_:Ljava/lang/Object;

    .line 17524
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public hasId()Z
    .registers 3

    .prologue
    .line 17429
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 17302
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 17355
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

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

.method public hasPhoneNumberFormatted()Z
    .registers 3

    .prologue
    .line 17450
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

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

.method public hasPhoneType()Z
    .registers 3

    .prologue
    .line 17408
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

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

.method public hasPhotoUrl()Z
    .registers 3

    .prologue
    .line 17503
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 17277
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiContact;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 17246
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 17273
    :cond_6
    :goto_6
    return-object p0

    .line 17247
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiContact;->hasName()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 17248
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17249
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiContact;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiContact;->access$20500(Lcom/google/grandcentral/api2/Api2$ApiContact;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->name_:Ljava/lang/Object;

    .line 17252
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiContact;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 17253
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17254
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiContact;->access$20600(Lcom/google/grandcentral/api2/Api2$ApiContact;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 17257
    :cond_2b
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiContact;->hasPhoneType()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 17258
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getPhoneType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->setPhoneType(I)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    .line 17260
    :cond_38
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiContact;->hasId()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 17261
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->setId(J)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    .line 17263
    :cond_45
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiContact;->hasPhoneNumberFormatted()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 17264
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17265
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiContact;->phoneNumberFormatted_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiContact;->access$20900(Lcom/google/grandcentral/api2/Api2$ApiContact;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 17268
    :cond_57
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiContact;->hasPhotoUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17269
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17270
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiContact;->photoUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiContact;->access$21000(Lcom/google/grandcentral/api2/Api2$ApiContact;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->photoUrl_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17284
    const/4 v2, 0x0

    .line 17286
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiContact;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiContact;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 17291
    if-eqz v2, :cond_10

    .line 17292
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiContact;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    .line 17295
    :cond_10
    return-object p0

    .line 17287
    :catch_11
    move-exception v1

    .line 17288
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-object v2, v0

    .line 17289
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 17291
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 17292
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiContact;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    :cond_21
    throw v3
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
    .line 17165
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 17165
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiContact;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiContact;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

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
    .line 17165
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setId(J)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 17435
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17436
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->id_:J

    .line 17438
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17327
    if-nez p1, :cond_8

    .line 17328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17330
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17331
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->name_:Ljava/lang/Object;

    .line 17333
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17343
    if-nez p1, :cond_8

    .line 17344
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17346
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17347
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->name_:Ljava/lang/Object;

    .line 17349
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17380
    if-nez p1, :cond_8

    .line 17381
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17383
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17384
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 17386
    return-object p0
.end method

.method public setPhoneNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17396
    if-nez p1, :cond_8

    .line 17397
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17399
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17400
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 17402
    return-object p0
.end method

.method public setPhoneNumberFormatted(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17475
    if-nez p1, :cond_8

    .line 17476
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17478
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17479
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 17481
    return-object p0
.end method

.method public setPhoneNumberFormattedBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17491
    if-nez p1, :cond_8

    .line 17492
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17494
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17495
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 17497
    return-object p0
.end method

.method public setPhoneType(I)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17414
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17415
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->phoneType_:I

    .line 17417
    return-object p0
.end method

.method public setPhotoUrl(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17528
    if-nez p1, :cond_8

    .line 17529
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17531
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17532
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->photoUrl_:Ljava/lang/Object;

    .line 17534
    return-object p0
.end method

.method public setPhotoUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17544
    if-nez p1, :cond_8

    .line 17545
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17547
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->bitField0_:I

    .line 17548
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->photoUrl_:Ljava/lang/Object;

    .line 17550
    return-object p0
.end method
