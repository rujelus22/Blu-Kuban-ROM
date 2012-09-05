.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionInterpretation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;


# instance fields
.field private actionLiteral_:Ljava/lang/Object;

.field private action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field private bitField0_:I

.field private businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

.field private contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

.field private goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

.field private intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

.field private mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

.field private phoneNumber_:Ljava/lang/Object;

.field private query_:Ljava/lang/Object;

.field private sentence_:Ljava/lang/Object;

.field private websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 319
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    .line 1625
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    .line 1626
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->initFields()V

    .line 1627
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 12
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 170
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 650
    iput-byte v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    .line 736
    iput v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedSerializedSize:I

    .line 171
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->initFields()V

    .line 172
    const/4 v2, 0x0

    .line 174
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 175
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_1c4

    .line 176
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 177
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_1c8

    .line 182
    invoke-virtual {p0, p1, p2, v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_d

    .line 184
    const/4 v0, 0x1

    goto :goto_d

    .line 179
    :sswitch_1e
    const/4 v0, 0x1

    .line 180
    goto :goto_d

    .line 189
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 190
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v6

    .line 191
    .local v6, value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    if-eqz v6, :cond_d

    .line 192
    iget v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    .line 193
    iput-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    :try_end_32
    .catchall {:try_start_f .. :try_end_32} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_32} :catch_33
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_32} :catch_4b

    goto :goto_d

    .line 310
    .end local v3           #rawValue:I
    .end local v5           #tag:I
    .end local v6           #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    :catch_33
    move-exception v1

    .line 311
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_34
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_39

    .line 316
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_39
    move-exception v7

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->makeExtensionsImmutable()V

    throw v7

    .line 198
    .restart local v5       #tag:I
    :sswitch_3e
    :try_start_3e
    iget v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    .line 199
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->query_:Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3e .. :try_end_4a} :catch_33
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4a} :catch_4b

    goto :goto_d

    .line 312
    .end local v5           #tag:I
    :catch_4b
    move-exception v1

    .line 313
    .local v1, e:Ljava/io/IOException;
    :try_start_4c
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_5a
    .catchall {:try_start_4c .. :try_end_5a} :catchall_39

    .line 203
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_5a
    :try_start_5a
    iget v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    .line 204
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->actionLiteral_:Ljava/lang/Object;

    goto :goto_d

    .line 208
    :sswitch_67
    iget v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    .line 209
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->sentence_:Ljava/lang/Object;

    goto :goto_d

    .line 213
    :sswitch_74
    const/4 v4, 0x0

    .line 214
    .local v4, subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;
    iget v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v7, v7, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_83

    .line 215
    iget-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    invoke-virtual {v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    move-result-object v4

    .line 217
    :cond_83
    sget-object v7, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    iput-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    .line 218
    if-eqz v4, :cond_9a

    .line 219
    iget-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    invoke-virtual {v4, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    .line 220
    invoke-virtual {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    .line 222
    :cond_9a
    iget v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    goto/16 :goto_d

    .line 226
    .end local v4           #subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;
    :sswitch_a2
    const/4 v4, 0x0

    .line 227
    .local v4, subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;
    iget v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v7, v7, 0x20

    const/16 v8, 0x20

    if-ne v7, v8, :cond_b1

    .line 228
    iget-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    invoke-virtual {v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v4

    .line 230
    :cond_b1
    sget-object v7, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    iput-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    .line 231
    if-eqz v4, :cond_c8

    .line 232
    iget-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    invoke-virtual {v4, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    .line 233
    invoke-virtual {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    .line 235
    :cond_c8
    iget v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    goto/16 :goto_d

    .line 239
    .end local v4           #subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;
    :sswitch_d0
    iget v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    .line 240
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->phoneNumber_:Ljava/lang/Object;

    goto/16 :goto_d

    .line 244
    :sswitch_de
    const/4 v4, 0x0

    .line 245
    .local v4, subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    iget v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v7, v7, 0x80

    const/16 v8, 0x80

    if-ne v7, v8, :cond_ed

    .line 246
    iget-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    invoke-virtual {v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v4

    .line 248
    :cond_ed
    sget-object v7, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    iput-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    .line 249
    if-eqz v4, :cond_104

    .line 250
    iget-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    invoke-virtual {v4, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    .line 251
    invoke-virtual {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    .line 253
    :cond_104
    iget v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit16 v7, v7, 0x80

    iput v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    goto/16 :goto_d

    .line 257
    .end local v4           #subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    :sswitch_10c
    const/4 v4, 0x0

    .line 258
    .local v4, subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;
    iget v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v7, v7, 0x100

    const/16 v8, 0x100

    if-ne v7, v8, :cond_11b

    .line 259
    iget-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    invoke-virtual {v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    move-result-object v4

    .line 261
    :cond_11b
    sget-object v7, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    iput-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    .line 262
    if-eqz v4, :cond_132

    .line 263
    iget-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    invoke-virtual {v4, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    .line 264
    invoke-virtual {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    .line 266
    :cond_132
    iget v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit16 v7, v7, 0x100

    iput v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    goto/16 :goto_d

    .line 270
    .end local v4           #subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;
    :sswitch_13a
    const/4 v4, 0x0

    .line 271
    .local v4, subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    iget v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v7, v7, 0x200

    const/16 v8, 0x200

    if-ne v7, v8, :cond_149

    .line 272
    iget-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    invoke-virtual {v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v4

    .line 274
    :cond_149
    sget-object v7, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    iput-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    .line 275
    if-eqz v4, :cond_160

    .line 276
    iget-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    invoke-virtual {v4, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    .line 277
    invoke-virtual {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    .line 279
    :cond_160
    iget v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit16 v7, v7, 0x200

    iput v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    goto/16 :goto_d

    .line 283
    .end local v4           #subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    :sswitch_168
    const/4 v4, 0x0

    .line 284
    .local v4, subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;
    iget v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v7, v7, 0x400

    const/16 v8, 0x400

    if-ne v7, v8, :cond_177

    .line 285
    iget-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    invoke-virtual {v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    move-result-object v4

    .line 287
    :cond_177
    sget-object v7, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    iput-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    .line 288
    if-eqz v4, :cond_18e

    .line 289
    iget-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    invoke-virtual {v4, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    .line 290
    invoke-virtual {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    .line 292
    :cond_18e
    iget v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit16 v7, v7, 0x400

    iput v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    goto/16 :goto_d

    .line 296
    .end local v4           #subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;
    :sswitch_196
    const/4 v4, 0x0

    .line 297
    .local v4, subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    iget v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v7, v7, 0x800

    const/16 v8, 0x800

    if-ne v7, v8, :cond_1a5

    .line 298
    iget-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    invoke-virtual {v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v4

    .line 300
    :cond_1a5
    sget-object v7, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    iput-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    .line 301
    if-eqz v4, :cond_1bc

    .line 302
    iget-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    invoke-virtual {v4, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    .line 303
    invoke-virtual {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    .line 305
    :cond_1bc
    iget v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit16 v7, v7, 0x800

    iput v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I
    :try_end_1c2
    .catchall {:try_start_5a .. :try_end_1c2} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5a .. :try_end_1c2} :catch_33
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_1c2} :catch_4b

    goto/16 :goto_d

    .line 316
    .end local v4           #subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .end local v5           #tag:I
    :cond_1c4
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->makeExtensionsImmutable()V

    .line 318
    return-void

    .line 177
    :sswitch_data_1c8
    .sparse-switch
        0x0 -> :sswitch_1e
        0x10 -> :sswitch_20
        0x1a -> :sswitch_3e
        0x22 -> :sswitch_5a
        0x2a -> :sswitch_67
        0x322 -> :sswitch_74
        0x32a -> :sswitch_a2
        0x332 -> :sswitch_d0
        0x33a -> :sswitch_de
        0x342 -> :sswitch_10c
        0x34a -> :sswitch_13a
        0x352 -> :sswitch_168
        0x35a -> :sswitch_196
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 153
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 650
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    .line 736
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedSerializedSize:I

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 156
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 650
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    .line 736
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedSerializedSize:I

    .line 156
    return-void
.end method

.method static synthetic access$1002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->actionLiteral_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->actionLiteral_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->query_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->query_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->sentence_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->sentence_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->phoneNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->phoneNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .registers 1

    .prologue
    .line 160
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 637
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->CALL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 638
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->actionLiteral_:Ljava/lang/Object;

    .line 639
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->query_:Ljava/lang/Object;

    .line 640
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->sentence_:Ljava/lang/Object;

    .line 641
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    .line 642
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    .line 643
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->phoneNumber_:Ljava/lang/Object;

    .line 644
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    .line 645
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    .line 646
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    .line 647
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    .line 648
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    .line 649
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .registers 1

    .prologue
    .line 853
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->access$100()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 856
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    return-object v0
.end method

.method public getActionLiteralBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 456
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->actionLiteral_:Ljava/lang/Object;

    .line 457
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 458
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 460
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->actionLiteral_:Ljava/lang/Object;

    .line 463
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

.method public getBusinessInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .registers 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    return-object v0
.end method

.method public getContactsInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    .registers 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .registers 2

    .prologue
    .line 164
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    return-object v0
.end method

.method public getGoToInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .registers 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    return-object v0
.end method

.method public getIntent()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .registers 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    return-object v0
.end method

.method public getMapsInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;
    .registers 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    return-object v0
.end method

.method public getMultislotActionInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    .registers 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 560
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->phoneNumber_:Ljava/lang/Object;

    .line 561
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 562
    check-cast v1, Ljava/lang/String;

    .line 570
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 564
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 566
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 568
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->phoneNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 570
    goto :goto_8
.end method

.method public getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 575
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->phoneNumber_:Ljava/lang/Object;

    .line 576
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 577
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 579
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->phoneNumber_:Ljava/lang/Object;

    .line 582
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

.method public getQuery()Ljava/lang/String;
    .registers 5

    .prologue
    .line 474
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->query_:Ljava/lang/Object;

    .line 475
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 476
    check-cast v1, Ljava/lang/String;

    .line 484
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 478
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 480
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 482
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->query_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 484
    goto :goto_8
.end method

.method public getQueryBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 489
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->query_:Ljava/lang/Object;

    .line 490
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 491
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 493
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->query_:Ljava/lang/Object;

    .line 496
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

.method public getSentenceBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 522
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->sentence_:Ljava/lang/Object;

    .line 523
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 524
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 526
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->sentence_:Ljava/lang/Object;

    .line 529
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

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 738
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedSerializedSize:I

    .line 739
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 791
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 741
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 742
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 743
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 746
    :cond_1c
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_2c

    .line 747
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 750
    :cond_2c
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_3b

    .line 751
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getActionLiteralBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 754
    :cond_3b
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4d

    .line 755
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getSentenceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 758
    :cond_4d
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5e

    .line 759
    const/16 v2, 0x64

    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 762
    :cond_5e
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6f

    .line 763
    const/16 v2, 0x65

    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 766
    :cond_6f
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_82

    .line 767
    const/16 v2, 0x66

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 770
    :cond_82
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_93

    .line 771
    const/16 v2, 0x67

    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 774
    :cond_93
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_a4

    .line 775
    const/16 v2, 0x68

    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 778
    :cond_a4
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_b5

    .line 779
    const/16 v2, 0x69

    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 782
    :cond_b5
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_c6

    .line 783
    const/16 v2, 0x6a

    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 786
    :cond_c6
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_d7

    .line 787
    const/16 v2, 0x6b

    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 790
    :cond_d7
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedSerializedSize:I

    move v1, v0

    .line 791
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_8
.end method

.method public getWebsearchInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    return-object v0
.end method

.method public hasAction()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 428
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasActionLiteral()Z
    .registers 3

    .prologue
    .line 438
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

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

.method public hasBusinessInfo()Z
    .registers 3

    .prologue
    .line 610
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

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

.method public hasContactsInfo()Z
    .registers 3

    .prologue
    .line 547
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

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

.method public hasGoToInfo()Z
    .registers 3

    .prologue
    .line 630
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

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

.method public hasIntent()Z
    .registers 3

    .prologue
    .line 590
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

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

.method public hasMapsInfo()Z
    .registers 3

    .prologue
    .line 537
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

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

.method public hasMultislotActionInfo()Z
    .registers 3

    .prologue
    .line 620
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

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

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 557
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

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

.method public hasQuery()Z
    .registers 3

    .prologue
    .line 471
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

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

.method public hasSentence()Z
    .registers 3

    .prologue
    .line 504
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

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

.method public hasWebsearchInfo()Z
    .registers 3

    .prologue
    .line 600
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 652
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    .line 653
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 692
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 653
    goto :goto_9

    .line 655
    :cond_d
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasMapsInfo()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 656
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getMapsInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 657
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    goto :goto_a

    .line 661
    :cond_20
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasContactsInfo()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 662
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getContactsInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_33

    .line 663
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    goto :goto_a

    .line 667
    :cond_33
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasIntent()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 668
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getIntent()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_46

    .line 669
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    goto :goto_a

    .line 673
    :cond_46
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasWebsearchInfo()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 674
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getWebsearchInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_59

    .line 675
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    goto :goto_a

    .line 679
    :cond_59
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasBusinessInfo()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 680
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getBusinessInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6c

    .line 681
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    goto :goto_a

    .line 685
    :cond_6c
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasMultislotActionInfo()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 686
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getMultislotActionInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_7f

    .line 687
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    goto :goto_a

    .line 691
    :cond_7f
    iput-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    move v2, v1

    .line 692
    goto :goto_a
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .registers 2

    .prologue
    .line 854
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .registers 2

    .prologue
    .line 858
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 797
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 697
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getSerializedSize()I

    .line 698
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 699
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 701
    :cond_15
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_23

    .line 702
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 704
    :cond_23
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_30

    .line 705
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getActionLiteralBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 707
    :cond_30
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_40

    .line 708
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getSentenceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 710
    :cond_40
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4f

    .line 711
    const/16 v0, 0x64

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 713
    :cond_4f
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5e

    .line 714
    const/16 v0, 0x65

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 716
    :cond_5e
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6f

    .line 717
    const/16 v0, 0x66

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 719
    :cond_6f
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7e

    .line 720
    const/16 v0, 0x67

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 722
    :cond_7e
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8d

    .line 723
    const/16 v0, 0x68

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 725
    :cond_8d
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9c

    .line 726
    const/16 v0, 0x69

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 728
    :cond_9c
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_ab

    .line 729
    const/16 v0, 0x6a

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 731
    :cond_ab
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_ba

    .line 732
    const/16 v0, 0x6b

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 734
    :cond_ba
    return-void
.end method
