.class public final Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$LanguageTagOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$LanguageTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$LanguageTag;",
        "Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$LanguageTagOrBuilder;"
    }
.end annotation


# instance fields
.field private baseLanguage_:Ljava/lang/Object;

.field private bitField0_:I

.field private language_:Ljava/lang/Object;

.field private region_:Ljava/lang/Object;

.field private script_:Ljava/lang/Object;

.field private variant_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 10107
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10237
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->language_:Ljava/lang/Object;

    .line 10290
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->baseLanguage_:Ljava/lang/Object;

    .line 10343
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->region_:Ljava/lang/Object;

    .line 10396
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->script_:Ljava/lang/Object;

    .line 10449
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    .line 10108
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->maybeForceBuilderInitialization()V

    .line 10109
    return-void
.end method

.method static synthetic access$11500()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .registers 1

    .prologue
    .line 10102
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->create()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .registers 1

    .prologue
    .line 10114
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;-><init>()V

    return-object v0
.end method

.method private ensureVariantIsMutable()V
    .registers 3

    .prologue
    .line 10451
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 10452
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    .line 10453
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10455
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 10112
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10102
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->build()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .registers 3

    .prologue
    .line 10141
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    .line 10142
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 10143
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10145
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10102
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .registers 6

    .prologue
    .line 10149
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 10150
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10151
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 10152
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 10153
    or-int/lit8 v2, v2, 0x1

    .line 10155
    :cond_10
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->language_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$LanguageTag;->language_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$11702(Lcom/google/protos/speech/service/SpeechService$LanguageTag;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10156
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 10157
    or-int/lit8 v2, v2, 0x2

    .line 10159
    :cond_1c
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->baseLanguage_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$LanguageTag;->baseLanguage_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$11802(Lcom/google/protos/speech/service/SpeechService$LanguageTag;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10160
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 10161
    or-int/lit8 v2, v2, 0x4

    .line 10163
    :cond_28
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->region_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$LanguageTag;->region_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$11902(Lcom/google/protos/speech/service/SpeechService$LanguageTag;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10164
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 10165
    or-int/lit8 v2, v2, 0x8

    .line 10167
    :cond_35
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->script_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$LanguageTag;->script_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$12002(Lcom/google/protos/speech/service/SpeechService$LanguageTag;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10168
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_51

    .line 10169
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    .line 10171
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10173
    :cond_51
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$12102(Lcom/google/protos/speech/service/SpeechService$LanguageTag;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 10174
    #setter for: Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$12202(Lcom/google/protos/speech/service/SpeechService$LanguageTag;I)I

    .line 10175
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 10102
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10102
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .registers 3

    .prologue
    .line 10133
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->create()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

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
    .line 10102
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 10102
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10102
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .registers 2

    .prologue
    .line 10137
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 10214
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
    .line 10102
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 10102
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

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
    .line 10102
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10221
    const/4 v2, 0x0

    .line 10223
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    :try_start_1
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 10228
    if-eqz v2, :cond_10

    .line 10229
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    .line 10232
    :cond_10
    return-object p0

    .line 10224
    :catch_11
    move-exception v1

    .line 10225
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-object v2, v0

    .line 10226
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 10228
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 10229
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 10179
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 10210
    :cond_6
    :goto_6
    return-object p0

    .line 10180
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->hasLanguage()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 10181
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10182
    #getter for: Lcom/google/protos/speech/service/SpeechService$LanguageTag;->language_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$11700(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->language_:Ljava/lang/Object;

    .line 10185
    :cond_19
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->hasBaseLanguage()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 10186
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10187
    #getter for: Lcom/google/protos/speech/service/SpeechService$LanguageTag;->baseLanguage_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$11800(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->baseLanguage_:Ljava/lang/Object;

    .line 10190
    :cond_2b
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->hasRegion()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 10191
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10192
    #getter for: Lcom/google/protos/speech/service/SpeechService$LanguageTag;->region_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$11900(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->region_:Ljava/lang/Object;

    .line 10195
    :cond_3d
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->hasScript()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 10196
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10197
    #getter for: Lcom/google/protos/speech/service/SpeechService$LanguageTag;->script_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$12000(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->script_:Ljava/lang/Object;

    .line 10200
    :cond_4f
    #getter for: Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$12100(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 10201
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 10202
    #getter for: Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$12100(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    .line 10203
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    goto :goto_6

    .line 10205
    :cond_6e
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->ensureVariantIsMutable()V

    .line 10206
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$12100(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method
