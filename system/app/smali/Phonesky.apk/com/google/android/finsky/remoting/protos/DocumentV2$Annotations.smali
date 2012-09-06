.class public final Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocumentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocumentV2;
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

.field private hasOfferNote:Z

.field private hasPlusOneData:Z

.field private hasPrivacyPolicyUrl:Z

.field private hasReason:Z

.field private hasSectionBodyOfWork:Z

.field private hasSectionCoreContent:Z

.field private hasSectionCrossSell:Z

.field private hasSectionMoreBy:Z

.field private hasSectionRelated:Z

.field private hasSectionRelatedDocType:Z

.field private hasTemplate:Z

.field private link_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

.field private offerNote_:Ljava/lang/String;

.field private plusOneData_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

.field private privacyPolicyUrl_:Ljava/lang/String;

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

.field private reason_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;

.field private sectionBodyOfWork_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private sectionCoreContent_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private sectionCrossSell_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private sectionMoreBy_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private sectionRelatedDocType_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private sectionRelated_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private subscription_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;",
            ">;"
        }
    .end annotation
.end field

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

    .line 816
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 821
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionRelated_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 841
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionRelatedDocType_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 861
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionMoreBy_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 881
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionBodyOfWork_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 901
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionCoreContent_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 921
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionCrossSell_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 941
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->plusOneData_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    .line 960
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->warning_:Ljava/util/List;

    .line 994
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->link_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

    .line 1014
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->template_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    .line 1033
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForCreator_:Ljava/util/List;

    .line 1066
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForDoc_:Ljava/util/List;

    .line 1099
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->promotedDoc_:Ljava/util/List;

    .line 1133
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->offerNote_:Ljava/lang/String;

    .line 1149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->subscription_:Ljava/util/List;

    .line 1183
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->reason_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;

    .line 1203
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->privacyPolicyUrl_:Ljava/lang/String;

    .line 1311
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->cachedSize:I

    .line 816
    return-void
.end method


# virtual methods
.method public addBadgeForCreator(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 1050
    if-nez p1, :cond_8

    .line 1051
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1053
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForCreator_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1054
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForCreator_:Ljava/util/List;

    .line 1056
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForCreator_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    return-object p0
.end method

.method public addBadgeForDoc(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 1083
    if-nez p1, :cond_8

    .line 1084
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1086
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForDoc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1087
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForDoc_:Ljava/util/List;

    .line 1089
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForDoc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    return-object p0
.end method

.method public addPromotedDoc(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 1116
    if-nez p1, :cond_8

    .line 1117
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1119
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->promotedDoc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->promotedDoc_:Ljava/util/List;

    .line 1122
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->promotedDoc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1123
    return-object p0
.end method

.method public addSubscription(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 1166
    if-nez p1, :cond_8

    .line 1167
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1169
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->subscription_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->subscription_:Ljava/util/List;

    .line 1172
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->subscription_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1173
    return-object p0
.end method

.method public addWarning(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 977
    if-nez p1, :cond_8

    .line 978
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 980
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->warning_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 981
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->warning_:Ljava/util/List;

    .line 983
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->warning_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    return-object p0
.end method

.method public getBadgeForCreator(I)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .registers 3
    .parameter "index"

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForCreator_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    return-object v0
.end method

.method public getBadgeForCreatorCount()I
    .registers 2

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForCreator_:Ljava/util/List;

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
    .line 1036
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForCreator_:Ljava/util/List;

    return-object v0
.end method

.method public getBadgeForDoc(I)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .registers 3
    .parameter "index"

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForDoc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    return-object v0
.end method

.method public getBadgeForDocCount()I
    .registers 2

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForDoc_:Ljava/util/List;

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
    .line 1069
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForDoc_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1314
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->cachedSize:I

    if-gez v0, :cond_7

    .line 1316
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSerializedSize()I

    .line 1318
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->cachedSize:I

    return v0
.end method

.method public getLink()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;
    .registers 2

    .prologue
    .line 996
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->link_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

    return-object v0
.end method

.method public getOfferNote()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->offerNote_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    .registers 2

    .prologue
    .line 943
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->plusOneData_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    return-object v0
.end method

.method public getPrivacyPolicyUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->privacyPolicyUrl_:Ljava/lang/String;

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
    .line 1102
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->promotedDoc_:Ljava/util/List;

    return-object v0
.end method

.method public getReason()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;
    .registers 2

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->reason_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;

    return-object v0
.end method

.method public getSectionBodyOfWork()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .registers 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionBodyOfWork_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSectionCoreContent()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .registers 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionCoreContent_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSectionCrossSell()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .registers 2

    .prologue
    .line 923
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionCrossSell_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSectionMoreBy()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .registers 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionMoreBy_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSectionRelated()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .registers 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionRelated_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSectionRelatedDocType()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .registers 2

    .prologue
    .line 843
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionRelatedDocType_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 1323
    const/4 v2, 0x0

    .line 1324
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionRelated()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1325
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionRelated()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1328
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionMoreBy()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1329
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionMoreBy()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1332
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasPlusOneData()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1333
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1336
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getWarningList()Ljava/util/List;

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

    .line 1337
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_39

    .line 1340
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionBodyOfWork()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 1341
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionBodyOfWork()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1344
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCoreContent()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 1345
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionCoreContent()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1348
    :cond_6c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasTemplate()Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 1349
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1352
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getBadgeForCreatorList()Ljava/util/List;

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

    .line 1353
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    const/16 v3, 0x8

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_84

    .line 1356
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :cond_98
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getBadgeForDocList()Ljava/util/List;

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

    .line 1357
    .restart local v0       #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_a0

    .line 1360
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :cond_b4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasLink()Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 1361
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getLink()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1364
    :cond_c5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCrossSell()Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 1365
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionCrossSell()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1368
    :cond_d6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionRelatedDocType()Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 1369
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionRelatedDocType()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1372
    :cond_e7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getPromotedDocList()Ljava/util/List;

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

    .line 1373
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    const/16 v3, 0xd

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_ef

    .line 1376
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    :cond_103
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasOfferNote()Z

    move-result v3

    if-eqz v3, :cond_114

    .line 1377
    const/16 v3, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getOfferNote()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1380
    :cond_114
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSubscriptionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_130

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 1381
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    const/16 v3, 0x10

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_11c

    .line 1384
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_130
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasReason()Z

    move-result v3

    if-eqz v3, :cond_141

    .line 1385
    const/16 v3, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getReason()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1388
    :cond_141
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasPrivacyPolicyUrl()Z

    move-result v3

    if-eqz v3, :cond_152

    .line 1389
    const/16 v3, 0x12

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1392
    :cond_152
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->cachedSize:I

    .line 1393
    return v2
.end method

.method public getSubscriptionCount()I
    .registers 2

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->subscription_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSubscriptionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->subscription_:Ljava/util/List;

    return-object v0
.end method

.method public getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 2

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->template_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    return-object v0
.end method

.method public getWarning(I)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    .registers 3
    .parameter "index"

    .prologue
    .line 967
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->warning_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;

    return-object v0
.end method

.method public getWarningCount()I
    .registers 2

    .prologue
    .line 965
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->warning_:Ljava/util/List;

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
    .line 963
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->warning_:Ljava/util/List;

    return-object v0
.end method

.method public hasLink()Z
    .registers 2

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasLink:Z

    return v0
.end method

.method public hasOfferNote()Z
    .registers 2

    .prologue
    .line 1135
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasOfferNote:Z

    return v0
.end method

.method public hasPlusOneData()Z
    .registers 2

    .prologue
    .line 942
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasPlusOneData:Z

    return v0
.end method

.method public hasPrivacyPolicyUrl()Z
    .registers 2

    .prologue
    .line 1205
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasPrivacyPolicyUrl:Z

    return v0
.end method

.method public hasReason()Z
    .registers 2

    .prologue
    .line 1184
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasReason:Z

    return v0
.end method

.method public hasSectionBodyOfWork()Z
    .registers 2

    .prologue
    .line 882
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionBodyOfWork:Z

    return v0
.end method

.method public hasSectionCoreContent()Z
    .registers 2

    .prologue
    .line 902
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCoreContent:Z

    return v0
.end method

.method public hasSectionCrossSell()Z
    .registers 2

    .prologue
    .line 922
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCrossSell:Z

    return v0
.end method

.method public hasSectionMoreBy()Z
    .registers 2

    .prologue
    .line 862
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionMoreBy:Z

    return v0
.end method

.method public hasSectionRelated()Z
    .registers 2

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionRelated:Z

    return v0
.end method

.method public hasSectionRelatedDocType()Z
    .registers 2

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionRelatedDocType:Z

    return v0
.end method

.method public hasTemplate()Z
    .registers 2

    .prologue
    .line 1015
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasTemplate:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1401
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1402
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_da

    .line 1406
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1407
    :sswitch_d
    return-object p0

    .line 1412
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 1413
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1414
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setSectionRelated(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto :goto_0

    .line 1418
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :sswitch_1a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 1419
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1420
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setSectionMoreBy(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto :goto_0

    .line 1424
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :sswitch_26
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;-><init>()V

    .line 1425
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1426
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setPlusOneData(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto :goto_0

    .line 1430
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    :sswitch_32
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;-><init>()V

    .line 1431
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1432
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->addWarning(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto :goto_0

    .line 1436
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    :sswitch_3e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 1437
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1438
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setSectionBodyOfWork(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto :goto_0

    .line 1442
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :sswitch_4a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 1443
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1444
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setSectionCoreContent(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto :goto_0

    .line 1448
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :sswitch_56
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;-><init>()V

    .line 1449
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1450
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setTemplate(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto :goto_0

    .line 1454
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    :sswitch_62
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;-><init>()V

    .line 1455
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1456
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->addBadgeForCreator(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto :goto_0

    .line 1460
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :sswitch_6e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;-><init>()V

    .line 1461
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1462
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->addBadgeForDoc(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto :goto_0

    .line 1466
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :sswitch_7a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;-><init>()V

    .line 1467
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1468
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setLink(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto/16 :goto_0

    .line 1472
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;
    :sswitch_87
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 1473
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1474
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setSectionCrossSell(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto/16 :goto_0

    .line 1478
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :sswitch_94
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 1479
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1480
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setSectionRelatedDocType(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto/16 :goto_0

    .line 1484
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :sswitch_a1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;-><init>()V

    .line 1485
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1486
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->addPromotedDoc(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto/16 :goto_0

    .line 1490
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    :sswitch_ae
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setOfferNote(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto/16 :goto_0

    .line 1494
    :sswitch_b7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;-><init>()V

    .line 1495
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1496
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->addSubscription(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto/16 :goto_0

    .line 1500
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :sswitch_c4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;-><init>()V

    .line 1501
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1502
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setReason(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto/16 :goto_0

    .line 1506
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;
    :sswitch_d1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setPrivacyPolicyUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto/16 :goto_0

    .line 1402
    :sswitch_data_da
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
        0x72 -> :sswitch_ae
        0x82 -> :sswitch_b7
        0x8a -> :sswitch_c4
        0x92 -> :sswitch_d1
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
    .line 813
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    return-object v0
.end method

.method public setLink(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 998
    if-nez p1, :cond_8

    .line 999
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1001
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasLink:Z

    .line 1002
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->link_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

    .line 1003
    return-object p0
.end method

.method public setOfferNote(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 1137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasOfferNote:Z

    .line 1138
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->offerNote_:Ljava/lang/String;

    .line 1139
    return-object p0
.end method

.method public setPlusOneData(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 945
    if-nez p1, :cond_8

    .line 946
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 948
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasPlusOneData:Z

    .line 949
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->plusOneData_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    .line 950
    return-object p0
.end method

.method public setPrivacyPolicyUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 1207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasPrivacyPolicyUrl:Z

    .line 1208
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->privacyPolicyUrl_:Ljava/lang/String;

    .line 1209
    return-object p0
.end method

.method public setReason(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 1187
    if-nez p1, :cond_8

    .line 1188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1190
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasReason:Z

    .line 1191
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->reason_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;

    .line 1192
    return-object p0
.end method

.method public setSectionBodyOfWork(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 885
    if-nez p1, :cond_8

    .line 886
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 888
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionBodyOfWork:Z

    .line 889
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionBodyOfWork_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 890
    return-object p0
.end method

.method public setSectionCoreContent(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 905
    if-nez p1, :cond_8

    .line 906
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 908
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCoreContent:Z

    .line 909
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionCoreContent_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 910
    return-object p0
.end method

.method public setSectionCrossSell(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 925
    if-nez p1, :cond_8

    .line 926
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 928
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCrossSell:Z

    .line 929
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionCrossSell_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 930
    return-object p0
.end method

.method public setSectionMoreBy(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 865
    if-nez p1, :cond_8

    .line 866
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 868
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionMoreBy:Z

    .line 869
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionMoreBy_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 870
    return-object p0
.end method

.method public setSectionRelated(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 825
    if-nez p1, :cond_8

    .line 826
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 828
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionRelated:Z

    .line 829
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionRelated_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 830
    return-object p0
.end method

.method public setSectionRelatedDocType(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 845
    if-nez p1, :cond_8

    .line 846
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 848
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionRelatedDocType:Z

    .line 849
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionRelatedDocType_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 850
    return-object p0
.end method

.method public setTemplate(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .registers 3
    .parameter "value"

    .prologue
    .line 1018
    if-nez p1, :cond_8

    .line 1019
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1021
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasTemplate:Z

    .line 1022
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->template_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    .line 1023
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
    .line 1258
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionRelated()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1259
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionRelated()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1261
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionMoreBy()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1262
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionMoreBy()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1264
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasPlusOneData()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1265
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1267
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getWarningList()Ljava/util/List;

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

    .line 1268
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_32

    .line 1270
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionBodyOfWork()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1271
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionBodyOfWork()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1273
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCoreContent()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1274
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionCoreContent()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1276
    :cond_5f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasTemplate()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 1277
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1279
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getBadgeForCreatorList()Ljava/util/List;

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

    .line 1280
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_75

    .line 1282
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :cond_87
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getBadgeForDocList()Ljava/util/List;

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

    .line 1283
    .restart local v0       #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8f

    .line 1285
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :cond_a1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasLink()Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 1286
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getLink()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1288
    :cond_b0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCrossSell()Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 1289
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionCrossSell()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1291
    :cond_bf
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionRelatedDocType()Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 1292
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionRelatedDocType()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1294
    :cond_ce
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getPromotedDocList()Ljava/util/List;

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

    .line 1295
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_d6

    .line 1297
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    :cond_e8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasOfferNote()Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 1298
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getOfferNote()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1300
    :cond_f7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSubscriptionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ff
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_111

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 1301
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_ff

    .line 1303
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_111
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasReason()Z

    move-result v2

    if-eqz v2, :cond_120

    .line 1304
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getReason()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1306
    :cond_120
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasPrivacyPolicyUrl()Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 1307
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1309
    :cond_12f
    return-void
.end method
