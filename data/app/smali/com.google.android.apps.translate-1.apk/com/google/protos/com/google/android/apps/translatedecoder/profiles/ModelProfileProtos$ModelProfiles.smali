.class public final Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ModelProfileProtos.java"

# interfaces
.implements Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfilesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModelProfiles"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;,
        Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;,
        Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfileOrBuilder;,
        Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;,
        Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfileOrBuilder;,
        Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;,
        Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfileOrBuilder;
    }
.end annotation


# static fields
.field public static final COMMONPROFILE_FIELD_NUMBER:I = 0x1

.field public static final LANGUAGEPAIRPROFILES_FIELD_NUMBER:I = 0x2

.field public static final LANGUAGEPROFILES_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;


# instance fields
.field private bitField0_:I

.field private commonProfile_:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

.field private languagePairProfiles_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;",
            ">;"
        }
    .end annotation
.end field

.field private languageProfiles_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 116
    new-instance v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$1;

    invoke-direct {v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$1;-><init>()V

    sput-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->PARSER:Lcom/google/protobuf/Parser;

    .line 2850
    new-instance v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;-><init>(Z)V

    sput-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->defaultInstance:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    .line 2851
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->defaultInstance:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    invoke-direct {v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->initFields()V

    .line 2852
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
    const/4 v5, -0x1

    const/4 v8, 0x4

    const/4 v7, 0x2

    .line 52
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2359
    iput-byte v5, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->memoizedIsInitialized:B

    .line 2402
    iput v5, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->memoizedSerializedSize:I

    .line 53
    invoke-direct {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->initFields()V

    .line 54
    const/4 v2, 0x0

    .line 56
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 57
    .local v0, done:Z
    :cond_f
    :goto_f
    if-nez v0, :cond_b3

    .line 58
    :try_start_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 59
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_d0

    .line 64
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_f

    .line 66
    const/4 v0, 0x1

    goto :goto_f

    .line 61
    :sswitch_20
    const/4 v0, 0x1

    .line 62
    goto :goto_f

    .line 71
    :sswitch_22
    const/4 v3, 0x0

    .line 72
    .local v3, subBuilder:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;
    iget v5, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_30

    .line 73
    iget-object v5, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->commonProfile_:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    invoke-virtual {v5}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->toBuilder()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

    move-result-object v3

    .line 75
    :cond_30
    sget-object v5, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    iput-object v5, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->commonProfile_:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    .line 76
    if-eqz v3, :cond_47

    .line 77
    iget-object v5, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->commonProfile_:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    invoke-virtual {v3, v5}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->mergeFrom(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

    .line 78
    invoke-virtual {v3}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->buildPartial()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->commonProfile_:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    .line 80
    :cond_47
    iget v5, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->bitField0_:I
    :try_end_4d
    .catchall {:try_start_11 .. :try_end_4d} :catchall_54
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_11 .. :try_end_4d} :catch_4e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_4d} :catch_8a

    goto :goto_f

    .line 101
    .end local v3           #subBuilder:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;
    .end local v4           #tag:I
    :catch_4e
    move-exception v1

    .line 102
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4f
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_54

    .line 107
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_54
    move-exception v5

    and-int/lit8 v6, v2, 0x2

    if-ne v6, v7, :cond_61

    .line 108
    iget-object v6, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languagePairProfiles_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languagePairProfiles_:Ljava/util/List;

    .line 110
    :cond_61
    and-int/lit8 v6, v2, 0x4

    if-ne v6, v8, :cond_6d

    .line 111
    iget-object v6, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languageProfiles_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languageProfiles_:Ljava/util/List;

    .line 113
    :cond_6d
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->makeExtensionsImmutable()V

    throw v5

    .line 84
    .restart local v4       #tag:I
    :sswitch_71
    and-int/lit8 v5, v2, 0x2

    if-eq v5, v7, :cond_7e

    .line 85
    :try_start_75
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languagePairProfiles_:Ljava/util/List;

    .line 86
    or-int/lit8 v2, v2, 0x2

    .line 88
    :cond_7e
    iget-object v5, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languagePairProfiles_:Ljava/util/List;

    sget-object v6, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_89
    .catchall {:try_start_75 .. :try_end_89} :catchall_54
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_75 .. :try_end_89} :catch_4e
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_89} :catch_8a

    goto :goto_f

    .line 103
    .end local v4           #tag:I
    :catch_8a
    move-exception v1

    .line 104
    .local v1, e:Ljava/io/IOException;
    :try_start_8b
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_99
    .catchall {:try_start_8b .. :try_end_99} :catchall_54

    .line 92
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_99
    and-int/lit8 v5, v2, 0x4

    if-eq v5, v8, :cond_a6

    .line 93
    :try_start_9d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languageProfiles_:Ljava/util/List;

    .line 94
    or-int/lit8 v2, v2, 0x4

    .line 96
    :cond_a6
    iget-object v5, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languageProfiles_:Ljava/util/List;

    sget-object v6, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b1
    .catchall {:try_start_9d .. :try_end_b1} :catchall_54
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_9d .. :try_end_b1} :catch_4e
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_b1} :catch_8a

    goto/16 :goto_f

    .line 107
    .end local v4           #tag:I
    :cond_b3
    and-int/lit8 v5, v2, 0x2

    if-ne v5, v7, :cond_bf

    .line 108
    iget-object v5, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languagePairProfiles_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languagePairProfiles_:Ljava/util/List;

    .line 110
    :cond_bf
    and-int/lit8 v5, v2, 0x4

    if-ne v5, v8, :cond_cb

    .line 111
    iget-object v5, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languageProfiles_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languageProfiles_:Ljava/util/List;

    .line 113
    :cond_cb
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->makeExtensionsImmutable()V

    .line 115
    return-void

    .line 59
    nop

    :sswitch_data_d0
    .sparse-switch
        0x0 -> :sswitch_20
        0xa -> :sswitch_22
        0x12 -> :sswitch_71
        0x1a -> :sswitch_99
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$1;)V
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
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2359
    iput-byte v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->memoizedIsInitialized:B

    .line 2402
    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->memoizedSerializedSize:I

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2359
    iput-byte v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->memoizedIsInitialized:B

    .line 2402
    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->memoizedSerializedSize:I

    .line 38
    return-void
.end method

.method static synthetic access$2802(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->commonProfile_:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languagePairProfiles_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languagePairProfiles_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languageProfiles_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languageProfiles_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->defaultInstance:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 2355
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->getDefaultInstance()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->commonProfile_:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    .line 2356
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languagePairProfiles_:Ljava/util/List;

    .line 2357
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languageProfiles_:Ljava/util/List;

    .line 2358
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;
    .registers 1

    .prologue
    .line 2483
    #calls: Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;->create()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;->access$2600()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2486
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->newBuilder()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;->mergeFrom(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2463
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2469
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2433
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2439
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2474
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2480
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2453
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2459
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2443
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2449
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    return-object v0
.end method


# virtual methods
.method public getCommonProfile()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;
    .registers 2

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->commonProfile_:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->getDefaultInstanceForType()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
    .registers 2

    .prologue
    .line 46
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->defaultInstance:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    return-object v0
.end method

.method public getLanguagePairProfiles(I)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;
    .registers 3
    .parameter "index"

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languagePairProfiles_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    return-object v0
.end method

.method public getLanguagePairProfilesCount()I
    .registers 2

    .prologue
    .line 2323
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languagePairProfiles_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLanguagePairProfilesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languagePairProfiles_:Ljava/util/List;

    return-object v0
.end method

.method public getLanguagePairProfilesOrBuilder(I)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfileOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2330
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languagePairProfiles_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfileOrBuilder;

    return-object v0
.end method

.method public getLanguagePairProfilesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfileOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languagePairProfiles_:Ljava/util/List;

    return-object v0
.end method

.method public getLanguageProfiles(I)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;
    .registers 3
    .parameter "index"

    .prologue
    .line 2347
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languageProfiles_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;

    return-object v0
.end method

.method public getLanguageProfilesCount()I
    .registers 2

    .prologue
    .line 2344
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languageProfiles_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLanguageProfilesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languageProfiles_:Ljava/util/List;

    return-object v0
.end method

.method public getLanguageProfilesOrBuilder(I)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfileOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2351
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languageProfiles_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfileOrBuilder;

    return-object v0
.end method

.method public getLanguageProfilesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfileOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2341
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languageProfiles_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 2404
    iget v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->memoizedSerializedSize:I

    .line 2405
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 2421
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 2407
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 2408
    iget v3, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_16

    .line 2409
    iget-object v3, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->commonProfile_:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2412
    :cond_16
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    iget-object v3, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languagePairProfiles_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_30

    .line 2413
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languagePairProfiles_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2412
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 2416
    :cond_30
    const/4 v0, 0x0

    :goto_31
    iget-object v3, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languageProfiles_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4a

    .line 2417
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languageProfiles_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2416
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 2420
    :cond_4a
    iput v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->memoizedSerializedSize:I

    move v2, v1

    .line 2421
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public hasCommonProfile()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2306
    iget v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2361
    iget-byte v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->memoizedIsInitialized:B

    .line 2362
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_d

    if-ne v1, v2, :cond_b

    :goto_9
    move v3, v2

    .line 2385
    :goto_a
    return v3

    :cond_b
    move v2, v3

    .line 2362
    goto :goto_9

    .line 2364
    :cond_d
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->hasCommonProfile()Z

    move-result v4

    if-nez v4, :cond_16

    .line 2365
    iput-byte v3, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->memoizedIsInitialized:B

    goto :goto_a

    .line 2368
    :cond_16
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->getCommonProfile()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_23

    .line 2369
    iput-byte v3, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->memoizedIsInitialized:B

    goto :goto_a

    .line 2372
    :cond_23
    const/4 v0, 0x0

    .local v0, i:I
    :goto_24
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->getLanguagePairProfilesCount()I

    move-result v4

    if-ge v0, v4, :cond_3a

    .line 2373
    invoke-virtual {p0, v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->getLanguagePairProfiles(I)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_37

    .line 2374
    iput-byte v3, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->memoizedIsInitialized:B

    goto :goto_a

    .line 2372
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 2378
    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->getLanguageProfilesCount()I

    move-result v4

    if-ge v0, v4, :cond_51

    .line 2379
    invoke-virtual {p0, v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->getLanguageProfiles(I)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_4e

    .line 2380
    iput-byte v3, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->memoizedIsInitialized:B

    goto :goto_a

    .line 2378
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 2384
    :cond_51
    iput-byte v2, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->memoizedIsInitialized:B

    move v3, v2

    .line 2385
    goto :goto_a
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->newBuilderForType()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;
    .registers 2

    .prologue
    .line 2484
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->newBuilder()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->toBuilder()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;
    .registers 2

    .prologue
    .line 2488
    invoke-static {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->newBuilder(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;

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
    .line 2427
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 2390
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->getSerializedSize()I

    .line 2391
    iget v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_f

    .line 2392
    iget-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->commonProfile_:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2394
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    iget-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languagePairProfiles_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 2395
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languagePairProfiles_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2394
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2397
    :cond_27
    const/4 v0, 0x0

    :goto_28
    iget-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languageProfiles_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 2398
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->languageProfiles_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2397
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 2400
    :cond_3f
    return-void
.end method
