.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Annotations"
.end annotation


# instance fields
.field private badgeForCreator_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;",
            ">;"
        }
    .end annotation
.end field

.field private badgeForDoc_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private hasLink:Z

.field private hasPlusOneData:Z

.field private hasSectionBodyOfWork:Z

.field private hasSectionCoreContent:Z

.field private hasSectionCrossSell:Z

.field private hasSectionMoreBy:Z

.field private hasSectionRelated:Z

.field private hasSectionRelatedDocType:Z

.field private hasTemplate:Z

.field private link_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

.field private plusOneData_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

.field private promotedDoc_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;",
            ">;"
        }
    .end annotation
.end field

.field private sectionBodyOfWork_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private sectionCoreContent_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private sectionCrossSell_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private sectionMoreBy_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private sectionRelatedDocType_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private sectionRelated_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private template_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

.field private warning_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->sectionRelated_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 34
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->sectionRelatedDocType_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 54
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->sectionMoreBy_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 74
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->sectionBodyOfWork_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 94
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->sectionCoreContent_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 114
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->sectionCrossSell_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 134
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->plusOneData_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    .line 153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->warning_:Ljava/util/List;

    .line 187
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->link_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

    .line 207
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->template_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    .line 226
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->badgeForCreator_:Ljava/util/List;

    .line 259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->badgeForDoc_:Ljava/util/List;

    .line 292
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->promotedDoc_:Ljava/util/List;

    .line 397
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public addBadgeForCreator(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 243
    if-nez p1, :cond_8

    .line 244
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 246
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->badgeForCreator_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->badgeForCreator_:Ljava/util/List;

    .line 249
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->badgeForCreator_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    return-object p0
.end method

.method public addBadgeForDoc(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 276
    if-nez p1, :cond_8

    .line 277
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 279
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->badgeForDoc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->badgeForDoc_:Ljava/util/List;

    .line 282
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->badgeForDoc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    return-object p0
.end method

.method public addPromotedDoc(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 309
    if-nez p1, :cond_8

    .line 310
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 312
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->promotedDoc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->promotedDoc_:Ljava/util/List;

    .line 315
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->promotedDoc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    return-object p0
.end method

.method public addWarning(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 170
    if-nez p1, :cond_8

    .line 171
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 173
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->warning_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->warning_:Ljava/util/List;

    .line 176
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->warning_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-object p0
.end method

.method public getBadgeForCreator(I)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .registers 3
    .parameter "index"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->badgeForCreator_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    return-object v0
.end method

.method public getBadgeForCreatorCount()I
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->badgeForCreator_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBadgeForCreatorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->badgeForCreator_:Ljava/util/List;

    return-object v0
.end method

.method public getBadgeForDoc(I)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .registers 3
    .parameter "index"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->badgeForDoc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    return-object v0
.end method

.method public getBadgeForDocCount()I
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->badgeForDoc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBadgeForDocList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->badgeForDoc_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 399
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->cachedSize:I

    if-gez v0, :cond_7

    .line 401
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSerializedSize()I

    .line 403
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->cachedSize:I

    return v0
.end method

.method public getLink()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->link_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

    return-object v0
.end method

.method public getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->plusOneData_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    return-object v0
.end method

.method public getPromotedDocList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->promotedDoc_:Ljava/util/List;

    return-object v0
.end method

.method public getSectionBodyOfWork()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->sectionBodyOfWork_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSectionCoreContent()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->sectionCoreContent_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSectionCrossSell()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->sectionCrossSell_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSectionMoreBy()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->sectionMoreBy_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSectionRelated()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->sectionRelated_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSectionRelatedDocType()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->sectionRelatedDocType_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 407
    const/4 v2, 0x0

    .line 408
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionRelated()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 409
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionRelated()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 412
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionMoreBy()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 413
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionMoreBy()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 416
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasPlusOneData()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 417
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 420
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getWarningList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;

    .line 421
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_39

    .line 424
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionBodyOfWork()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 425
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionBodyOfWork()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 428
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionCoreContent()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 429
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionCoreContent()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 432
    :cond_6c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasTemplate()Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 433
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 436
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getBadgeForCreatorList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_84
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    .line 437
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    const/16 v3, 0x8

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_84

    .line 440
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :cond_98
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getBadgeForDocList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    .line 441
    .restart local v0       #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_a0

    .line 444
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :cond_b4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasLink()Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 445
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getLink()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 448
    :cond_c5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionCrossSell()Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 449
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionCrossSell()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 452
    :cond_d6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionRelatedDocType()Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 453
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionRelatedDocType()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 456
    :cond_e7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getPromotedDocList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ef
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_103

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;

    .line 457
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    const/16 v3, 0xd

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_ef

    .line 460
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    :cond_103
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->cachedSize:I

    .line 461
    return v2
.end method

.method public getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->template_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    return-object v0
.end method

.method public getWarningCount()I
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->warning_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWarningList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->warning_:Ljava/util/List;

    return-object v0
.end method

.method public hasLink()Z
    .registers 2

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasLink:Z

    return v0
.end method

.method public hasPlusOneData()Z
    .registers 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasPlusOneData:Z

    return v0
.end method

.method public hasSectionBodyOfWork()Z
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionBodyOfWork:Z

    return v0
.end method

.method public hasSectionCoreContent()Z
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionCoreContent:Z

    return v0
.end method

.method public hasSectionCrossSell()Z
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionCrossSell:Z

    return v0
.end method

.method public hasSectionMoreBy()Z
    .registers 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionMoreBy:Z

    return v0
.end method

.method public hasSectionRelated()Z
    .registers 2

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionRelated:Z

    return v0
.end method

.method public hasSectionRelatedDocType()Z
    .registers 2

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionRelatedDocType:Z

    return v0
.end method

.method public hasTemplate()Z
    .registers 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasTemplate:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 469
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_ae

    .line 473
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 474
    :sswitch_d
    return-object p0

    .line 479
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 480
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 481
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->setSectionRelated(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    goto :goto_0

    .line 485
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :sswitch_1a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 486
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 487
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->setSectionMoreBy(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    goto :goto_0

    .line 491
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :sswitch_26
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;-><init>()V

    .line 492
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 493
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->setPlusOneData(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    goto :goto_0

    .line 497
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    :sswitch_32
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;-><init>()V

    .line 498
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 499
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->addWarning(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    goto :goto_0

    .line 503
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    :sswitch_3e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 504
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 505
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->setSectionBodyOfWork(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    goto :goto_0

    .line 509
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :sswitch_4a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 510
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 511
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->setSectionCoreContent(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    goto :goto_0

    .line 515
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :sswitch_56
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;-><init>()V

    .line 516
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 517
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->setTemplate(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    goto :goto_0

    .line 521
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    :sswitch_62
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;-><init>()V

    .line 522
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 523
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->addBadgeForCreator(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    goto :goto_0

    .line 527
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :sswitch_6e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;-><init>()V

    .line 528
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 529
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->addBadgeForDoc(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    goto :goto_0

    .line 533
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :sswitch_7a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;-><init>()V

    .line 534
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 535
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->setLink(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    goto/16 :goto_0

    .line 539
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;
    :sswitch_87
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 540
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 541
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->setSectionCrossSell(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    goto/16 :goto_0

    .line 545
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :sswitch_94
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 546
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 547
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->setSectionRelatedDocType(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    goto/16 :goto_0

    .line 551
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :sswitch_a1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;-><init>()V

    .line 552
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 553
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->addPromotedDoc(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    goto/16 :goto_0

    .line 469
    :sswitch_data_ae
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_26
        0x22 -> :sswitch_32
        0x2a -> :sswitch_3e
        0x32 -> :sswitch_4a
        0x3a -> :sswitch_56
        0x42 -> :sswitch_62
        0x4a -> :sswitch_6e
        0x52 -> :sswitch_7a
        0x5a -> :sswitch_87
        0x62 -> :sswitch_94
        0x6a -> :sswitch_a1
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    return-object v0
.end method

.method public setLink(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 191
    if-nez p1, :cond_8

    .line 192
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 194
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasLink:Z

    .line 195
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->link_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

    .line 196
    return-object p0
.end method

.method public setPlusOneData(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 138
    if-nez p1, :cond_8

    .line 139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 141
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasPlusOneData:Z

    .line 142
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->plusOneData_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    .line 143
    return-object p0
.end method

.method public setSectionBodyOfWork(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 78
    if-nez p1, :cond_8

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 81
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionBodyOfWork:Z

    .line 82
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->sectionBodyOfWork_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 83
    return-object p0
.end method

.method public setSectionCoreContent(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 98
    if-nez p1, :cond_8

    .line 99
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 101
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionCoreContent:Z

    .line 102
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->sectionCoreContent_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 103
    return-object p0
.end method

.method public setSectionCrossSell(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 118
    if-nez p1, :cond_8

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 121
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionCrossSell:Z

    .line 122
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->sectionCrossSell_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 123
    return-object p0
.end method

.method public setSectionMoreBy(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 58
    if-nez p1, :cond_8

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 61
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionMoreBy:Z

    .line 62
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->sectionMoreBy_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 63
    return-object p0
.end method

.method public setSectionRelated(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 18
    if-nez p1, :cond_8

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionRelated:Z

    .line 22
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->sectionRelated_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 23
    return-object p0
.end method

.method public setSectionRelatedDocType(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 38
    if-nez p1, :cond_8

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionRelatedDocType:Z

    .line 42
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->sectionRelatedDocType_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 43
    return-object p0
.end method

.method public setTemplate(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 211
    if-nez p1, :cond_8

    .line 212
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 214
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasTemplate:Z

    .line 215
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->template_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    .line 216
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionRelated()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 357
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionRelated()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 359
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionMoreBy()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 360
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionMoreBy()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 362
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasPlusOneData()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 363
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 365
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getWarningList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;

    .line 366
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_32

    .line 368
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionBodyOfWork()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 369
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionBodyOfWork()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 371
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionCoreContent()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 372
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionCoreContent()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 374
    :cond_5f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasTemplate()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 375
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 377
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getBadgeForCreatorList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_75
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    .line 378
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_75

    .line 380
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :cond_87
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getBadgeForDocList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    .line 381
    .restart local v0       #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8f

    .line 383
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :cond_a1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasLink()Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 384
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getLink()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 386
    :cond_b0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionCrossSell()Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 387
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionCrossSell()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 389
    :cond_bf
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionRelatedDocType()Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 390
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionRelatedDocType()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 392
    :cond_ce
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getPromotedDocList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;

    .line 393
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_d6

    .line 395
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    :cond_e8
    return-void
.end method
