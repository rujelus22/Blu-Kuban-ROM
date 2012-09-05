.class public final Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DocumentVariant"
.end annotation


# instance fields
.field private autoTranslation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private channelId_:J

.field private hasChannelId:Z

.field private hasRecentChanges:Z

.field private hasRule:Z

.field private hasTitle:Z

.field private hasVariationType:Z

.field private offer_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation
.end field

.field private recentChanges_:Ljava/lang/String;

.field private rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

.field private snippet_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title_:Ljava/lang/String;

.field private variationType_:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 738
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->variationType_:I

    .line 755
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    .line 775
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->title_:Ljava/lang/String;

    .line 791
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->snippet_:Ljava/util/List;

    .line 825
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->recentChanges_:Ljava/lang/String;

    .line 841
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->autoTranslation_:Ljava/util/List;

    .line 874
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->offer_:Ljava/util/List;

    .line 908
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->channelId_:J

    .line 977
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->cachedSize:I

    .line 727
    return-void
.end method


# virtual methods
.method public addAutoTranslation(Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    .registers 3
    .parameter "value"

    .prologue
    .line 858
    if-nez p1, :cond_8

    .line 859
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 861
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->autoTranslation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 862
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->autoTranslation_:Ljava/util/List;

    .line 864
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->autoTranslation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    return-object p0
.end method

.method public addOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    .registers 3
    .parameter "value"

    .prologue
    .line 891
    if-nez p1, :cond_8

    .line 892
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 894
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->offer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 895
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->offer_:Ljava/util/List;

    .line 897
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->offer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
    return-object p0
.end method

.method public addSnippet(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    .registers 3
    .parameter "value"

    .prologue
    .line 808
    if-nez p1, :cond_8

    .line 809
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 811
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->snippet_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 812
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->snippet_:Ljava/util/List;

    .line 814
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->snippet_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    return-object p0
.end method

.method public getAutoTranslationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;",
            ">;"
        }
    .end annotation

    .prologue
    .line 844
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->autoTranslation_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 979
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->cachedSize:I

    if-gez v0, :cond_7

    .line 981
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getSerializedSize()I

    .line 983
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->cachedSize:I

    return v0
.end method

.method public getChannelId()J
    .registers 3

    .prologue
    .line 909
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->channelId_:J

    return-wide v0
.end method

.method public getOfferList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 877
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->offer_:Ljava/util/List;

    return-object v0
.end method

.method public getRecentChanges()Ljava/lang/String;
    .registers 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->recentChanges_:Ljava/lang/String;

    return-object v0
.end method

.method public getRule()Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .registers 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    .line 987
    const/4 v3, 0x0

    .line 988
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasVariationType()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 989
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getVariationType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 992
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasRule()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 993
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getRule()Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 996
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasTitle()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 997
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1001
    :cond_31
    const/4 v0, 0x0

    .line 1002
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getSnippetList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1003
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_3a

    .line 1006
    .end local v1           #element:Ljava/lang/String;
    :cond_4c
    add-int/2addr v3, v0

    .line 1007
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getSnippetList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1009
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasRecentChanges()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 1010
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getRecentChanges()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1013
    :cond_68
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getAutoTranslationList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    .line 1014
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    const/4 v4, 0x6

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_70

    .line 1017
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    :cond_83
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getOfferList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 1018
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/4 v4, 0x7

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_8b

    .line 1021
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasChannelId()Z

    move-result v4

    if-eqz v4, :cond_af

    .line 1022
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getChannelId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1025
    :cond_af
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->cachedSize:I

    .line 1026
    return v3
.end method

.method public getSnippetList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 794
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->snippet_:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getVariationType()I
    .registers 2

    .prologue
    .line 740
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->variationType_:I

    return v0
.end method

.method public hasChannelId()Z
    .registers 2

    .prologue
    .line 910
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasChannelId:Z

    return v0
.end method

.method public hasRecentChanges()Z
    .registers 2

    .prologue
    .line 827
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasRecentChanges:Z

    return v0
.end method

.method public hasRule()Z
    .registers 2

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasRule:Z

    return v0
.end method

.method public hasTitle()Z
    .registers 2

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasTitle:Z

    return v0
.end method

.method public hasVariationType()Z
    .registers 2

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasVariationType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1033
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1034
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_5a

    .line 1038
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1039
    :sswitch_d
    return-object p0

    .line 1044
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->setVariationType(I)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    goto :goto_0

    .line 1048
    :sswitch_16
    new-instance v1, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;-><init>()V

    .line 1049
    .local v1, value:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1050
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->setRule(Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    goto :goto_0

    .line 1054
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    goto :goto_0

    .line 1058
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->addSnippet(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    goto :goto_0

    .line 1062
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->setRecentChanges(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    goto :goto_0

    .line 1066
    :sswitch_3a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;-><init>()V

    .line 1067
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1068
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->addAutoTranslation(Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    goto :goto_0

    .line 1072
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    :sswitch_46
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;-><init>()V

    .line 1073
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1074
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->addOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    goto :goto_0

    .line 1078
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :sswitch_52
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->setChannelId(J)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    goto :goto_0

    .line 1034
    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_22
        0x22 -> :sswitch_2a
        0x2a -> :sswitch_32
        0x32 -> :sswitch_3a
        0x3a -> :sswitch_46
        0x48 -> :sswitch_52
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    move-result-object v0

    return-object v0
.end method

.method public setChannelId(J)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    .registers 4
    .parameter "value"

    .prologue
    .line 912
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasChannelId:Z

    .line 913
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->channelId_:J

    .line 914
    return-object p0
.end method

.method public setRecentChanges(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    .registers 3
    .parameter "value"

    .prologue
    .line 829
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasRecentChanges:Z

    .line 830
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->recentChanges_:Ljava/lang/String;

    .line 831
    return-object p0
.end method

.method public setRule(Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    .registers 3
    .parameter "value"

    .prologue
    .line 759
    if-nez p1, :cond_8

    .line 760
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 762
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasRule:Z

    .line 763
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    .line 764
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    .registers 3
    .parameter "value"

    .prologue
    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasTitle:Z

    .line 780
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->title_:Ljava/lang/String;

    .line 781
    return-object p0
.end method

.method public setVariationType(I)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    .registers 3
    .parameter "value"

    .prologue
    .line 742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasVariationType:Z

    .line 743
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->variationType_:I

    .line 744
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 951
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasVariationType()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 952
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getVariationType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 954
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasRule()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 955
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getRule()Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 957
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 958
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 960
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getSnippetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 961
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_32

    .line 963
    .end local v0           #element:Ljava/lang/String;
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasRecentChanges()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 964
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getRecentChanges()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 966
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getAutoTranslationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    .line 967
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_59

    .line 969
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    :cond_6a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getOfferList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 970
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_72

    .line 972
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_83
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasChannelId()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 973
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getChannelId()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 975
    :cond_92
    return-void
.end method
