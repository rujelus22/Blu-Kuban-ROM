.class public final Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ModelProfileProtos.java"

# interfaces
.implements Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfileOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LanguageProfile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;
    }
.end annotation


# static fields
.field public static final LANGCODE_FIELD_NUMBER:I = 0x1

.field public static final LMFILE_FIELD_NUMBER:I = 0x3

.field public static final LMSYMBOLFILE_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;


# instance fields
.field private bitField0_:I

.field private langCode_:Ljava/lang/Object;

.field private lmFile_:Ljava/lang/Object;

.field private lmSymbolFile_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 785
    new-instance v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$1;

    invoke-direct {v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$1;-><init>()V

    sput-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->PARSER:Lcom/google/protobuf/Parser;

    .line 1364
    new-instance v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;-><init>(Z)V

    sput-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->defaultInstance:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;

    .line 1365
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->defaultInstance:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;

    invoke-direct {v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->initFields()V

    .line 1366
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 736
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 916
    iput-byte v4, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->memoizedIsInitialized:B

    .line 958
    iput v4, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->memoizedSerializedSize:I

    .line 737
    invoke-direct {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->initFields()V

    .line 738
    const/4 v2, 0x0

    .line 740
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 741
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_6e

    .line 742
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 743
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_72

    .line 748
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 750
    const/4 v0, 0x1

    goto :goto_d

    .line 745
    :sswitch_1e
    const/4 v0, 0x1

    .line 746
    goto :goto_d

    .line 755
    :sswitch_20
    iget v4, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->bitField0_:I

    .line 756
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->langCode_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 776
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 777
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 782
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->makeExtensionsImmutable()V

    throw v4

    .line 760
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->bitField0_:I

    .line 761
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->lmSymbolFile_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 778
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 779
    .local v1, e:Ljava/io/IOException;
    :try_start_46
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_33

    .line 765
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->bitField0_:I

    .line 766
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->lmFile_:Ljava/lang/Object;

    goto :goto_d

    .line 770
    :sswitch_61
    iget v4, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->bitField0_:I

    .line 771
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->version_:I
    :try_end_6d
    .catchall {:try_start_54 .. :try_end_6d} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_6d} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_6d} :catch_45

    goto :goto_d

    .line 782
    .end local v3           #tag:I
    :cond_6e
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->makeExtensionsImmutable()V

    .line 784
    return-void

    .line 743
    :sswitch_data_72
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_38
        0x1a -> :sswitch_54
        0x20 -> :sswitch_61
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
    .line 714
    invoke-direct {p0, p1, p2}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 719
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 916
    iput-byte v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->memoizedIsInitialized:B

    .line 958
    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->memoizedSerializedSize:I

    .line 721
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 714
    invoke-direct {p0, p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 722
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 916
    iput-byte v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->memoizedIsInitialized:B

    .line 958
    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->memoizedSerializedSize:I

    .line 722
    return-void
.end method

.method static synthetic access$1100(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->langCode_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 714
    iput-object p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->langCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->lmSymbolFile_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 714
    iput-object p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->lmSymbolFile_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->lmFile_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 714
    iput-object p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->lmFile_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 714
    iput p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->version_:I

    return p1
.end method

.method static synthetic access$1502(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 714
    iput p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;
    .registers 1

    .prologue
    .line 726
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->defaultInstance:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 911
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->langCode_:Ljava/lang/Object;

    .line 912
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->lmSymbolFile_:Ljava/lang/Object;

    .line 913
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->lmFile_:Ljava/lang/Object;

    .line 914
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->version_:I

    .line 915
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;
    .registers 1

    .prologue
    .line 1043
    #calls: Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;->create()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;->access$900()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1046
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->newBuilder()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;->mergeFrom(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1023
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1029
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 993
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 999
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1034
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1040
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1013
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1019
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1003
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1009
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->getDefaultInstanceForType()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;
    .registers 2

    .prologue
    .line 730
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->defaultInstance:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;

    return-object v0
.end method

.method public getLangCode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 808
    iget-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->langCode_:Ljava/lang/Object;

    .line 809
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 810
    check-cast v1, Ljava/lang/String;

    .line 818
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 812
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 814
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 815
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 816
    iput-object v2, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->langCode_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 818
    goto :goto_8
.end method

.method public getLangCodeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 823
    iget-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->langCode_:Ljava/lang/Object;

    .line 824
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 825
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 827
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->langCode_:Ljava/lang/Object;

    .line 830
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

.method public getLmFile()Ljava/lang/String;
    .registers 5

    .prologue
    .line 874
    iget-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->lmFile_:Ljava/lang/Object;

    .line 875
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 876
    check-cast v1, Ljava/lang/String;

    .line 884
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 878
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 880
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 881
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 882
    iput-object v2, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->lmFile_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 884
    goto :goto_8
.end method

.method public getLmFileBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 889
    iget-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->lmFile_:Ljava/lang/Object;

    .line 890
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 891
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 893
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->lmFile_:Ljava/lang/Object;

    .line 896
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

.method public getLmSymbolFile()Ljava/lang/String;
    .registers 5

    .prologue
    .line 841
    iget-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->lmSymbolFile_:Ljava/lang/Object;

    .line 842
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 843
    check-cast v1, Ljava/lang/String;

    .line 851
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 845
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 847
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 848
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 849
    iput-object v2, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->lmSymbolFile_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 851
    goto :goto_8
.end method

.method public getLmSymbolFileBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 856
    iget-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->lmSymbolFile_:Ljava/lang/Object;

    .line 857
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 858
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 860
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->lmSymbolFile_:Ljava/lang/Object;

    .line 863
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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 797
    sget-object v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 960
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->memoizedSerializedSize:I

    .line 961
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 981
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 963
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 964
    iget v2, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 965
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->getLangCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 968
    :cond_1a
    iget v2, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 969
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->getLmSymbolFileBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 972
    :cond_29
    iget v2, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 973
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->getLmFileBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 976
    :cond_39
    iget v2, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 977
    iget v2, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->version_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 980
    :cond_48
    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->memoizedSerializedSize:I

    move v1, v0

    .line 981
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 907
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->version_:I

    return v0
.end method

.method public hasLangCode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 805
    iget v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLmFile()Z
    .registers 3

    .prologue
    .line 871
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->bitField0_:I

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

.method public hasLmSymbolFile()Z
    .registers 3

    .prologue
    .line 838
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->bitField0_:I

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

.method public hasVersion()Z
    .registers 3

    .prologue
    .line 904
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 918
    iget-byte v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->memoizedIsInitialized:B

    .line 919
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 938
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 919
    goto :goto_9

    .line 921
    :cond_d
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->hasLangCode()Z

    move-result v3

    if-nez v3, :cond_16

    .line 922
    iput-byte v2, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->memoizedIsInitialized:B

    goto :goto_a

    .line 925
    :cond_16
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->hasLmSymbolFile()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 926
    iput-byte v2, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->memoizedIsInitialized:B

    goto :goto_a

    .line 929
    :cond_1f
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->hasLmFile()Z

    move-result v3

    if-nez v3, :cond_28

    .line 930
    iput-byte v2, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->memoizedIsInitialized:B

    goto :goto_a

    .line 933
    :cond_28
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->hasVersion()Z

    move-result v3

    if-nez v3, :cond_31

    .line 934
    iput-byte v2, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->memoizedIsInitialized:B

    goto :goto_a

    .line 937
    :cond_31
    iput-byte v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->memoizedIsInitialized:B

    move v2, v1

    .line 938
    goto :goto_a
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->newBuilderForType()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;
    .registers 2

    .prologue
    .line 1044
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->newBuilder()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->toBuilder()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;
    .registers 2

    .prologue
    .line 1048
    invoke-static {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->newBuilder(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;

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
    .line 987
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

    const/4 v1, 0x1

    .line 943
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->getSerializedSize()I

    .line 944
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 945
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->getLangCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 947
    :cond_13
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 948
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->getLmSymbolFileBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 950
    :cond_20
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 951
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->getLmFileBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 953
    :cond_2e
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 954
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->version_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 956
    :cond_3b
    return-void
.end method
