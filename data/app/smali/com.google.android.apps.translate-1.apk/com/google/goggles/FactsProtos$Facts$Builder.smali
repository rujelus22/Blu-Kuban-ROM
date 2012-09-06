.class public final Lcom/google/goggles/FactsProtos$Facts$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FactsProtos.java"

# interfaces
.implements Lcom/google/goggles/FactsProtos$FactsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/FactsProtos$Facts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/FactsProtos$Facts;",
        "Lcom/google/goggles/FactsProtos$Facts$Builder;",
        ">;",
        "Lcom/google/goggles/FactsProtos$FactsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private experimental_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/FactsProtos$Fact;",
            ">;"
        }
    .end annotation
.end field

.field private primary_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/FactsProtos$Fact;",
            ">;"
        }
    .end annotation
.end field

.field private secondary_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/FactsProtos$Fact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 882
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1031
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    .line 1120
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    .line 1209
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    .line 883
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->maybeForceBuilderInitialization()V

    .line 884
    return-void
.end method

.method static synthetic access$800(Lcom/google/goggles/FactsProtos$Facts$Builder;)Lcom/google/goggles/FactsProtos$Facts;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 877
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 1

    .prologue
    .line 877
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts$Builder;->create()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/FactsProtos$Facts;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->buildPartial()Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    .line 922
    invoke-virtual {v0}, Lcom/google/goggles/FactsProtos$Facts;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 923
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 926
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 1

    .prologue
    .line 889
    new-instance v0, Lcom/google/goggles/FactsProtos$Facts$Builder;

    invoke-direct {v0}, Lcom/google/goggles/FactsProtos$Facts$Builder;-><init>()V

    return-object v0
.end method

.method private ensureExperimentalIsMutable()V
    .registers 3

    .prologue
    .line 1212
    iget v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 1213
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    .line 1214
    iget v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    .line 1216
    :cond_16
    return-void
.end method

.method private ensurePrimaryIsMutable()V
    .registers 3

    .prologue
    .line 1034
    iget v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 1035
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    .line 1036
    iget v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    .line 1038
    :cond_16
    return-void
.end method

.method private ensureSecondaryIsMutable()V
    .registers 3

    .prologue
    .line 1123
    iget v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 1124
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    .line 1125
    iget v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    .line 1127
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 887
    return-void
.end method


# virtual methods
.method public addAllExperimental(Ljava/lang/Iterable;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/FactsProtos$Fact;",
            ">;)",
            "Lcom/google/goggles/FactsProtos$Facts$Builder;"
        }
    .end annotation

    .prologue
    .line 1279
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensureExperimentalIsMutable()V

    .line 1280
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1282
    return-object p0
.end method

.method public addAllPrimary(Ljava/lang/Iterable;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/FactsProtos$Fact;",
            ">;)",
            "Lcom/google/goggles/FactsProtos$Facts$Builder;"
        }
    .end annotation

    .prologue
    .line 1101
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensurePrimaryIsMutable()V

    .line 1102
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1104
    return-object p0
.end method

.method public addAllSecondary(Ljava/lang/Iterable;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/FactsProtos$Fact;",
            ">;)",
            "Lcom/google/goggles/FactsProtos$Facts$Builder;"
        }
    .end annotation

    .prologue
    .line 1190
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensureSecondaryIsMutable()V

    .line 1191
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1193
    return-object p0
.end method

.method public addExperimental(ILcom/google/goggles/FactsProtos$Fact$Builder;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1272
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensureExperimentalIsMutable()V

    .line 1273
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/FactsProtos$Fact$Builder;->build()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1275
    return-object p0
.end method

.method public addExperimental(ILcom/google/goggles/FactsProtos$Fact;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1255
    if-nez p2, :cond_8

    .line 1256
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1258
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensureExperimentalIsMutable()V

    .line 1259
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1261
    return-object p0
.end method

.method public addExperimental(Lcom/google/goggles/FactsProtos$Fact$Builder;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1265
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensureExperimentalIsMutable()V

    .line 1266
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/FactsProtos$Fact$Builder;->build()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1268
    return-object p0
.end method

.method public addExperimental(Lcom/google/goggles/FactsProtos$Fact;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1245
    if-nez p1, :cond_8

    .line 1246
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1248
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensureExperimentalIsMutable()V

    .line 1249
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    return-object p0
.end method

.method public addPrimary(ILcom/google/goggles/FactsProtos$Fact$Builder;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1094
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensurePrimaryIsMutable()V

    .line 1095
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/FactsProtos$Fact$Builder;->build()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1097
    return-object p0
.end method

.method public addPrimary(ILcom/google/goggles/FactsProtos$Fact;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1077
    if-nez p2, :cond_8

    .line 1078
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1080
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensurePrimaryIsMutable()V

    .line 1081
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1083
    return-object p0
.end method

.method public addPrimary(Lcom/google/goggles/FactsProtos$Fact$Builder;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1087
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensurePrimaryIsMutable()V

    .line 1088
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/FactsProtos$Fact$Builder;->build()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    return-object p0
.end method

.method public addPrimary(Lcom/google/goggles/FactsProtos$Fact;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1067
    if-nez p1, :cond_8

    .line 1068
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1070
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensurePrimaryIsMutable()V

    .line 1071
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1073
    return-object p0
.end method

.method public addSecondary(ILcom/google/goggles/FactsProtos$Fact$Builder;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1183
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensureSecondaryIsMutable()V

    .line 1184
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/FactsProtos$Fact$Builder;->build()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1186
    return-object p0
.end method

.method public addSecondary(ILcom/google/goggles/FactsProtos$Fact;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1166
    if-nez p2, :cond_8

    .line 1167
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1169
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensureSecondaryIsMutable()V

    .line 1170
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1172
    return-object p0
.end method

.method public addSecondary(Lcom/google/goggles/FactsProtos$Fact$Builder;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1176
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensureSecondaryIsMutable()V

    .line 1177
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/FactsProtos$Fact$Builder;->build()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1179
    return-object p0
.end method

.method public addSecondary(Lcom/google/goggles/FactsProtos$Fact;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1156
    if-nez p1, :cond_8

    .line 1157
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1159
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensureSecondaryIsMutable()V

    .line 1160
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    return-object p0
.end method

.method public build()Lcom/google/goggles/FactsProtos$Facts;
    .registers 3

    .prologue
    .line 912
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->buildPartial()Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    .line 913
    invoke-virtual {v0}, Lcom/google/goggles/FactsProtos$Facts;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 914
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 916
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->build()Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/FactsProtos$Facts;
    .registers 4

    .prologue
    .line 930
    new-instance v0, Lcom/google/goggles/FactsProtos$Facts;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/goggles/FactsProtos$Facts;-><init>(Lcom/google/goggles/FactsProtos$Facts$Builder;Lcom/google/goggles/FactsProtos$1;)V

    .line 931
    iget v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    .line 932
    iget v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 933
    iget-object v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    .line 934
    iget v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    .line 936
    :cond_1d
    iget-object v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    #setter for: Lcom/google/goggles/FactsProtos$Facts;->primary_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/goggles/FactsProtos$Facts;->access$1102(Lcom/google/goggles/FactsProtos$Facts;Ljava/util/List;)Ljava/util/List;

    .line 937
    iget v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_37

    .line 938
    iget-object v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    .line 939
    iget v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    .line 941
    :cond_37
    iget-object v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    #setter for: Lcom/google/goggles/FactsProtos$Facts;->secondary_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/goggles/FactsProtos$Facts;->access$1202(Lcom/google/goggles/FactsProtos$Facts;Ljava/util/List;)Ljava/util/List;

    .line 942
    iget v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_51

    .line 943
    iget-object v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    .line 944
    iget v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    .line 946
    :cond_51
    iget-object v1, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    #setter for: Lcom/google/goggles/FactsProtos$Facts;->experimental_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/goggles/FactsProtos$Facts;->access$1302(Lcom/google/goggles/FactsProtos$Facts;Ljava/util/List;)Ljava/util/List;

    .line 947
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->buildPartial()Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 2

    .prologue
    .line 893
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 894
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    .line 895
    iget v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    .line 896
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    .line 897
    iget v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    .line 898
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    .line 899
    iget v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    .line 900
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->clear()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->clear()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearExperimental()Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 2

    .prologue
    .line 1285
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    .line 1286
    iget v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    .line 1288
    return-object p0
.end method

.method public clearPrimary()Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 2

    .prologue
    .line 1107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    .line 1108
    iget v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    .line 1110
    return-object p0
.end method

.method public clearSecondary()Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 2

    .prologue
    .line 1196
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    .line 1197
    iget v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    .line 1199
    return-object p0
.end method

.method public clone()Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 3

    .prologue
    .line 904
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts$Builder;->create()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->buildPartial()Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/FactsProtos$Facts$Builder;->mergeFrom(Lcom/google/goggles/FactsProtos$Facts;)Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->clone()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->clone()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->clone()Lcom/google/goggles/FactsProtos$Facts$Builder;

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
    .line 877
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->clone()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/FactsProtos$Facts;
    .registers 2

    .prologue
    .line 908
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts;->getDefaultInstance()Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->getDefaultInstanceForType()Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->getDefaultInstanceForType()Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    return-object v0
.end method

.method public getExperimental(I)Lcom/google/goggles/FactsProtos$Fact;
    .registers 3
    .parameter

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$Fact;

    return-object v0
.end method

.method public getExperimentalCount()I
    .registers 2

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExperimentalList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/FactsProtos$Fact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrimary(I)Lcom/google/goggles/FactsProtos$Fact;
    .registers 3
    .parameter

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$Fact;

    return-object v0
.end method

.method public getPrimaryCount()I
    .registers 2

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPrimaryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/FactsProtos$Fact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSecondary(I)Lcom/google/goggles/FactsProtos$Fact;
    .registers 3
    .parameter

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$Fact;

    return-object v0
.end method

.method public getSecondaryCount()I
    .registers 2

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSecondaryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/FactsProtos$Fact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 986
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/FactsProtos$Facts;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 4
    .parameter

    .prologue
    .line 951
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts;->getDefaultInstance()Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 982
    :cond_6
    :goto_6
    return-object p0

    .line 952
    :cond_7
    #getter for: Lcom/google/goggles/FactsProtos$Facts;->primary_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/FactsProtos$Facts;->access$1100(Lcom/google/goggles/FactsProtos$Facts;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 953
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 954
    #getter for: Lcom/google/goggles/FactsProtos$Facts;->primary_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/FactsProtos$Facts;->access$1100(Lcom/google/goggles/FactsProtos$Facts;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    .line 955
    iget v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    .line 962
    :cond_25
    :goto_25
    #getter for: Lcom/google/goggles/FactsProtos$Facts;->secondary_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/FactsProtos$Facts;->access$1200(Lcom/google/goggles/FactsProtos$Facts;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 963
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 964
    #getter for: Lcom/google/goggles/FactsProtos$Facts;->secondary_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/FactsProtos$Facts;->access$1200(Lcom/google/goggles/FactsProtos$Facts;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    .line 965
    iget v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    .line 972
    :cond_43
    :goto_43
    #getter for: Lcom/google/goggles/FactsProtos$Facts;->experimental_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/FactsProtos$Facts;->access$1300(Lcom/google/goggles/FactsProtos$Facts;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 973
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 974
    #getter for: Lcom/google/goggles/FactsProtos$Facts;->experimental_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/FactsProtos$Facts;->access$1300(Lcom/google/goggles/FactsProtos$Facts;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    .line 975
    iget v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->bitField0_:I

    goto :goto_6

    .line 957
    :cond_62
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensurePrimaryIsMutable()V

    .line 958
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    #getter for: Lcom/google/goggles/FactsProtos$Facts;->primary_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/FactsProtos$Facts;->access$1100(Lcom/google/goggles/FactsProtos$Facts;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 967
    :cond_6f
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensureSecondaryIsMutable()V

    .line 968
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    #getter for: Lcom/google/goggles/FactsProtos$Facts;->secondary_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/FactsProtos$Facts;->access$1200(Lcom/google/goggles/FactsProtos$Facts;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_43

    .line 977
    :cond_7c
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensureExperimentalIsMutable()V

    .line 978
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    #getter for: Lcom/google/goggles/FactsProtos$Facts;->experimental_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/FactsProtos$Facts;->access$1300(Lcom/google/goggles/FactsProtos$Facts;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 994
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 995
    sparse-switch v0, :sswitch_data_3c

    .line 1000
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1002
    :sswitch_d
    return-object p0

    .line 1007
    :sswitch_e
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact;->newBuilder()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    .line 1008
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1009
    invoke-virtual {v0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->buildPartial()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->addPrimary(Lcom/google/goggles/FactsProtos$Fact;)Lcom/google/goggles/FactsProtos$Facts$Builder;

    goto :goto_0

    .line 1013
    :sswitch_1d
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact;->newBuilder()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    .line 1014
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1015
    invoke-virtual {v0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->buildPartial()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->addSecondary(Lcom/google/goggles/FactsProtos$Fact;)Lcom/google/goggles/FactsProtos$Facts$Builder;

    goto :goto_0

    .line 1019
    :sswitch_2c
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact;->newBuilder()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    .line 1020
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1021
    invoke-virtual {v0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->buildPartial()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->addExperimental(Lcom/google/goggles/FactsProtos$Fact;)Lcom/google/goggles/FactsProtos$Facts$Builder;

    goto :goto_0

    .line 995
    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
        0x1a -> :sswitch_2c
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 877
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/FactsProtos$Facts$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 877
    check-cast p1, Lcom/google/goggles/FactsProtos$Facts;

    invoke-virtual {p0, p1}, Lcom/google/goggles/FactsProtos$Facts$Builder;->mergeFrom(Lcom/google/goggles/FactsProtos$Facts;)Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 877
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/FactsProtos$Facts$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeExperimental(I)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1291
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensureExperimentalIsMutable()V

    .line 1292
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1294
    return-object p0
.end method

.method public removePrimary(I)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1113
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensurePrimaryIsMutable()V

    .line 1114
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1116
    return-object p0
.end method

.method public removeSecondary(I)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1202
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensureSecondaryIsMutable()V

    .line 1203
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1205
    return-object p0
.end method

.method public setExperimental(ILcom/google/goggles/FactsProtos$Fact$Builder;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1239
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensureExperimentalIsMutable()V

    .line 1240
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/FactsProtos$Fact$Builder;->build()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1242
    return-object p0
.end method

.method public setExperimental(ILcom/google/goggles/FactsProtos$Fact;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1229
    if-nez p2, :cond_8

    .line 1230
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1232
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensureExperimentalIsMutable()V

    .line 1233
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->experimental_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1235
    return-object p0
.end method

.method public setPrimary(ILcom/google/goggles/FactsProtos$Fact$Builder;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1061
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensurePrimaryIsMutable()V

    .line 1062
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/FactsProtos$Fact$Builder;->build()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1064
    return-object p0
.end method

.method public setPrimary(ILcom/google/goggles/FactsProtos$Fact;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1051
    if-nez p2, :cond_8

    .line 1052
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1054
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensurePrimaryIsMutable()V

    .line 1055
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->primary_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1057
    return-object p0
.end method

.method public setSecondary(ILcom/google/goggles/FactsProtos$Fact$Builder;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1150
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensureSecondaryIsMutable()V

    .line 1151
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/FactsProtos$Fact$Builder;->build()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1153
    return-object p0
.end method

.method public setSecondary(ILcom/google/goggles/FactsProtos$Fact;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1140
    if-nez p2, :cond_8

    .line 1141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1143
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->ensureSecondaryIsMutable()V

    .line 1144
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts$Builder;->secondary_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1146
    return-object p0
.end method
