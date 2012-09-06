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
    .line 30875
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 31049
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    .line 31092
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    .line 31181
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    .line 31270
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->title_:Ljava/lang/Object;

    .line 31306
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->header_:Ljava/lang/Object;

    .line 30876
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->maybeForceBuilderInitialization()V

    .line 30877
    return-void
.end method

.method static synthetic access$41700()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 1

    .prologue
    .line 30870
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 1

    .prologue
    .line 30882
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;-><init>()V

    return-object v0
.end method

.method private ensureActionIsMutable()V
    .registers 3

    .prologue
    .line 31184
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 31185
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    .line 31186
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 31188
    :cond_16
    return-void
.end method

.method private ensureFieldIsMutable()V
    .registers 3

    .prologue
    .line 31095
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 31096
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    .line 31097
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 31099
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 30880
    return-void
.end method


# virtual methods
.method public addAction(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 31244
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureActionIsMutable()V

    .line 31245
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 31247
    return-object p0
.end method

.method public addAction(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 31227
    if-nez p2, :cond_8

    .line 31228
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31230
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureActionIsMutable()V

    .line 31231
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 31233
    return-object p0
.end method

.method public addAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 31237
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureActionIsMutable()V

    .line 31238
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31240
    return-object p0
.end method

.method public addAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31217
    if-nez p1, :cond_8

    .line 31218
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31220
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureActionIsMutable()V

    .line 31221
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31223
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
    .line 31251
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureActionIsMutable()V

    .line 31252
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 31254
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
    .line 31162
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureFieldIsMutable()V

    .line 31163
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 31165
    return-object p0
.end method

.method public addField(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 31155
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureFieldIsMutable()V

    .line 31156
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 31158
    return-object p0
.end method

.method public addField(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 31138
    if-nez p2, :cond_8

    .line 31139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31141
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureFieldIsMutable()V

    .line 31142
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 31144
    return-object p0
.end method

.method public addField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 31148
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureFieldIsMutable()V

    .line 31149
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31151
    return-object p0
.end method

.method public addField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31128
    if-nez p1, :cond_8

    .line 31129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31131
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureFieldIsMutable()V

    .line 31132
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31134
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30870
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    .registers 3

    .prologue
    .line 30909
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    .line 30910
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 30911
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 30913
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30870
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    .registers 6

    .prologue
    .line 30927
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 30928
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 30929
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 30930
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 30931
    or-int/lit8 v2, v2, 0x1

    .line 30933
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$41902(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    .line 30934
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 30935
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    .line 30936
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 30938
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->field_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$42002(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Ljava/util/List;)Ljava/util/List;

    .line 30939
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_44

    .line 30940
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    .line 30941
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 30943
    :cond_44
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->action_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$42102(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Ljava/util/List;)Ljava/util/List;

    .line 30944
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_51

    .line 30945
    or-int/lit8 v2, v2, 0x2

    .line 30947
    :cond_51
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$42202(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30948
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5e

    .line 30949
    or-int/lit8 v2, v2, 0x4

    .line 30951
    :cond_5e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->header_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->header_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$42302(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30952
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$42402(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;I)I

    .line 30953
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30870
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30870
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 2

    .prologue
    .line 30886
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 30887
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    .line 30888
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 30889
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    .line 30890
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 30891
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    .line 30892
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 30893
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->title_:Ljava/lang/Object;

    .line 30894
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 30895
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->header_:Ljava/lang/Object;

    .line 30896
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 30897
    return-object p0
.end method

.method public clearAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 2

    .prologue
    .line 31257
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    .line 31258
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 31260
    return-object p0
.end method

.method public clearDialog()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 2

    .prologue
    .line 31085
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    .line 31087
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 31088
    return-object p0
.end method

.method public clearField()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 2

    .prologue
    .line 31168
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    .line 31169
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 31171
    return-object p0
.end method

.method public clearHeader()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 2

    .prologue
    .line 31330
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 31331
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getHeader()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->header_:Ljava/lang/Object;

    .line 31333
    return-object p0
.end method

.method public clearTitle()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 2

    .prologue
    .line 31294
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 31295
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->title_:Ljava/lang/Object;

    .line 31297
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 30870
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30870
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 3

    .prologue
    .line 30901
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
    .line 30870
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 3
    .parameter "index"

    .prologue
    .line 31197
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    return-object v0
.end method

.method public getActionCount()I
    .registers 2

    .prologue
    .line 31194
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
    .line 31191
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 30870
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30870
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    .registers 2

    .prologue
    .line 30905
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
    .registers 2

    .prologue
    .line 31054
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    return-object v0
.end method

.method public getField(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    .registers 3
    .parameter "index"

    .prologue
    .line 31108
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    return-object v0
.end method

.method public getFieldCount()I
    .registers 2

    .prologue
    .line 31105
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
    .line 31102
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .registers 4

    .prologue
    .line 31311
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->header_:Ljava/lang/Object;

    .line 31312
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 31313
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 31314
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->header_:Ljava/lang/Object;

    .line 31317
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
    .line 31275
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->title_:Ljava/lang/Object;

    .line 31276
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 31277
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 31278
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->title_:Ljava/lang/Object;

    .line 31281
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

    .line 31051
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
    .line 31308
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
    .line 31272
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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 30991
    const/4 v0, 0x1

    return v0
.end method

.method public mergeDialog(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 31073
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 31075
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    .line 31081
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 31082
    return-object p0

    .line 31078
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
    .line 30870
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 30870
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

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
    .line 30870
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
    .line 30999
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 31000
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_62

    .line 31005
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 31007
    :sswitch_d
    return-object p0

    .line 31012
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    .line 31013
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->hasDialog()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 31014
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->getDialog()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    .line 31016
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 31017
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->setDialog(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    goto :goto_0

    .line 31021
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    :sswitch_2a
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    move-result-object v0

    .line 31022
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 31023
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->addField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    goto :goto_0

    .line 31027
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    :sswitch_39
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    .line 31028
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 31029
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->addAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    goto :goto_0

    .line 31033
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    :sswitch_48
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 31034
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 31038
    :sswitch_55
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 31039
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->header_:Ljava/lang/Object;

    goto :goto_0

    .line 31000
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
    .line 30957
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 30987
    :cond_6
    :goto_6
    return-object p0

    .line 30958
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->hasDialog()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 30959
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDialog()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->mergeDialog(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    .line 30961
    :cond_14
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->field_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$42000(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 30962
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 30963
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->field_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$42000(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    .line 30964
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 30971
    :cond_32
    :goto_32
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->action_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$42100(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    .line 30972
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 30973
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->action_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$42100(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    .line 30974
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 30981
    :cond_50
    :goto_50
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 30982
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->setTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    .line 30984
    :cond_5d
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30985
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->setHeader(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    goto :goto_6

    .line 30966
    :cond_6b
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureFieldIsMutable()V

    .line 30967
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->field_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$42000(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_32

    .line 30976
    :cond_78
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureActionIsMutable()V

    .line 30977
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->action_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->access$42100(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_50
.end method

.method public setAction(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 31211
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureActionIsMutable()V

    .line 31212
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 31214
    return-object p0
.end method

.method public setAction(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 31201
    if-nez p2, :cond_8

    .line 31202
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31204
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureActionIsMutable()V

    .line 31205
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->action_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 31207
    return-object p0
.end method

.method public setDialog(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 31067
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    .line 31069
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 31070
    return-object p0
.end method

.method public setDialog(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31057
    if-nez p1, :cond_8

    .line 31058
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31060
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    .line 31062
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 31063
    return-object p0
.end method

.method public setField(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 31122
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureFieldIsMutable()V

    .line 31123
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 31125
    return-object p0
.end method

.method public setField(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 31112
    if-nez p2, :cond_8

    .line 31113
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31115
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->ensureFieldIsMutable()V

    .line 31116
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->field_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 31118
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31321
    if-nez p1, :cond_8

    .line 31322
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31324
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 31325
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->header_:Ljava/lang/Object;

    .line 31327
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31285
    if-nez p1, :cond_8

    .line 31286
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31288
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->bitField0_:I

    .line 31289
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->title_:Ljava/lang/Object;

    .line 31291
    return-object p0
.end method
