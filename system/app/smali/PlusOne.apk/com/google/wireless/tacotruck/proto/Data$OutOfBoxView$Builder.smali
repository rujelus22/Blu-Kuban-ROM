.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxViewOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxViewOrBuilder;"
    }
.end annotation


# instance fields
.field private action_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

.field private field_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;",
            ">;"
        }
    .end annotation
.end field

.field private header_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 28094
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 28268
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    .line 28311
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    .line 28400
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    .line 28489
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->title_:Ljava/lang/Object;

    .line 28525
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->header_:Ljava/lang/Object;

    .line 28095
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->maybeForceBuilderInitialization()V

    .line 28096
    return-void
.end method

.method static synthetic access$38200()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 1

    .prologue
    .line 28089
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 1

    .prologue
    .line 28101
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;-><init>()V

    return-object v0
.end method

.method private ensureActionIsMutable()V
    .registers 3

    .prologue
    .line 28403
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 28404
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    .line 28405
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28407
    :cond_16
    return-void
.end method

.method private ensureFieldIsMutable()V
    .registers 3

    .prologue
    .line 28314
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 28315
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    .line 28316
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28318
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 28099
    return-void
.end method


# virtual methods
.method public addAction(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 28463
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureActionIsMutable()V

    .line 28464
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 28466
    return-object p0
.end method

.method public addAction(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 28446
    if-nez p2, :cond_8

    .line 28447
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28449
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureActionIsMutable()V

    .line 28450
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 28452
    return-object p0
.end method

.method public addAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 28456
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureActionIsMutable()V

    .line 28457
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28459
    return-object p0
.end method

.method public addAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28436
    if-nez p1, :cond_8

    .line 28437
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28439
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureActionIsMutable()V

    .line 28440
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28442
    return-object p0
.end method

.method public addAllAction(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;"
        }
    .end annotation

    .prologue
    .line 28470
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureActionIsMutable()V

    .line 28471
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 28473
    return-object p0
.end method

.method public addAllField(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;"
        }
    .end annotation

    .prologue
    .line 28381
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureFieldIsMutable()V

    .line 28382
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 28384
    return-object p0
.end method

.method public addField(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 28374
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureFieldIsMutable()V

    .line 28375
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 28377
    return-object p0
.end method

.method public addField(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 28357
    if-nez p2, :cond_8

    .line 28358
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28360
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureFieldIsMutable()V

    .line 28361
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 28363
    return-object p0
.end method

.method public addField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 28367
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureFieldIsMutable()V

    .line 28368
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28370
    return-object p0
.end method

.method public addField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28347
    if-nez p1, :cond_8

    .line 28348
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28350
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureFieldIsMutable()V

    .line 28351
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28353
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    .registers 3

    .prologue
    .line 28128
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    .line 28129
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 28130
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 28132
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28089
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    .registers 6

    .prologue
    .line 28146
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 28147
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28148
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 28149
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 28150
    or-int/lit8 v2, v2, 0x1

    .line 28152
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$38402(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    .line 28153
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 28154
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    .line 28155
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28157
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->field_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$38502(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Ljava/util/List;)Ljava/util/List;

    .line 28158
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_44

    .line 28159
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    .line 28160
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28162
    :cond_44
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->action_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$38602(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Ljava/util/List;)Ljava/util/List;

    .line 28163
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_51

    .line 28164
    or-int/lit8 v2, v2, 0x2

    .line 28166
    :cond_51
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$38702(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28167
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5e

    .line 28168
    or-int/lit8 v2, v2, 0x4

    .line 28170
    :cond_5e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->header_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->header_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$38802(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28171
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$38902(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;I)I

    .line 28172
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28089
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28089
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 2

    .prologue
    .line 28105
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 28106
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    .line 28107
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    .line 28109
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28110
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    .line 28111
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28112
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->title_:Ljava/lang/Object;

    .line 28113
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28114
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->header_:Ljava/lang/Object;

    .line 28115
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28116
    return-object p0
.end method

.method public clearAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 2

    .prologue
    .line 28476
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    .line 28477
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28479
    return-object p0
.end method

.method public clearDialog()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 2

    .prologue
    .line 28304
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    .line 28306
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28307
    return-object p0
.end method

.method public clearField()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 2

    .prologue
    .line 28387
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    .line 28388
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28390
    return-object p0
.end method

.method public clearHeader()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 2

    .prologue
    .line 28549
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28550
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getHeader()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->header_:Ljava/lang/Object;

    .line 28552
    return-object p0
.end method

.method public clearTitle()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 2

    .prologue
    .line 28513
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28514
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->title_:Ljava/lang/Object;

    .line 28516
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 28089
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28089
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 3

    .prologue
    .line 28120
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

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
    .line 28089
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 3
    .parameter "index"

    .prologue
    .line 28416
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    return-object v0
.end method

.method public getActionCount()I
    .registers 2

    .prologue
    .line 28413
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getActionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28410
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 28089
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28089
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    .registers 2

    .prologue
    .line 28124
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
    .registers 2

    .prologue
    .line 28273
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    return-object v0
.end method

.method public getField(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    .registers 3
    .parameter "index"

    .prologue
    .line 28327
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    return-object v0
.end method

.method public getFieldCount()I
    .registers 2

    .prologue
    .line 28324
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFieldList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28321
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28530
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->header_:Ljava/lang/Object;

    .line 28531
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 28532
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28533
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->header_:Ljava/lang/Object;

    .line 28536
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

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28494
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->title_:Ljava/lang/Object;

    .line 28495
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 28496
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28497
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->title_:Ljava/lang/Object;

    .line 28500
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

.method public hasDialog()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 28270
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasHeader()Z
    .registers 3

    .prologue
    .line 28527
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 28491
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

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

.method public mergeDialog(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 28292
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 28294
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    .line 28300
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28301
    return-object p0

    .line 28297
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    goto :goto_1f
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
    .line 28089
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

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
    .line 28089
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28218
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 28219
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_62

    .line 28224
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 28226
    :sswitch_d
    return-object p0

    .line 28231
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    .line 28232
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->hasDialog()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 28233
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->getDialog()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    .line 28235
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 28236
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->setDialog(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    goto :goto_0

    .line 28240
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    :sswitch_2a
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    move-result-object v0

    .line 28241
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 28242
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->addField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    goto :goto_0

    .line 28246
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    :sswitch_39
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    .line 28247
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 28248
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->addAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    goto :goto_0

    .line 28252
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    :sswitch_48
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28253
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 28257
    :sswitch_55
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28258
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->header_:Ljava/lang/Object;

    goto :goto_0

    .line 28219
    :sswitch_data_62
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_39
        0x22 -> :sswitch_48
        0x2a -> :sswitch_55
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 28176
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 28206
    :cond_6
    :goto_6
    return-object p0

    .line 28177
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->hasDialog()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 28178
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDialog()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->mergeDialog(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    .line 28180
    :cond_14
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->field_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$38500(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 28181
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 28182
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->field_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$38500(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    .line 28183
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28190
    :cond_32
    :goto_32
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->action_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$38600(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    .line 28191
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 28192
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->action_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$38600(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    .line 28193
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28200
    :cond_50
    :goto_50
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 28201
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->setTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    .line 28203
    :cond_5d
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28204
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->setHeader(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    goto :goto_6

    .line 28185
    :cond_6b
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureFieldIsMutable()V

    .line 28186
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->field_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$38500(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_32

    .line 28195
    :cond_78
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureActionIsMutable()V

    .line 28196
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->action_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$38600(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_50
.end method

.method public setAction(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 28430
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureActionIsMutable()V

    .line 28431
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28433
    return-object p0
.end method

.method public setAction(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 28420
    if-nez p2, :cond_8

    .line 28421
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28423
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureActionIsMutable()V

    .line 28424
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28426
    return-object p0
.end method

.method public setDialog(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 28286
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    .line 28288
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28289
    return-object p0
.end method

.method public setDialog(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28276
    if-nez p1, :cond_8

    .line 28277
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28279
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    .line 28281
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28282
    return-object p0
.end method

.method public setField(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 28341
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureFieldIsMutable()V

    .line 28342
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28344
    return-object p0
.end method

.method public setField(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 28331
    if-nez p2, :cond_8

    .line 28332
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28334
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureFieldIsMutable()V

    .line 28335
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28337
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28540
    if-nez p1, :cond_8

    .line 28541
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28543
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28544
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->header_:Ljava/lang/Object;

    .line 28546
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28504
    if-nez p1, :cond_8

    .line 28505
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28507
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 28508
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->title_:Ljava/lang/Object;

    .line 28510
    return-object p0
.end method
