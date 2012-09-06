.class public final Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Location;",
        "Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$LocationOrBuilder;"
    }
.end annotation


# instance fields
.field private accuracy_:I

.field private bitField0_:I

.field private clickTrackingUrl_:Ljava/lang/Object;

.field private distanceInMetres_:D

.field private hasOffer_:Z

.field private isRecommended_:Z

.field private latSpanE7_:I

.field private lngSpanE7_:I

.field private localClusterId_:Ljava/lang/Object;

.field private mapsUrlSignature_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

.field private reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 23102
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 23366
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 23409
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->localClusterId_:Ljava/lang/Object;

    .line 23445
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    .line 23481
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    .line 23608
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mapsUrlSignature_:Ljava/lang/Object;

    .line 23686
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clickTrackingUrl_:Ljava/lang/Object;

    .line 23103
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->maybeForceBuilderInitialization()V

    .line 23104
    return-void
.end method

.method static synthetic access$30300(Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23097
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$30400()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 1

    .prologue
    .line 23097
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23159
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    .line 23160
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 23161
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 23164
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 1

    .prologue
    .line 23109
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 23107
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23097
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 3

    .prologue
    .line 23150
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    .line 23151
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 23152
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 23154
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23097
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 6

    .prologue
    .line 23168
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Location;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 23169
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Location;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23170
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 23171
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 23172
    or-int/lit8 v2, v2, 0x1

    .line 23174
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$30602(Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 23175
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 23176
    or-int/lit8 v2, v2, 0x2

    .line 23178
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->localClusterId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->localClusterId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$30702(Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23179
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 23180
    or-int/lit8 v2, v2, 0x4

    .line 23182
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$30802(Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23183
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 23184
    or-int/lit8 v2, v2, 0x8

    .line 23186
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$30902(Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    .line 23187
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 23188
    or-int/lit8 v2, v2, 0x10

    .line 23190
    :cond_42
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->accuracy_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->accuracy_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$31002(Lcom/google/wireless/tacotruck/proto/Data$Location;I)I

    .line 23191
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 23192
    or-int/lit8 v2, v2, 0x20

    .line 23194
    :cond_4f
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->latSpanE7_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->latSpanE7_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$31102(Lcom/google/wireless/tacotruck/proto/Data$Location;I)I

    .line 23195
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 23196
    or-int/lit8 v2, v2, 0x40

    .line 23198
    :cond_5c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->lngSpanE7_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->lngSpanE7_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$31202(Lcom/google/wireless/tacotruck/proto/Data$Location;I)I

    .line 23199
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 23200
    or-int/lit16 v2, v2, 0x80

    .line 23202
    :cond_69
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->distanceInMetres_:D

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->distanceInMetres_:D
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$31302(Lcom/google/wireless/tacotruck/proto/Data$Location;D)D

    .line 23203
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 23204
    or-int/lit16 v2, v2, 0x100

    .line 23206
    :cond_76
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mapsUrlSignature_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->mapsUrlSignature_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$31402(Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23207
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 23208
    or-int/lit16 v2, v2, 0x200

    .line 23210
    :cond_83
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->hasOffer_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->hasOffer_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$31502(Lcom/google/wireless/tacotruck/proto/Data$Location;Z)Z

    .line 23211
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_90

    .line 23212
    or-int/lit16 v2, v2, 0x400

    .line 23214
    :cond_90
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->isRecommended_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->isRecommended_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$31602(Lcom/google/wireless/tacotruck/proto/Data$Location;Z)Z

    .line 23215
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_9d

    .line 23216
    or-int/lit16 v2, v2, 0x800

    .line 23218
    :cond_9d
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clickTrackingUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->clickTrackingUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$31702(Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23219
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$31802(Lcom/google/wireless/tacotruck/proto/Data$Location;I)I

    .line 23220
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23097
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23097
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 23113
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 23114
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 23115
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23116
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->localClusterId_:Ljava/lang/Object;

    .line 23117
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23118
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    .line 23119
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23120
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    .line 23121
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23122
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->accuracy_:I

    .line 23123
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23124
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->latSpanE7_:I

    .line 23125
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23126
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->lngSpanE7_:I

    .line 23127
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->distanceInMetres_:D

    .line 23129
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23130
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mapsUrlSignature_:Ljava/lang/Object;

    .line 23131
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23132
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->hasOffer_:Z

    .line 23133
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23134
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->isRecommended_:Z

    .line 23135
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23136
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clickTrackingUrl_:Ljava/lang/Object;

    .line 23137
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23138
    return-object p0
.end method

.method public clearAccuracy()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 23538
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23539
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->accuracy_:I

    .line 23541
    return-object p0
.end method

.method public clearClickTrackingUrl()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 23710
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23711
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clickTrackingUrl_:Ljava/lang/Object;

    .line 23713
    return-object p0
.end method

.method public clearDistanceInMetres()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3

    .prologue
    .line 23601
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23602
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->distanceInMetres_:D

    .line 23604
    return-object p0
.end method

.method public clearHasOffer()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 23658
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23659
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->hasOffer_:Z

    .line 23661
    return-object p0
.end method

.method public clearIsRecommended()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 23679
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23680
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->isRecommended_:Z

    .line 23682
    return-object p0
.end method

.method public clearLatSpanE7()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 23559
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23560
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->latSpanE7_:I

    .line 23562
    return-object p0
.end method

.method public clearLngSpanE7()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 23580
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23581
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->lngSpanE7_:I

    .line 23583
    return-object p0
.end method

.method public clearLocalClusterId()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 23433
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23434
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getLocalClusterId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->localClusterId_:Ljava/lang/Object;

    .line 23436
    return-object p0
.end method

.method public clearMapsUrlSignature()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 23632
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23633
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getMapsUrlSignature()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mapsUrlSignature_:Ljava/lang/Object;

    .line 23635
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 23469
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23470
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    .line 23472
    return-object p0
.end method

.method public clearPosition()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 23402
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 23404
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23405
    return-object p0
.end method

.method public clearReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 23517
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    .line 23519
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23520
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 23097
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23097
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3

    .prologue
    .line 23142
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

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
    .line 23097
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccuracy()I
    .registers 2

    .prologue
    .line 23529
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->accuracy_:I

    return v0
.end method

.method public getClickTrackingUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 23691
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clickTrackingUrl_:Ljava/lang/Object;

    .line 23692
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 23693
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 23694
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clickTrackingUrl_:Ljava/lang/Object;

    .line 23697
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 23097
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23097
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2

    .prologue
    .line 23146
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    return-object v0
.end method

.method public getDistanceInMetres()D
    .registers 3

    .prologue
    .line 23592
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->distanceInMetres_:D

    return-wide v0
.end method

.method public getHasOffer()Z
    .registers 2

    .prologue
    .line 23649
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->hasOffer_:Z

    return v0
.end method

.method public getIsRecommended()Z
    .registers 2

    .prologue
    .line 23670
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->isRecommended_:Z

    return v0
.end method

.method public getLatSpanE7()I
    .registers 2

    .prologue
    .line 23550
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->latSpanE7_:I

    return v0
.end method

.method public getLngSpanE7()I
    .registers 2

    .prologue
    .line 23571
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->lngSpanE7_:I

    return v0
.end method

.method public getLocalClusterId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 23414
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->localClusterId_:Ljava/lang/Object;

    .line 23415
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 23416
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 23417
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->localClusterId_:Ljava/lang/Object;

    .line 23420
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

.method public getMapsUrlSignature()Ljava/lang/String;
    .registers 4

    .prologue
    .line 23613
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mapsUrlSignature_:Ljava/lang/Object;

    .line 23614
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 23615
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 23616
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mapsUrlSignature_:Ljava/lang/Object;

    .line 23619
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

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 23450
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    .line 23451
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 23452
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 23453
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    .line 23456
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

.method public getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 2

    .prologue
    .line 23371
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    return-object v0
.end method

.method public getReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    .registers 2

    .prologue
    .line 23486
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    return-object v0
.end method

.method public hasAccuracy()Z
    .registers 3

    .prologue
    .line 23526
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

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

.method public hasClickTrackingUrl()Z
    .registers 3

    .prologue
    .line 23688
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDistanceInMetres()Z
    .registers 3

    .prologue
    .line 23589
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasHasOffer()Z
    .registers 3

    .prologue
    .line 23646
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasIsRecommended()Z
    .registers 3

    .prologue
    .line 23667
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLatSpanE7()Z
    .registers 3

    .prologue
    .line 23547
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

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

.method public hasLngSpanE7()Z
    .registers 3

    .prologue
    .line 23568
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLocalClusterId()Z
    .registers 3

    .prologue
    .line 23411
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

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

.method public hasMapsUrlSignature()Z
    .registers 3

    .prologue
    .line 23610
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

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
    .line 23447
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

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

.method public hasPosition()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 23368
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasReverseGeocode()Z
    .registers 3

    .prologue
    .line 23483
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 23265
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->hasPosition()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 23266
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 23268
    const/4 v0, 0x0

    .line 23271
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
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
    .line 23097
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 23097
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$Location;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

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
    .line 23097
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23279
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 23280
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_ce

    .line 23285
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 23287
    :sswitch_d
    return-object p0

    .line 23292
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    .line 23293
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->hasPosition()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 23294
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    .line 23296
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 23297
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    goto :goto_0

    .line 23301
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23302
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->localClusterId_:Ljava/lang/Object;

    goto :goto_0

    .line 23306
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23307
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 23311
    :sswitch_44
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    .line 23312
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->hasReverseGeocode()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 23313
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->getReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    .line 23315
    :cond_55
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 23316
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    goto :goto_0

    .line 23320
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    :sswitch_60
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23321
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->accuracy_:I

    goto :goto_0

    .line 23325
    :sswitch_6d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23326
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->latSpanE7_:I

    goto :goto_0

    .line 23330
    :sswitch_7a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23331
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->lngSpanE7_:I

    goto/16 :goto_0

    .line 23335
    :sswitch_88
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23336
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->distanceInMetres_:D

    goto/16 :goto_0

    .line 23340
    :sswitch_96
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23341
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mapsUrlSignature_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 23345
    :sswitch_a4
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23346
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->hasOffer_:Z

    goto/16 :goto_0

    .line 23350
    :sswitch_b2
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23351
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->isRecommended_:Z

    goto/16 :goto_0

    .line 23355
    :sswitch_c0
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23356
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clickTrackingUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 23280
    :sswitch_data_ce
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_37
        0x22 -> :sswitch_44
        0x38 -> :sswitch_60
        0x40 -> :sswitch_6d
        0x48 -> :sswitch_7a
        0x51 -> :sswitch_88
        0x5a -> :sswitch_96
        0x60 -> :sswitch_a4
        0x68 -> :sswitch_b2
        0x72 -> :sswitch_c0
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 23224
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 23261
    :cond_6
    :goto_6
    return-object p0

    .line 23225
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasPosition()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 23226
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergePosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 23228
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasLocalClusterId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 23229
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getLocalClusterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setLocalClusterId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 23231
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 23232
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 23234
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasReverseGeocode()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 23235
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 23237
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 23238
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getAccuracy()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setAccuracy(I)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 23240
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasLatSpanE7()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 23241
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getLatSpanE7()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setLatSpanE7(I)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 23243
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasLngSpanE7()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 23244
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getLngSpanE7()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setLngSpanE7(I)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 23246
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasDistanceInMetres()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 23247
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDistanceInMetres()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setDistanceInMetres(D)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 23249
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasMapsUrlSignature()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 23250
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getMapsUrlSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setMapsUrlSignature(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 23252
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasHasOffer()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 23253
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getHasOffer()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setHasOffer(Z)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 23255
    :cond_89
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasIsRecommended()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 23256
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getIsRecommended()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setIsRecommended(Z)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 23258
    :cond_96
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasClickTrackingUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23259
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setClickTrackingUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    goto/16 :goto_6
.end method

.method public mergePosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 23390
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 23392
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 23398
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23399
    return-object p0

    .line 23395
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    goto :goto_1f
.end method

.method public mergeReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 23505
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 23507
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    .line 23513
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23514
    return-object p0

    .line 23510
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    goto :goto_20
.end method

.method public setAccuracy(I)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23532
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23533
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->accuracy_:I

    .line 23535
    return-object p0
.end method

.method public setClickTrackingUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23701
    if-nez p1, :cond_8

    .line 23702
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23704
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23705
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clickTrackingUrl_:Ljava/lang/Object;

    .line 23707
    return-object p0
.end method

.method public setDistanceInMetres(D)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 23595
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23596
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->distanceInMetres_:D

    .line 23598
    return-object p0
.end method

.method public setHasOffer(Z)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23652
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23653
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->hasOffer_:Z

    .line 23655
    return-object p0
.end method

.method public setIsRecommended(Z)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23673
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23674
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->isRecommended_:Z

    .line 23676
    return-object p0
.end method

.method public setLatSpanE7(I)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23553
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23554
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->latSpanE7_:I

    .line 23556
    return-object p0
.end method

.method public setLngSpanE7(I)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23574
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23575
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->lngSpanE7_:I

    .line 23577
    return-object p0
.end method

.method public setLocalClusterId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23424
    if-nez p1, :cond_8

    .line 23425
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23427
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23428
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->localClusterId_:Ljava/lang/Object;

    .line 23430
    return-object p0
.end method

.method public setMapsUrlSignature(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23623
    if-nez p1, :cond_8

    .line 23624
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23626
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23627
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mapsUrlSignature_:Ljava/lang/Object;

    .line 23629
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23460
    if-nez p1, :cond_8

    .line 23461
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23463
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23464
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    .line 23466
    return-object p0
.end method

.method public setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 23384
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 23386
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23387
    return-object p0
.end method

.method public setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23374
    if-nez p1, :cond_8

    .line 23375
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23377
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 23379
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23380
    return-object p0
.end method

.method public setReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 23499
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    .line 23501
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23502
    return-object p0
.end method

.method public setReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23489
    if-nez p1, :cond_8

    .line 23490
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23492
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    .line 23494
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 23495
    return-object p0
.end method
