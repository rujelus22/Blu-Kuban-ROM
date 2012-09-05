.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppDetails"
.end annotation


# instance fields
.field private appCategory_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private contentRating_:I

.field private developerEmail_:Ljava/lang/String;

.field private developerName_:Ljava/lang/String;

.field private developerWebsite_:Ljava/lang/String;

.field private file_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private hasContentRating:Z

.field private hasDeveloperEmail:Z

.field private hasDeveloperName:Z

.field private hasDeveloperWebsite:Z

.field private hasInstallationSize:Z

.field private hasMajorVersionNumber:Z

.field private hasNumDownloads:Z

.field private hasPackageName:Z

.field private hasRecentChangesHtml:Z

.field private hasTitle:Z

.field private hasUploadDate:Z

.field private hasVersionCode:Z

.field private hasVersionString:Z

.field private installationSize_:J

.field private majorVersionNumber_:I

.field private numDownloads_:Ljava/lang/String;

.field private packageName_:Ljava/lang/String;

.field private permission_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recentChangesHtml_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field private uploadDate_:Ljava/lang/String;

.field private versionCode_:I

.field private versionString_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 471
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 476
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->developerName_:Ljava/lang/String;

    .line 493
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->majorVersionNumber_:I

    .line 510
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->versionCode_:I

    .line 527
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->versionString_:Ljava/lang/String;

    .line 544
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->title_:Ljava/lang/String;

    .line 560
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->appCategory_:Ljava/util/List;

    .line 594
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->contentRating_:I

    .line 611
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->installationSize_:J

    .line 627
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->permission_:Ljava/util/List;

    .line 661
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->developerEmail_:Ljava/lang/String;

    .line 678
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->developerWebsite_:Ljava/lang/String;

    .line 695
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->numDownloads_:Ljava/lang/String;

    .line 712
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->packageName_:Ljava/lang/String;

    .line 729
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->recentChangesHtml_:Ljava/lang/String;

    .line 746
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->uploadDate_:Ljava/lang/String;

    .line 762
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->file_:Ljava/util/List;

    .line 870
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->cachedSize:I

    .line 471
    return-void
.end method


# virtual methods
.method public addAppCategory(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 577
    if-nez p1, :cond_8

    .line 578
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 580
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->appCategory_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->appCategory_:Ljava/util/List;

    .line 583
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->appCategory_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    return-object p0
.end method

.method public addFile(Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 779
    if-nez p1, :cond_8

    .line 780
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 782
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->file_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->file_:Ljava/util/List;

    .line 785
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->file_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    return-object p0
.end method

.method public addPermission(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 644
    if-nez p1, :cond_8

    .line 645
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 647
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->permission_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 648
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->permission_:Ljava/util/List;

    .line 650
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->permission_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    return-object p0
.end method

.method public getAppCategoryList()Ljava/util/List;
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
    .line 563
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->appCategory_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 872
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->cachedSize:I

    if-gez v0, :cond_7

    .line 874
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getSerializedSize()I

    .line 876
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->cachedSize:I

    return v0
.end method

.method public getContentRating()I
    .registers 2

    .prologue
    .line 595
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->contentRating_:I

    return v0
.end method

.method public getDeveloperEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->developerEmail_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloperName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->developerName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloperWebsite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->developerWebsite_:Ljava/lang/String;

    return-object v0
.end method

.method public getFileList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 765
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->file_:Ljava/util/List;

    return-object v0
.end method

.method public getInstallationSize()J
    .registers 3

    .prologue
    .line 612
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->installationSize_:J

    return-wide v0
.end method

.method public getMajorVersionNumber()I
    .registers 2

    .prologue
    .line 494
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->majorVersionNumber_:I

    return v0
.end method

.method public getNumDownloads()Ljava/lang/String;
    .registers 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->numDownloads_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionList()Ljava/util/List;
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
    .line 630
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->permission_:Ljava/util/List;

    return-object v0
.end method

.method public getRecentChangesHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->recentChangesHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    .line 880
    const/4 v3, 0x0

    .line 881
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperName()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 882
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getDeveloperName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 885
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasMajorVersionNumber()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 886
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getMajorVersionNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 889
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionCode()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 890
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 893
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionString()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 894
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 897
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasTitle()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 898
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 902
    :cond_51
    const/4 v0, 0x0

    .line 903
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getAppCategoryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 904
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_5a

    .line 907
    .end local v1           #element:Ljava/lang/String;
    :cond_6c
    add-int/2addr v3, v0

    .line 908
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getAppCategoryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 910
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasContentRating()Z

    move-result v4

    if-eqz v4, :cond_89

    .line 911
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getContentRating()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 914
    :cond_89
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasInstallationSize()Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 915
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getInstallationSize()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 919
    :cond_9a
    const/4 v0, 0x0

    .line 920
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPermissionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 921
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_a3

    .line 924
    .end local v1           #element:Ljava/lang/String;
    :cond_b5
    add-int/2addr v3, v0

    .line 925
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPermissionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 927
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperEmail()Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 928
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getDeveloperEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 931
    :cond_d2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperWebsite()Z

    move-result v4

    if-eqz v4, :cond_e3

    .line 932
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getDeveloperWebsite()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 935
    :cond_e3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasNumDownloads()Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 936
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getNumDownloads()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 939
    :cond_f4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasPackageName()Z

    move-result v4

    if-eqz v4, :cond_105

    .line 940
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 943
    :cond_105
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasRecentChangesHtml()Z

    move-result v4

    if-eqz v4, :cond_116

    .line 944
    const/16 v4, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getRecentChangesHtml()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 947
    :cond_116
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasUploadDate()Z

    move-result v4

    if-eqz v4, :cond_127

    .line 948
    const/16 v4, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getUploadDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 951
    :cond_127
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getFileList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_143

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;

    .line 952
    .local v1, element:Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    const/16 v4, 0x11

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_12f

    .line 955
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    :cond_143
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->cachedSize:I

    .line 956
    return v3
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->uploadDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    .prologue
    .line 511
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->versionCode_:I

    return v0
.end method

.method public getVersionString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->versionString_:Ljava/lang/String;

    return-object v0
.end method

.method public hasContentRating()Z
    .registers 2

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasContentRating:Z

    return v0
.end method

.method public hasDeveloperEmail()Z
    .registers 2

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperEmail:Z

    return v0
.end method

.method public hasDeveloperName()Z
    .registers 2

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperName:Z

    return v0
.end method

.method public hasDeveloperWebsite()Z
    .registers 2

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperWebsite:Z

    return v0
.end method

.method public hasInstallationSize()Z
    .registers 2

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasInstallationSize:Z

    return v0
.end method

.method public hasMajorVersionNumber()Z
    .registers 2

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasMajorVersionNumber:Z

    return v0
.end method

.method public hasNumDownloads()Z
    .registers 2

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasNumDownloads:Z

    return v0
.end method

.method public hasPackageName()Z
    .registers 2

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasPackageName:Z

    return v0
.end method

.method public hasRecentChangesHtml()Z
    .registers 2

    .prologue
    .line 731
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasRecentChangesHtml:Z

    return v0
.end method

.method public hasTitle()Z
    .registers 2

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasTitle:Z

    return v0
.end method

.method public hasUploadDate()Z
    .registers 2

    .prologue
    .line 748
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasUploadDate:Z

    return v0
.end method

.method public hasVersionCode()Z
    .registers 2

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionCode:Z

    return v0
.end method

.method public hasVersionString()Z
    .registers 2

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionString:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 963
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 964
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_94

    .line 968
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 969
    :sswitch_d
    return-object p0

    .line 974
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setDeveloperName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 978
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setMajorVersionNumber(I)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 982
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setVersionCode(I)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 986
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setVersionString(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 990
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 994
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->addAppCategory(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 998
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setContentRating(I)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1002
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setInstallationSize(J)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1006
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->addPermission(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1010
    :sswitch_56
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setDeveloperEmail(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1014
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setDeveloperWebsite(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1018
    :sswitch_66
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setNumDownloads(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1022
    :sswitch_6e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setPackageName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1026
    :sswitch_76
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setRecentChangesHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1030
    :sswitch_7e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setUploadDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto/16 :goto_0

    .line 1034
    :sswitch_87
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;-><init>()V

    .line 1035
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1036
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->addFile(Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto/16 :goto_0

    .line 964
    :sswitch_data_94
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_2e
        0x3a -> :sswitch_36
        0x40 -> :sswitch_3e
        0x48 -> :sswitch_46
        0x52 -> :sswitch_4e
        0x5a -> :sswitch_56
        0x62 -> :sswitch_5e
        0x6a -> :sswitch_66
        0x72 -> :sswitch_6e
        0x7a -> :sswitch_76
        0x82 -> :sswitch_7e
        0x8a -> :sswitch_87
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
    .line 469
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    return-object v0
.end method

.method public setContentRating(I)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasContentRating:Z

    .line 599
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->contentRating_:I

    .line 600
    return-object p0
.end method

.method public setDeveloperEmail(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 665
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperEmail:Z

    .line 666
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->developerEmail_:Ljava/lang/String;

    .line 667
    return-object p0
.end method

.method public setDeveloperName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperName:Z

    .line 481
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->developerName_:Ljava/lang/String;

    .line 482
    return-object p0
.end method

.method public setDeveloperWebsite(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 682
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperWebsite:Z

    .line 683
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->developerWebsite_:Ljava/lang/String;

    .line 684
    return-object p0
.end method

.method public setInstallationSize(J)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .registers 4
    .parameter "value"

    .prologue
    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasInstallationSize:Z

    .line 616
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->installationSize_:J

    .line 617
    return-object p0
.end method

.method public setMajorVersionNumber(I)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasMajorVersionNumber:Z

    .line 498
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->majorVersionNumber_:I

    .line 499
    return-object p0
.end method

.method public setNumDownloads(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasNumDownloads:Z

    .line 700
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->numDownloads_:Ljava/lang/String;

    .line 701
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasPackageName:Z

    .line 717
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->packageName_:Ljava/lang/String;

    .line 718
    return-object p0
.end method

.method public setRecentChangesHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasRecentChangesHtml:Z

    .line 734
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->recentChangesHtml_:Ljava/lang/String;

    .line 735
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasTitle:Z

    .line 549
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->title_:Ljava/lang/String;

    .line 550
    return-object p0
.end method

.method public setUploadDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasUploadDate:Z

    .line 751
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->uploadDate_:Ljava/lang/String;

    .line 752
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionCode:Z

    .line 515
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->versionCode_:I

    .line 516
    return-object p0
.end method

.method public setVersionString(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionString:Z

    .line 532
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->versionString_:Ljava/lang/String;

    .line 533
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
    .line 820
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperName()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 821
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getDeveloperName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 823
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasMajorVersionNumber()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 824
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getMajorVersionNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 826
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionCode()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 827
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 829
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionString()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 830
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 832
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 833
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 835
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getAppCategoryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 836
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_4e

    .line 838
    .end local v0           #element:Ljava/lang/String;
    :cond_5f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasContentRating()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 839
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getContentRating()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 841
    :cond_6e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasInstallationSize()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 842
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getInstallationSize()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 844
    :cond_7d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPermissionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_85
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 845
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_85

    .line 847
    .end local v0           #element:Ljava/lang/String;
    :cond_97
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperEmail()Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 848
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getDeveloperEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 850
    :cond_a6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperWebsite()Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 851
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getDeveloperWebsite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 853
    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasNumDownloads()Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 854
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getNumDownloads()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 856
    :cond_c4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasPackageName()Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 857
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 859
    :cond_d3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasRecentChangesHtml()Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 860
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getRecentChangesHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 862
    :cond_e2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasUploadDate()Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 863
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getUploadDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 865
    :cond_f1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getFileList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;

    .line 866
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_f9

    .line 868
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    :cond_10b
    return-void
.end method
