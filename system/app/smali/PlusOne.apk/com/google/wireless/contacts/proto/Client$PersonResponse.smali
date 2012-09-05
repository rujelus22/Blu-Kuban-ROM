.class public final Lcom/google/wireless/contacts/proto/Client$PersonResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$PersonResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PersonResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private person_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12783
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$PersonResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    .line 12784
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->initFields()V

    .line 12785
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 12434
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 12471
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->memoizedIsInitialized:B

    .line 12488
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->memoizedSerializedSize:I

    .line 12435
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12429
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$PersonResponse;-><init>(Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12436
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12471
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->memoizedIsInitialized:B

    .line 12488
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->memoizedSerializedSize:I

    .line 12436
    return-void
.end method

.method static synthetic access$17100(Lcom/google/wireless/contacts/proto/Client$PersonResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12429
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->person_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17102(Lcom/google/wireless/contacts/proto/Client$PersonResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12429
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->person_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PersonResponse;
    .registers 1

    .prologue
    .line 12440
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 12469
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->person_:Ljava/util/List;

    .line 12470
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;
    .registers 1

    .prologue
    .line 12576
    #calls: Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->access$16900()Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$PersonResponse;)Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 12579
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$PersonResponse;)Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12429
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$PersonResponse;
    .registers 2

    .prologue
    .line 12444
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    return-object v0
.end method

.method public getPerson(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 3
    .parameter "index"

    .prologue
    .line 12461
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->person_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    return-object v0
.end method

.method public getPersonCount()I
    .registers 2

    .prologue
    .line 12458
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->person_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPersonList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12451
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->person_:Ljava/util/List;

    return-object v0
.end method

.method public getPersonOrBuilder(I)Lcom/google/wireless/contacts/proto/Contact$MobileContactOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 12465
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->person_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContactOrBuilder;

    return-object v0
.end method

.method public getPersonOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContactOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12455
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->person_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 12490
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->memoizedSerializedSize:I

    .line 12491
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 12499
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 12493
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 12494
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->person_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 12495
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->person_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 12494
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 12498
    :cond_22
    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 12499
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 12473
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->memoizedIsInitialized:B

    .line 12474
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 12477
    :goto_8
    return v1

    .line 12474
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 12476
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 12506
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
    .line 12482
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->getSerializedSize()I

    .line 12483
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->person_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 12484
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->person_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 12483
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 12486
    :cond_1b
    return-void
.end method
