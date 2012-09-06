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
    .line 35712
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 35863
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    .line 35952
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->header_:Ljava/lang/Object;

    .line 35988
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->text_:Ljava/lang/Object;

    .line 36024
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 35713
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->maybeForceBuilderInitialization()V

    .line 35714
    return-void
.end method

.method static synthetic access$48100()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 1

    .prologue
    .line 35707
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 1

    .prologue
    .line 35719
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;-><init>()V

    return-object v0
.end method

.method private ensureActionIsMutable()V
    .registers 3

    .prologue
    .line 35866
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 35867
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    .line 35868
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 35870
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 35717
    return-void
.end method


# virtual methods
.method public addAction(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 35926
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->ensureActionIsMutable()V

    .line 35927
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35929
    return-object p0
.end method

.method public addAction(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 35909
    if-nez p2, :cond_8

    .line 35910
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35912
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->ensureActionIsMutable()V

    .line 35913
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35915
    return-object p0
.end method

.method public addAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 35919
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->ensureActionIsMutable()V

    .line 35920
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35922
    return-object p0
.end method

.method public addAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35899
    if-nez p1, :cond_8

    .line 35900
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35902
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->ensureActionIsMutable()V

    .line 35903
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35905
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
    .line 35933
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->ensureActionIsMutable()V

    .line 35934
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 35936
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35707
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
    .registers 3

    .prologue
    .line 35744
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    .line 35745
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 35746
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 35748
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35707
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
    .registers 6

    .prologue
    .line 35762
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 35763
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 35764
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 35765
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 35766
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    .line 35767
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 35769
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->action_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->access$48302(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;Ljava/util/List;)Ljava/util/List;

    .line 35770
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 35771
    or-int/lit8 v2, v2, 0x1

    .line 35773
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->header_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->header_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->access$48402(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35774
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 35775
    or-int/lit8 v2, v2, 0x2

    .line 35777
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->text_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->text_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->access$48502(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35778
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 35779
    or-int/lit8 v2, v2, 0x4

    .line 35781
    :cond_43
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->access$48602(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 35782
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->access$48702(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;I)I

    .line 35783
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 35707
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35707
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 2

    .prologue
    .line 35723
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 35724
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    .line 35725
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 35726
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->header_:Ljava/lang/Object;

    .line 35727
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 35728
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->text_:Ljava/lang/Object;

    .line 35729
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 35730
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 35731
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 35732
    return-object p0
.end method

.method public clearAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 2

    .prologue
    .line 35939
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    .line 35940
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 35942
    return-object p0
.end method

.method public clearError()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 2

    .prologue
    .line 36060
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 36062
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 36063
    return-object p0
.end method

.method public clearHeader()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 2

    .prologue
    .line 35976
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 35977
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getHeader()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->header_:Ljava/lang/Object;

    .line 35979
    return-object p0
.end method

.method public clearText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 2

    .prologue
    .line 36012
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 36013
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->text_:Ljava/lang/Object;

    .line 36015
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 35707
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 35707
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 3

    .prologue
    .line 35736
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
    .line 35707
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 3
    .parameter "index"

    .prologue
    .line 35879
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    return-object v0
.end method

.method public getActionCount()I
    .registers 2

    .prologue
    .line 35876
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
    .line 35873
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 35707
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35707
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
    .registers 2

    .prologue
    .line 35740
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    .registers 2

    .prologue
    .line 36029
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .registers 4

    .prologue
    .line 35957
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->header_:Ljava/lang/Object;

    .line 35958
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 35959
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 35960
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->header_:Ljava/lang/Object;

    .line 35963
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
    .line 35993
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->text_:Ljava/lang/Object;

    .line 35994
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 35995
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 35996
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->text_:Ljava/lang/Object;

    .line 35999
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
    .line 36026
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
    .line 35954
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
    .line 35990
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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 35811
    const/4 v0, 0x1

    return v0
.end method

.method public mergeError(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 36048
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 36050
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 36056
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 36057
    return-object p0

    .line 36053
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
    .line 35707
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 35707
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

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
    .line 35707
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
    .line 35819
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 35820
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_54

    .line 35825
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 35827
    :sswitch_d
    return-object p0

    .line 35832
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    .line 35833
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 35834
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->addAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    goto :goto_0

    .line 35838
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 35839
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->header_:Ljava/lang/Object;

    goto :goto_0

    .line 35843
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 35844
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->text_:Ljava/lang/Object;

    goto :goto_0

    .line 35848
    :sswitch_37
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    .line 35849
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->hasError()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 35850
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->getError()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    .line 35852
    :cond_48
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 35853
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->setError(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    goto :goto_0

    .line 35820
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
    .line 35787
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 35807
    :cond_6
    :goto_6
    return-object p0

    .line 35788
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->action_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->access$48300(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 35789
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 35790
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->action_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->access$48300(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    .line 35791
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 35798
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 35799
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->setHeader(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    .line 35801
    :cond_32
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->hasText()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 35802
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->setText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    .line 35804
    :cond_3f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->hasError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35805
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getError()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->mergeError(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    goto :goto_6

    .line 35793
    :cond_4d
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->ensureActionIsMutable()V

    .line 35794
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->action_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->access$48300(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setAction(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 35893
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->ensureActionIsMutable()V

    .line 35894
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35896
    return-object p0
.end method

.method public setAction(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 35883
    if-nez p2, :cond_8

    .line 35884
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35886
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->ensureActionIsMutable()V

    .line 35887
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->action_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35889
    return-object p0
.end method

.method public setError(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 36042
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 36044
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 36045
    return-object p0
.end method

.method public setError(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36032
    if-nez p1, :cond_8

    .line 36033
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36035
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 36037
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 36038
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35967
    if-nez p1, :cond_8

    .line 35968
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35970
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 35971
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->header_:Ljava/lang/Object;

    .line 35973
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36003
    if-nez p1, :cond_8

    .line 36004
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36006
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->bitField0_:I

    .line 36007
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->text_:Ljava/lang/Object;

    .line 36009
    return-object p0
.end method
