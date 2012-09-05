.class public Lcom/sec/android/app/sns/db/SnsDBUtil;
.super Ljava/lang/Object;
.source "SnsDBUtil.java"


# static fields
.field private static mDbHelper:Lcom/sec/android/app/sns/db/SnsDBHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sns/db/SnsDBUtil;->mDbHelper:Lcom/sec/android/app/sns/db/SnsDBHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static activityOffsetwhere(Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, actorList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 95
    .local v0, content:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v1, where:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/sec/android/app/sns/db/SnsDBUtil;->combineOffsetContent(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v2, "offset_type = 0 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    if-nez v0, :cond_1b

    .line 101
    const-string v2, "content IS NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :goto_16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 103
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16
.end method

.method private static activityStatusListOffsetwhere(I)Ljava/lang/String;
    .registers 4
    .parameter "sptype"

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v0, where:Ljava/lang/StringBuilder;
    const-string v1, "offset_type = 13 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service_provider = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static albumGetOffsetwhere()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v0, where:Ljava/lang/StringBuilder;
    const-string v1, "offset_type = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static combineOffsetContent(Lcom/sec/android/app/sns/request/data/SnsRequest;)Ljava/lang/String;
    .registers 11
    .parameter "req"

    .prologue
    .line 581
    const/4 v5, 0x0

    .line 583
    .local v5, result:Ljava/lang/String;
    instance-of v8, p0, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;

    if-eqz v8, :cond_11

    move-object v0, p0

    .line 585
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;

    .line 586
    .local v0, activityReq:Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;->getActorMap()Ljava/util/Map;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/sns/db/SnsDBUtil;->combineOffsetContent(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 627
    .end local v0           #activityReq:Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;
    :cond_10
    :goto_10
    return-object v5

    .line 588
    :cond_11
    instance-of v8, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;

    if-eqz v8, :cond_25

    move-object v3, p0

    .line 590
    check-cast v3, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;

    .line 591
    .local v3, commentReq:Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;
    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getTargetID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getTargetType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/app/sns/db/SnsDBUtil;->combineOffsetContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 593
    goto :goto_10

    .end local v3           #commentReq:Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;
    :cond_25
    instance-of v8, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;

    if-eqz v8, :cond_31

    move-object v1, p0

    .line 595
    check-cast v1, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;

    .line 596
    .local v1, albumgetReq:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;->getPeopleID()Ljava/lang/String;

    move-result-object v5

    .line 598
    goto :goto_10

    .end local v1           #albumgetReq:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;
    :cond_31
    instance-of v8, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;

    if-eqz v8, :cond_3d

    move-object v2, p0

    .line 600
    check-cast v2, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;

    .line 601
    .local v2, albumretrieveReq:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->getAlbumID()Ljava/lang/String;

    move-result-object v5

    .line 603
    goto :goto_10

    .end local v2           #albumretrieveReq:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;
    :cond_3d
    instance-of v8, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;

    if-eqz v8, :cond_51

    move-object v7, p0

    .line 605
    check-cast v7, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;

    .line 606
    .local v7, threadretrieveReq:Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;
    invoke-virtual {v7}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;->getFolder()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;->getThreadID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/app/sns/db/SnsDBUtil;->combineOffsetContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 609
    goto :goto_10

    .end local v7           #threadretrieveReq:Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;
    :cond_51
    instance-of v8, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;

    if-nez v8, :cond_10

    .line 615
    instance-of v8, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;

    if-eqz v8, :cond_65

    move-object v4, p0

    .line 617
    check-cast v4, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;

    .line 618
    .local v4, messageFolerRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;
    invoke-virtual {v4}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getInternalSp()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 620
    goto :goto_10

    .end local v4           #messageFolerRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;
    :cond_65
    instance-of v8, p0, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;

    if-eqz v8, :cond_10

    move-object v6, p0

    .line 622
    check-cast v6, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;

    .line 623
    .local v6, scheduleRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;
    invoke-virtual {v6}, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->getInternalSp()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_10
.end method

.method public static combineOffsetContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "content1"
    .parameter "content2"

    .prologue
    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static combineOffsetContent(Ljava/util/Map;)Ljava/lang/String;
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 638
    .local p0, actorList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    .line 639
    .local v5, result:Ljava/lang/String;
    const-string v0, ","

    .line 641
    .local v0, REGEX:Ljava/lang/String;
    const-string v5, ""

    .line 642
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 643
    .local v2, hmKeys:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 645
    const/4 v3, 0x0

    .local v3, i:I
    :goto_11
    array-length v8, v2

    if-ge v3, v8, :cond_72

    .line 646
    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 647
    .local v7, sp:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 648
    .local v1, friendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 650
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_6f

    .line 651
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 652
    .local v6, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 653
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 655
    add-int/lit8 v8, v3, 0x1

    array-length v9, v2

    if-ne v8, v9, :cond_65

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v8, v9, :cond_68

    .line 656
    :cond_65
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 658
    :cond_68
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 650
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 645
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 662
    .end local v1           #friendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #j:I
    .end local v7           #sp:I
    :cond_72
    return-object v5
.end method

.method private static commentOffsetwhere(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "sptype"
    .parameter "targetId"
    .parameter "targetType"

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, content:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v1, where:Ljava/lang/StringBuilder;
    invoke-static {p1, p2}, Lcom/sec/android/app/sns/db/SnsDBUtil;->combineOffsetContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string v2, "offset_type = 3 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service_provider = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static commentfavoriteOffsetwhere(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "sptype"
    .parameter "targetId"

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v0, where:Ljava/lang/StringBuilder;
    const-string v1, "offset_type = 4 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service_provider = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static convertBoolean(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "result"

    .prologue
    .line 827
    if-eqz p0, :cond_10

    .line 828
    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "false"

    .line 829
    :goto_c
    return-object v0

    .line 828
    :cond_d
    const-string v0, "true"

    goto :goto_c

    .line 829
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static findActivity(Landroid/content/Context;Ljava/lang/String;)I
    .registers 21
    .parameter "context"
    .parameter "activityID"

    .prologue
    .line 719
    const/4 v13, 0x0

    .line 721
    .local v13, result:I
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 722
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_9

    move v14, v13

    .line 784
    .end local v13           #result:I
    .local v14, result:I
    :goto_8
    return v14

    .line 726
    .end local v14           #result:I
    .restart local v13       #result:I
    :cond_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 727
    .local v15, where1:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    const-string v2, "activity"

    const/4 v3, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 732
    .local v9, c1:Landroid/database/Cursor;
    if-eqz v9, :cond_49

    .line 733
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_46

    .line 734
    add-int/lit8 v13, v13, 0x1

    .line 736
    :cond_46
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 739
    :cond_49
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 740
    .local v16, where2:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    const-string v2, "friend_activity"

    const/4 v3, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 745
    .local v10, c2:Landroid/database/Cursor;
    if-eqz v10, :cond_8b

    .line 746
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_88

    .line 747
    add-int/lit8 v13, v13, 0x2

    .line 749
    :cond_88
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 752
    :cond_8b
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 753
    .local v17, where3:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    const-string v2, "group_activity"

    const/4 v3, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 758
    .local v11, c3:Landroid/database/Cursor;
    if-eqz v11, :cond_cd

    .line 759
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_ca

    .line 760
    add-int/lit8 v13, v13, 0x4

    .line 762
    :cond_ca
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 765
    :cond_cd
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 766
    .local v18, where4:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    const-string v2, "activity_statuslist"

    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 771
    .local v12, c4:Landroid/database/Cursor;
    if-eqz v12, :cond_10f

    .line 772
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_10c

    .line 773
    add-int/lit8 v13, v13, 0x8

    .line 775
    :cond_10c
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 779
    :cond_10f
    invoke-static {}, Lcom/sec/android/app/sns/db/SnsDBHelper;->decreaseDBRefCount()V

    .line 780
    invoke-static {}, Lcom/sec/android/app/sns/db/SnsDBHelper;->getDBRefCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_11c

    .line 781
    invoke-static {}, Lcom/sec/android/app/sns/db/SnsDBHelper;->resetDBRefCount()V

    :cond_11c
    move v14, v13

    .line 784
    .end local v13           #result:I
    .restart local v14       #result:I
    goto/16 :goto_8
.end method

.method private static friendGroupingGetOffsetwhere(I)Ljava/lang/String;
    .registers 4
    .parameter "sptype"

    .prologue
    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 797
    .local v0, where:Ljava/lang/StringBuilder;
    const-string v1, "offset_type = 5 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service_provider = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static friendListRetrieveExOffsetwhere(I)Ljava/lang/String;
    .registers 4
    .parameter "sptype"

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v0, where:Ljava/lang/StringBuilder;
    const-string v1, "offset_type = 7 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service_provider = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static friendListRetrieveOffsetwhere(I)Ljava/lang/String;
    .registers 4
    .parameter "sptype"

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v0, where:Ljava/lang/StringBuilder;
    const-string v1, "offset_type = 6 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service_provider = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getActivityOffset(Landroid/content/Context;Ljava/util/Map;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    .registers 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/sec/android/app/sns/db/SnsDBUtilListData;"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, ActorList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->activityOffsetwhere(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getOffset(Landroid/content/Context;ILjava/lang/String;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v0

    return-object v0
.end method

.method public static getAlbumGetOffset(Landroid/content/Context;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    .registers 3
    .parameter "context"

    .prologue
    .line 433
    const/4 v0, 0x1

    invoke-static {}, Lcom/sec/android/app/sns/db/SnsDBUtil;->albumGetOffsetwhere()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getOffset(Landroid/content/Context;ILjava/lang/String;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v0

    return-object v0
.end method

.method public static getCommentFavoriteOffset(Landroid/content/Context;ILjava/lang/String;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    .registers 5
    .parameter "context"
    .parameter "sptype"
    .parameter "targetId"

    .prologue
    .line 421
    const/4 v0, 0x4

    invoke-static {p1, p2}, Lcom/sec/android/app/sns/db/SnsDBUtil;->commentfavoriteOffsetwhere(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getOffset(Landroid/content/Context;ILjava/lang/String;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v0

    return-object v0
.end method

.method public static getCommentOffset(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    .registers 6
    .parameter "context"
    .parameter "sptype"
    .parameter "targetId"
    .parameter "targetType"

    .prologue
    .line 408
    const/4 v0, 0x3

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sns/db/SnsDBUtil;->commentOffsetwhere(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getOffset(Landroid/content/Context;ILjava/lang/String;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5
    .parameter "context"

    .prologue
    .line 69
    const-class v3, Lcom/sec/android/app/sns/db/SnsDBUtil;

    monitor-enter v3

    const/4 v0, 0x0

    .line 71
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_4
    sget-object v2, Lcom/sec/android/app/sns/db/SnsDBUtil;->mDbHelper:Lcom/sec/android/app/sns/db/SnsDBHelper;

    if-nez v2, :cond_e

    .line 72
    invoke-static {p0}, Lcom/sec/android/app/sns/db/SnsDBHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sns/db/SnsDBHelper;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/sns/db/SnsDBUtil;->mDbHelper:Lcom/sec/android/app/sns/db/SnsDBHelper;
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_21

    .line 76
    :cond_e
    :try_start_e
    invoke-static {}, Lcom/sec/android/app/sns/db/SnsDBHelper;->increaseDBRefCount()V

    .line 77
    sget-object v2, Lcom/sec/android/app/sns/db/SnsDBUtil;->mDbHelper:Lcom/sec/android/app/sns/db/SnsDBHelper;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/db/SnsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_16} :catch_19

    move-result-object v0

    .line 83
    :goto_17
    monitor-exit v3

    return-object v0

    .line 78
    :catch_19
    move-exception v1

    .line 79
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 80
    invoke-static {}, Lcom/sec/android/app/sns/db/SnsDBHelper;->decreaseDBRefCount()V
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_21

    goto :goto_17

    .line 69
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_21
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getFriendGroupingOffset(Landroid/content/Context;I)Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    .registers 4
    .parameter "context"
    .parameter "sptype"

    .prologue
    .line 473
    const/4 v0, 0x5

    invoke-static {p1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->friendGroupingGetOffsetwhere(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getOffset(Landroid/content/Context;ILjava/lang/String;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v0

    return-object v0
.end method

.method public static getFriendListRetrieveExOffset(Landroid/content/Context;I)Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    .registers 4
    .parameter "context"
    .parameter "sptype"

    .prologue
    .line 498
    const/4 v0, 0x7

    invoke-static {p1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->friendListRetrieveExOffsetwhere(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getOffset(Landroid/content/Context;ILjava/lang/String;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v0

    return-object v0
.end method

.method public static getFriendListRetrieveOffset(Landroid/content/Context;I)Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    .registers 4
    .parameter "context"
    .parameter "spType"

    .prologue
    .line 485
    const/4 v0, 0x6

    invoke-static {p1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->friendListRetrieveOffsetwhere(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getOffset(Landroid/content/Context;ILjava/lang/String;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v0

    return-object v0
.end method

.method public static getGroupRetrieveOffset(Landroid/content/Context;I)Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    .registers 4
    .parameter "context"
    .parameter "spType"

    .prologue
    .line 510
    const/16 v0, 0x8

    invoke-static {p1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->groupRetrieveOffsetwhere(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getOffset(Landroid/content/Context;ILjava/lang/String;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v0

    return-object v0
.end method

.method public static getLatestActivityTime(Landroid/content/Context;I)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "activityType"

    .prologue
    const/4 v4, 0x0

    .line 685
    const/4 v9, 0x0

    .line 687
    .local v9, time:Ljava/lang/String;
    invoke-static {p0}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 688
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_a

    move-object v10, v9

    .line 705
    .end local v9           #time:Ljava/lang/String;
    .local v10, time:Ljava/lang/String;
    :goto_9
    return-object v10

    .line 691
    .end local v10           #time:Ljava/lang/String;
    .restart local v9       #time:Ljava/lang/String;
    :cond_a
    invoke-static {p1}, Lcom/sec/android/app/sns/type/SnsActivityType;->getTableName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "time"

    aput-object v5, v2, v3

    const-string v3, "activity_id IS NOT NULL"

    const-string v7, "time DESC"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 696
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_3f

    .line 697
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3c

    .line 698
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 699
    const-string v1, "time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 702
    :cond_3c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3f
    move-object v10, v9

    .line 705
    .end local v9           #time:Ljava/lang/String;
    .restart local v10       #time:Ljava/lang/String;
    goto :goto_9
.end method

.method public static getMessageFolderRetireveOffset(Landroid/content/Context;I)Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    .registers 4
    .parameter "context"
    .parameter "internalSp"

    .prologue
    .line 522
    const/16 v0, 0x9

    const/16 v1, 0x10

    invoke-static {v1, p1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->messageFolderRetrieveOffsetwhere(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getOffset(Landroid/content/Context;ILjava/lang/String;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v0

    return-object v0
.end method

.method public static getNotificationRetrieveOffset(Landroid/content/Context;I)Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    .registers 4
    .parameter "context"
    .parameter "sptype"

    .prologue
    .line 534
    const/16 v0, 0xa

    invoke-static {p1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->notificationRetrieveOffsetwhere(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getOffset(Landroid/content/Context;ILjava/lang/String;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v0

    return-object v0
.end method

.method private static getOffset(Landroid/content/Context;ILjava/lang/String;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    .registers 18
    .parameter "context"
    .parameter "type"
    .parameter "where"

    .prologue
    .line 345
    const/4 v8, 0x0

    .line 346
    .local v8, c:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 347
    .local v11, result:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "start_offset"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "max_count"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "start_context"

    aput-object v3, v2, v1

    .line 352
    .local v2, columns:[Ljava/lang/String;
    invoke-static {p0}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 353
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1c

    move-object v12, v11

    .line 382
    .end local v11           #result:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    .local v12, result:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    :goto_1b
    return-object v12

    .line 357
    .end local v12           #result:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    .restart local v11       #result:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    :cond_1c
    const-string v1, "offset"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 359
    if-eqz v8, :cond_57

    .line 361
    :try_start_2a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 362
    const-string v1, "start_offset"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 363
    .local v14, startOffset:I
    const-string v1, "max_count"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 364
    .local v10, maxCount:I
    const-string v1, "start_context"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 367
    .local v13, startContext:Ljava/lang/String;
    new-instance v12, Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    invoke-direct {v12, v14, v10, v13}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;-><init>(IILjava/lang/String;)V
    :try_end_53
    .catchall {:try_start_2a .. :try_end_53} :catchall_6b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_53} :catch_66

    .end local v11           #result:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    .restart local v12       #result:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    move-object v11, v12

    .line 372
    .end local v10           #maxCount:I
    .end local v12           #result:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    .end local v13           #startContext:Ljava/lang/String;
    .end local v14           #startOffset:I
    .restart local v11       #result:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    :cond_54
    :goto_54
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 377
    :cond_57
    invoke-static {}, Lcom/sec/android/app/sns/db/SnsDBHelper;->decreaseDBRefCount()V

    .line 378
    invoke-static {}, Lcom/sec/android/app/sns/db/SnsDBHelper;->getDBRefCount()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_64

    .line 379
    invoke-static {}, Lcom/sec/android/app/sns/db/SnsDBHelper;->resetDBRefCount()V

    :cond_64
    move-object v12, v11

    .line 382
    .end local v11           #result:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    .restart local v12       #result:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    goto :goto_1b

    .line 369
    .end local v12           #result:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    .restart local v11       #result:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    :catch_66
    move-exception v9

    .line 370
    .local v9, e:Ljava/lang/Exception;
    :try_start_67
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_54

    .line 372
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_6b
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getScheduleRetrieveOffset(Landroid/content/Context;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    .registers 3
    .parameter "context"

    .prologue
    .line 545
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->scheduleRetrieveOffsetwhere(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getOffset(Landroid/content/Context;ILjava/lang/String;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v0

    return-object v0
.end method

.method public static getSearchingSearchOffset(Landroid/content/Context;I)Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    .registers 4
    .parameter "context"
    .parameter "spType"

    .prologue
    .line 568
    const/16 v0, 0xb

    invoke-static {p1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->searchingSearchOffsetwhere(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getOffset(Landroid/content/Context;ILjava/lang/String;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v0

    return-object v0
.end method

.method public static getStatusListOffset(Landroid/content/Context;I)Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    .registers 4
    .parameter "context"
    .parameter "sptype"

    .prologue
    .line 557
    const/16 v0, 0xd

    invoke-static {p1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->activityStatusListOffsetwhere(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getOffset(Landroid/content/Context;ILjava/lang/String;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v0

    return-object v0
.end method

.method public static getThreadRetrieveOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    .registers 5
    .parameter "context"
    .parameter "folder"
    .parameter "threadId"

    .prologue
    .line 460
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Lcom/sec/android/app/sns/db/SnsDBUtil;->threadOffsetwhere(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getOffset(Landroid/content/Context;ILjava/lang/String;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v0

    return-object v0
.end method

.method private static groupRetrieveOffsetwhere(I)Ljava/lang/String;
    .registers 4
    .parameter "sptype"

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .local v0, where:Ljava/lang/StringBuilder;
    const-string v1, "offset_type = 8 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service_provider = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static messageFolderRetrieveOffsetwhere(II)Ljava/lang/String;
    .registers 6
    .parameter "sptype"
    .parameter "internalSp"

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, content:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v1, where:Ljava/lang/StringBuilder;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string v2, "offset_type = 9 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service_provider = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static notificationRetrieveOffsetwhere(I)Ljava/lang/String;
    .registers 4
    .parameter "sptype"

    .prologue
    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v0, where:Ljava/lang/StringBuilder;
    const-string v1, "offset_type = 10 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service_provider = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static scheduleRetrieveOffsetwhere(I)Ljava/lang/String;
    .registers 4
    .parameter "sptype"

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v0, where:Ljava/lang/StringBuilder;
    const-string v1, "offset_type = 12 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service_provider = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static searchingSearchOffsetwhere(I)Ljava/lang/String;
    .registers 4
    .parameter "sptype"

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .local v0, where:Ljava/lang/StringBuilder;
    const-string v1, "offset_type = 11 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service_provider = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static threadOffsetwhere(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "sptype"
    .parameter "folder"
    .parameter "threadId"

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, content:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v1, where:Ljava/lang/StringBuilder;
    invoke-static {p1, p2}, Lcom/sec/android/app/sns/db/SnsDBUtil;->combineOffsetContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    const-string v2, "offset_type = 14 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service_provider = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
