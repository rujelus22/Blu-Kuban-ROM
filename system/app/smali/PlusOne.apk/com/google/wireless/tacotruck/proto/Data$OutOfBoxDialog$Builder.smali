.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialogOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialogOrBuilder;"
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

.field private error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

.field private header_:Ljava/lang/Object;

.field private text_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 32931
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 33082
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    .line 33171
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->header_:Ljava/lang/Object;

    .line 33207
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->text_:Ljava/lang/Object;

    .line 33243
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 32932
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->maybeForceBuilderInitialization()V

    .line 32933
    return-void
.end method

.method static synthetic access$44600()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 1

    .prologue
    .line 32926
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 1

    .prologue
    .line 32938
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;-><init>()V

    return-object v0
.end method

.method private ensureActionIsMutable()V
    .registers 3

    .prologue
    .line 33085
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 33086
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    .line 33087
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 33089
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 32936
    return-void
.end method


# virtual methods
.method public addAction(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 33145
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->ensureActionIsMutable()V

    .line 33146
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 33148
    return-object p0
.end method

.method public addAction(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 33128
    if-nez p2, :cond_8

    .line 33129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33131
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->ensureActionIsMutable()V

    .line 33132
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 33134
    return-object p0
.end method

.method public addAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 33138
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->ensureActionIsMutable()V

    .line 33139
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33141
    return-object p0
.end method

.method public addAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33118
    if-nez p1, :cond_8

    .line 33119
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33121
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->ensureActionIsMutable()V

    .line 33122
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33124
    return-object p0
.end method

.method public addAllAction(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;"
        }
    .end annotation

    .prologue
    .line 33152
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->ensureActionIsMutable()V

    .line 33153
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 33155
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
    .registers 3

    .prologue
    .line 32963
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    .line 32964
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 32965
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 32967
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32926
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
    .registers 6

    .prologue
    .line 32981
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 32982
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 32983
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 32984
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 32985
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    .line 32986
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 32988
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->action_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->access$44802(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;Ljava/util/List;)Ljava/util/List;

    .line 32989
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 32990
    or-int/lit8 v2, v2, 0x1

    .line 32992
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->header_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->header_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->access$44902(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32993
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 32994
    or-int/lit8 v2, v2, 0x2

    .line 32996
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->text_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->text_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->access$45002(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32997
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 32998
    or-int/lit8 v2, v2, 0x4

    .line 33000
    :cond_43
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->access$45102(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 33001
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->access$45202(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;I)I

    .line 33002
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 32926
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32926
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 2

    .prologue
    .line 32942
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 32943
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    .line 32944
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 32945
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->header_:Ljava/lang/Object;

    .line 32946
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 32947
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->text_:Ljava/lang/Object;

    .line 32948
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 32949
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 32950
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 32951
    return-object p0
.end method

.method public clearAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 2

    .prologue
    .line 33158
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    .line 33159
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 33161
    return-object p0
.end method

.method public clearError()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 2

    .prologue
    .line 33279
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 33281
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 33282
    return-object p0
.end method

.method public clearHeader()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 2

    .prologue
    .line 33195
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 33196
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getHeader()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->header_:Ljava/lang/Object;

    .line 33198
    return-object p0
.end method

.method public clearText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 2

    .prologue
    .line 33231
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 33232
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->text_:Ljava/lang/Object;

    .line 33234
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 32926
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 32926
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 3

    .prologue
    .line 32955
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

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
    .line 32926
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 3
    .parameter "index"

    .prologue
    .line 33098
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    return-object v0
.end method

.method public getActionCount()I
    .registers 2

    .prologue
    .line 33095
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

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
    .line 33092
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 32926
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32926
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
    .registers 2

    .prologue
    .line 32959
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    .registers 2

    .prologue
    .line 33248
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .registers 4

    .prologue
    .line 33176
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->header_:Ljava/lang/Object;

    .line 33177
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 33178
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 33179
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->header_:Ljava/lang/Object;

    .line 33182
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

.method public getText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 33212
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->text_:Ljava/lang/Object;

    .line 33213
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 33214
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 33215
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->text_:Ljava/lang/Object;

    .line 33218
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

.method public hasError()Z
    .registers 3

    .prologue
    .line 33245
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

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

.method public hasHeader()Z
    .registers 3

    .prologue
    .line 33173
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

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

.method public hasText()Z
    .registers 3

    .prologue
    .line 33209
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

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

.method public mergeError(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 33267
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 33269
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 33275
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 33276
    return-object p0

    .line 33272
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    goto :goto_20
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
    .line 32926
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

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
    .line 32926
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33038
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 33039
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_54

    .line 33044
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 33046
    :sswitch_d
    return-object p0

    .line 33051
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    .line 33052
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 33053
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->addAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    goto :goto_0

    .line 33057
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 33058
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->header_:Ljava/lang/Object;

    goto :goto_0

    .line 33062
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 33063
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->text_:Ljava/lang/Object;

    goto :goto_0

    .line 33067
    :sswitch_37
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    .line 33068
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->hasError()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 33069
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->getError()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    .line 33071
    :cond_48
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 33072
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->setError(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    goto :goto_0

    .line 33039
    nop

    :sswitch_data_54
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
        0x1a -> :sswitch_2a
        0x22 -> :sswitch_37
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 33006
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 33026
    :cond_6
    :goto_6
    return-object p0

    .line 33007
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->action_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->access$44800(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 33008
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 33009
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->action_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->access$44800(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    .line 33010
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 33017
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 33018
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->setHeader(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    .line 33020
    :cond_32
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->hasText()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 33021
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->setText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    .line 33023
    :cond_3f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->hasError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33024
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getError()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->mergeError(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    goto :goto_6

    .line 33012
    :cond_4d
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->ensureActionIsMutable()V

    .line 33013
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->action_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->access$44800(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setAction(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 33112
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->ensureActionIsMutable()V

    .line 33113
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33115
    return-object p0
.end method

.method public setAction(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 33102
    if-nez p2, :cond_8

    .line 33103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33105
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->ensureActionIsMutable()V

    .line 33106
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33108
    return-object p0
.end method

.method public setError(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 33261
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 33263
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 33264
    return-object p0
.end method

.method public setError(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33251
    if-nez p1, :cond_8

    .line 33252
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33254
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 33256
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 33257
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33186
    if-nez p1, :cond_8

    .line 33187
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33189
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 33190
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->header_:Ljava/lang/Object;

    .line 33192
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33222
    if-nez p1, :cond_8

    .line 33223
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33225
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 33226
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->text_:Ljava/lang/Object;

    .line 33228
    return-object p0
.end method
