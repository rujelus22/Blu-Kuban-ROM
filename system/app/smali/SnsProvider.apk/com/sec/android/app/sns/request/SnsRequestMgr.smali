.class public Lcom/sec/android/app/sns/request/SnsRequestMgr;
.super Ljava/lang/Object;
.source "SnsRequestMgr.java"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mRequestMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/sns/request/data/SnsRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mAppContext:Landroid/content/Context;

    .line 90
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mRequestMap:Ljava/util/LinkedHashMap;

    .line 91
    return-void
.end method

.method private cancelRequestTimeout(Lcom/sec/android/app/sns/request/data/SnsRequest;)V
    .registers 6
    .parameter

    .prologue
    .line 1231
    const/4 v0, 0x0

    .line 1232
    if-eqz p1, :cond_7

    .line 1233
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getRequestTimer()Ljava/util/Timer;

    move-result-object v0

    .line 1235
    :cond_7
    if-eqz v0, :cond_34

    .line 1236
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1237
    const-string v1, "SNS_REQUESTMGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelRequestTimeout() : reqID = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] COUNT CANCELED!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_31
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1242
    :cond_34
    return-void
.end method

.method private checkServerError(ILjava/lang/Integer;Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)I
    .registers 9
    .parameter "serverErrorCode"
    .parameter "httpStatusCode"
    .parameter "req"
    .parameter "parsedResult"

    .prologue
    const/16 v0, 0x3e8

    const/16 v3, 0x191

    const/16 v2, 0x190

    .line 946
    const/16 v1, 0x1f41

    if-eq p1, v1, :cond_e

    const/16 v1, 0x1f45

    if-ne p1, v1, :cond_3f

    :cond_e
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_1a

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_3f

    .line 948
    :cond_1a
    const-string v0, "SNS_REQUESTMGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session Error !!! : serverErrorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", httpStatusCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const/16 v0, 0xbb9

    .line 977
    :goto_3e
    return v0

    .line 951
    :cond_3f
    const/16 v1, 0x2329

    if-eq p1, v1, :cond_47

    const/16 v1, 0xc3b

    if-ne p1, v1, :cond_78

    :cond_47
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_53

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_78

    .line 953
    :cond_53
    const-string v0, "SNS_REQUESTMGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account Error !!! : serverErrorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", httpStatusCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/16 v0, 0xbba

    goto :goto_3e

    .line 956
    :cond_78
    if-eq p1, v0, :cond_8e

    const/16 v1, 0x3eb

    if-eq p1, v1, :cond_8e

    const/16 v1, 0x7d0

    if-eq p1, v1, :cond_8e

    const/16 v1, 0x7d4

    if-eq p1, v1, :cond_8e

    const/16 v1, 0x8fd

    if-eq p1, v1, :cond_8e

    const/16 v1, 0x1771

    if-ne p1, v1, :cond_d1

    :cond_8e
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_c6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_c6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_c6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1f4

    if-eq v1, v2, :cond_c6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1f6

    if-eq v1, v2, :cond_c6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1f7

    if-eq v1, v2, :cond_c6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1f8

    if-ne v1, v2, :cond_d1

    .line 964
    :cond_c6
    const-string v0, "SNS_REQUESTMGR"

    const-string v1, "Temporary Error !!! : Retry to request."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    const/16 v0, 0xbbb

    goto/16 :goto_3e

    .line 966
    :cond_d1
    const/16 v1, 0xd99

    if-ne p1, v1, :cond_105

    .line 970
    const-string v0, "SNS_REQUESTMGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processResponse() : serverErrorCode = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const-string v0, "SNS_REQUESTMGR"

    const-string v1, "processResponse() : You can\'t retweet this value. The value has already forwarded!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const-string v0, "SNS_REQUESTMGR"

    iget-object v1, p4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrContext:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/16 v0, 0xbbc

    goto/16 :goto_3e

    .line 976
    :cond_105
    const-string v1, "SNS_REQUESTMGR"

    const-string v2, "Server Error !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e
.end method

.method private countRequestTimeout(Lcom/sec/android/app/sns/request/data/SnsRequest;)V
    .registers 7
    .parameter

    .prologue
    .line 1195
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v0

    .line 1196
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v1

    .line 1198
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1199
    const-string v2, "SNS_REQUESTMGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countRequestTimeout() : reqID = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] COUNT START..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_2c
    new-instance v2, Lcom/sec/android/app/sns/request/SnsRequestMgr$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr$1;-><init>(Lcom/sec/android/app/sns/request/SnsRequestMgr;II)V

    .line 1219
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 1220
    const-wide/32 v3, 0x9c40

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1221
    invoke-virtual {p1, v0}, Lcom/sec/android/app/sns/request/data/SnsRequest;->setRequestTimer(Ljava/util/Timer;)V

    .line 1222
    return-void
.end method

.method private getFromRequestMap(I)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 5
    .parameter "reqID"

    .prologue
    .line 1285
    const/4 v0, 0x0

    .line 1287
    .local v0, req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v1, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mRequestMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequest;

    .line 1289
    .restart local v0       #req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    return-object v0
.end method

.method private getRequestSpType(Lcom/sec/android/app/sns/request/data/SnsRequest;)Ljava/util/HashSet;
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sns/request/data/SnsRequest;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    const/4 v2, 0x0

    .line 1070
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1076
    :try_start_7
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v1

    const/16 v3, 0x10

    if-eq v1, v3, :cond_50

    .line 1077
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_a7

    .line 1146
    :cond_1a
    :goto_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1147
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_23
    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_186

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1148
    if-ne v1, v9, :cond_23

    .line 1149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1150
    const-string v1, "SnsFramework : getRequestSpType() - invalid sp type !!!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sns/util/SnsUtil;->invokeAssertion(Ljava/lang/String;)V

    goto :goto_23

    .line 1080
    :cond_50
    :try_start_50
    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v3

    .line 1082
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;

    if-eqz v1, :cond_78

    .line 1084
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;->getActorListKeySetToArray()[Ljava/lang/Object;

    move-result-object v3

    move v1, v2

    .line 1087
    :goto_61
    array-length v5, v3

    if-ge v1, v5, :cond_1a

    .line 1088
    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1089
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1087
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 1092
    :cond_78
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;

    if-eqz v1, :cond_ad

    .line 1093
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getInternalSp()I

    move-result v1

    .line 1094
    if-ne v1, v9, :cond_9e

    .line 1095
    sget-object v5, Lcom/sec/android/app/sns/type/SnsSpType;->LIST:[I

    array-length v6, v5

    move v1, v2

    :goto_8a
    if-ge v1, v6, :cond_1a

    aget v7, v5, v1

    .line 1096
    invoke-virtual {v3, v7}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v8

    if-eqz v8, :cond_9b

    .line 1097
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1095
    :cond_9b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    .line 1100
    :cond_9e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_a5} :catch_a7

    goto/16 :goto_1a

    .line 1142
    :catch_a7
    move-exception v1

    .line 1143
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1a

    .line 1101
    :cond_ad
    :try_start_ad
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;

    if-eqz v1, :cond_d1

    .line 1102
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;

    move-object v1, v0

    .line 1103
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;->getPeopleListKeySetToArray()[Ljava/lang/Object;

    move-result-object v3

    move v1, v2

    .line 1105
    :goto_ba
    array-length v5, v3

    if-ge v1, v5, :cond_1a

    .line 1106
    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1107
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1105
    add-int/lit8 v1, v1, 0x1

    goto :goto_ba

    .line 1109
    :cond_d1
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;

    if-eqz v1, :cond_100

    .line 1110
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->getInternalSp()I

    move-result v1

    .line 1111
    if-ne v1, v9, :cond_f7

    .line 1112
    sget-object v5, Lcom/sec/android/app/sns/type/SnsSpType;->LIST:[I

    array-length v6, v5

    move v1, v2

    :goto_e3
    if-ge v1, v6, :cond_1a

    aget v7, v5, v1

    .line 1113
    invoke-virtual {v3, v7}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v8

    if-eqz v8, :cond_f4

    .line 1114
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1112
    :cond_f4
    add-int/lit8 v1, v1, 0x1

    goto :goto_e3

    .line 1117
    :cond_f7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a

    .line 1118
    :cond_100
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationPost;

    if-eqz v1, :cond_121

    .line 1119
    sget-object v5, Lcom/sec/android/app/sns/type/SnsSpType;->LIST:[I

    array-length v6, v5

    move v3, v2

    :goto_108
    if-ge v3, v6, :cond_1a

    aget v7, v5, v3

    .line 1120
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationPost;

    move-object v1, v0

    invoke-virtual {v1, v7}, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationPost;->hasSpType(I)Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 1121
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1119
    :cond_11d
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_108

    .line 1123
    :cond_121
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;

    if-eqz v1, :cond_142

    .line 1124
    sget-object v5, Lcom/sec/android/app/sns/type/SnsSpType;->LIST:[I

    array-length v6, v5

    move v3, v2

    :goto_129
    if-ge v3, v6, :cond_1a

    aget v7, v5, v3

    .line 1125
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;

    move-object v1, v0

    invoke-virtual {v1, v7}, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;->hasSpType(I)Z

    move-result v1

    if-eqz v1, :cond_13e

    .line 1126
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1124
    :cond_13e
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_129

    .line 1128
    :cond_142
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;

    if-eqz v1, :cond_163

    .line 1129
    sget-object v5, Lcom/sec/android/app/sns/type/SnsSpType;->LIST:[I

    array-length v6, v5

    move v3, v2

    :goto_14a
    if-ge v3, v6, :cond_1a

    aget v7, v5, v3

    .line 1130
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;

    move-object v1, v0

    invoke-virtual {v1, v7}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->hasSpType(I)Z

    move-result v1

    if-eqz v1, :cond_15f

    .line 1131
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1129
    :cond_15f
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_14a

    .line 1133
    :cond_163
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestAuthKeyResolve;

    if-eqz v1, :cond_17f

    .line 1134
    sget-object v5, Lcom/sec/android/app/sns/type/SnsSpType;->LIST:[I

    array-length v6, v5

    move v1, v2

    :goto_16b
    if-ge v1, v6, :cond_1a

    aget v7, v5, v1

    .line 1135
    invoke-virtual {v3, v7}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v8

    if-eqz v8, :cond_17c

    .line 1136
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1134
    :cond_17c
    add-int/lit8 v1, v1, 0x1

    goto :goto_16b

    .line 1139
    :cond_17f
    const-string v1, "SnsFramework : getRequestSpType() - invalid request type !!!"

    invoke-static {v1}, Lcom/sec/android/app/sns/util/SnsUtil;->invokeAssertion(Ljava/lang/String;)V
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_184} :catch_a7

    goto/16 :goto_1a

    .line 1155
    :cond_186
    return-object v4
.end method

.method private getSendingRequestCount()I
    .registers 6

    .prologue
    .line 1159
    const/4 v0, 0x0

    .line 1161
    .local v0, count:I
    iget-object v3, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mRequestMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1163
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/sns/request/data/SnsRequest;>;"
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sns/request/data/SnsRequest;

    .line 1165
    .local v2, req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    .line 1166
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1169
    .end local v2           #req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_21
    return v0
.end method

.method private invokeBroadCastForRetrylogin(I)V
    .registers 12
    .parameter "spType"

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 111
    const-string v2, "SNS_REQUESTMGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeBroadCastForRetrylogin() for [spType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v9

    .line 114
    .local v9, mAccountMgr:Lcom/sec/android/app/sns/account/SnsAccountMgr;
    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getHandler()Landroid/os/Handler;

    move-result-object v8

    .line 115
    .local v8, handler:Landroid/os/Handler;
    new-instance v0, Lcom/sec/android/app/sns/result/SnsResultData;

    const/4 v6, 0x0

    move v2, p1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 117
    .local v0, retryLoginCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    invoke-virtual {v9, p1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v7

    .line 122
    .local v7, account:Lcom/sec/android/app/sns/account/SnsAccount;
    if-eqz v7, :cond_49

    .line 123
    invoke-virtual {v7, v5}, Lcom/sec/android/app/sns/account/SnsAccount;->setSessionValidity(Z)V

    .line 124
    invoke-virtual {v9}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->writeAccountInfo()V

    .line 126
    :cond_49
    return-void
.end method

.method private invokePseudoCallback(Lcom/sec/android/app/sns/request/data/SnsRequest;)V
    .registers 17
    .parameter "req"

    .prologue
    .line 94
    const-string v2, "SNS_REQUESTMGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokePseudoCallback() for [reqID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "PseudoFromReqMgr"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 98
    .local v0, resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getHandler()Landroid/os/Handler;

    move-result-object v14

    .line 99
    .local v14, handler:Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_77

    .line 102
    new-instance v1, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 105
    .local v1, presultData:Lcom/sec/android/app/sns/result/SnsResultData;
    const/4 v2, 0x1

    invoke-virtual {v14, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    .end local v1           #presultData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_77
    return-void
.end method

.method private isAccountAddedForCurrentRequest(Ljava/lang/Integer;Lcom/sec/android/app/sns/request/data/SnsRequest;)Z
    .registers 9
    .parameter "reqType"
    .parameter "curReq"

    .prologue
    .line 1246
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/sns/util/SnsUtil;->isAuthReqType(I)Z

    move-result v4

    if-nez v4, :cond_3e

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x21

    if-eq v4, v5, :cond_3e

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_3e

    .line 1248
    invoke-direct {p0, p2}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getRequestSpType(Lcom/sec/android/app/sns/request/data/SnsRequest;)Ljava/util/HashSet;

    move-result-object v3

    .line 1249
    .local v3, tempSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1250
    .local v2, spType:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v0

    .line 1251
    .local v0, account:Lcom/sec/android/app/sns/account/SnsAccount;
    if-nez v0, :cond_22

    .line 1252
    const/4 v4, 0x0

    .line 1257
    .end local v0           #account:Lcom/sec/android/app/sns/account/SnsAccount;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #spType:I
    .end local v3           #tempSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_3d
    return v4

    :cond_3e
    const/4 v4, 0x1

    goto :goto_3d
.end method

.method private processQueuedRequestWhenFatalErrorSession()V
    .registers 9

    .prologue
    .line 129
    const-string v5, "SNS_REQUESTMGR"

    const-string v6, "processQueuedRequestWhenFatalErrorSession() : process Queued Request When Fatal ErrorSession"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v5, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mRequestMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 134
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/sns/request/data/SnsRequest;>;"
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sns/request/data/SnsRequest;

    .line 137
    .local v2, req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    invoke-direct {p0, v2}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->invokePseudoCallback(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 139
    invoke-direct {p0, v2}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getRequestSpType(Lcom/sec/android/app/sns/request/data/SnsRequest;)Ljava/util/HashSet;

    move-result-object v4

    .line 140
    .local v4, tempSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 141
    .local v3, spType:I
    invoke-direct {p0, v3}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->invokeBroadCastForRetrylogin(I)V

    goto :goto_28

    .line 145
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    .end local v3           #spType:I
    .end local v4           #tempSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_3c
    iget-object v5, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mRequestMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->clear()V

    .line 146
    const-string v5, "SNS_REQUESTMGR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processQueuedRequestWhenFatalErrorSession() : mRequestMap size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mRequestMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method private removeFromRequestMap(I)V
    .registers 5
    .parameter

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mRequestMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequest;

    .line 1264
    if-eqz v0, :cond_63

    .line 1265
    invoke-direct {p0, v0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->cancelRequestTimeout(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 1266
    const-string v0, "SNS_REQUESTMGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeFromRequestMap() : mRequestMap size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mRequestMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :goto_2f
    iget-object v0, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mRequestMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1271
    :cond_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1272
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequest;

    .line 1273
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqStatus()I

    move-result v2

    if-nez v2, :cond_39

    .line 1274
    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1276
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 1277
    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1282
    :cond_62
    return-void

    .line 1268
    :cond_63
    const-string v0, "SNS_REQUESTMGR"

    const-string v1, "removeFromRequestMap() : No mapping for the specified reqID was found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method


# virtual methods
.method public abortRequest(Lcom/sec/android/app/sns/http/SnsHttpMgr;II)V
    .registers 22
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1294
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getFromRequestMap(I)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v2

    .line 1296
    if-eqz v2, :cond_54

    .line 1297
    const-string v3, "SNS_REQUESTMGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "abortRequest() : request id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sns/type/SnsReqType;->NAME:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->getHttpHandler()Landroid/os/Handler;

    move-result-object v3

    .line 1300
    const/16 v4, 0xc

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1303
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->invokePseudoCallback(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 1304
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->removeFromRequestMap(I)V

    .line 1379
    :goto_53
    return-void

    .line 1307
    :cond_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mRequestMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1308
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getHandler()Landroid/os/Handler;

    move-result-object v17

    .line 1309
    const/4 v3, -0x1

    .line 1311
    :cond_65
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1eb

    .line 1312
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sns/request/data/SnsRequest;

    .line 1313
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v5

    const/16 v6, 0x21

    if-ne v5, v6, :cond_158

    instance-of v5, v2, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;

    if-eqz v5, :cond_158

    .line 1315
    const-string v5, "SNS_REQUESTMGR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "abortRequest() : request id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is on PhotoUploadBody"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v2

    .line 1317
    check-cast v16, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;

    .line 1319
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->getParentRequestID()I

    move-result v2

    move/from16 v0, p3

    if-ne v2, v0, :cond_65

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->getAppID()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_65

    .line 1321
    new-instance v2, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->getAppID()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->getSpType()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->getParentRequestID()I

    move-result v5

    const/16 v6, 0x20

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "PseudoFromReqMgr"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v2 .. v15}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 1326
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1329
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->getID()I

    move-result v2

    .line 1356
    :goto_e0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c9

    .line 1357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mRequestMap:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    const-string v2, "SNS_REQUESTMGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abortRequest() : mRequestMap size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mRequestMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mRequestMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1361
    :cond_11a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_145

    .line 1362
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sns/request/data/SnsRequest;

    .line 1363
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqStatus()I

    move-result v4

    if-nez v4, :cond_11a

    .line 1365
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 1366
    const/4 v3, 0x2

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1372
    :cond_145
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->getHttpHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1373
    const/16 v3, 0xc

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_53

    .line 1333
    :cond_158
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_65

    instance-of v5, v2, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;

    if-eqz v5, :cond_65

    .line 1335
    const-string v5, "SNS_REQUESTMGR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "abortRequest() : request id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is on VideoUploadBody"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v2

    .line 1337
    check-cast v16, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;

    .line 1339
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->getParentRequestID()I

    move-result v2

    move/from16 v0, p3

    if-ne v2, v0, :cond_65

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->getAppID()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_65

    .line 1341
    new-instance v2, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->getAppID()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->getSpType()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->getParentRequestID()I

    move-result v5

    const/16 v6, 0x22

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "PseudoFromReqMgr"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v2 .. v15}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 1346
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1349
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->getID()I

    move-result v2

    goto/16 :goto_e0

    .line 1376
    :cond_1c9
    const-string v2, "SNS_REQUESTMGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abortRequest() : request id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is already aborted!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    :cond_1eb
    move v2, v3

    goto/16 :goto_e0
.end method

.method public addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V
    .registers 5
    .parameter

    .prologue
    .line 1174
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sns/request/data/SnsRequest;->setReqStatus(I)V

    .line 1176
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_2b

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_2b

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2b

    .line 1181
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->countRequestTimeout(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 1183
    :cond_2b
    iget-object v0, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mRequestMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    const-string v0, "SNS_REQUESTMGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToRequestMap : mRequestMap size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mRequestMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    return-void
.end method

.method public getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;
    .registers 2

    .prologue
    .line 1403
    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 1399
    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getHttpMgr()Lcom/sec/android/app/sns/http/SnsHttpMgr;
    .registers 2

    .prologue
    .line 1415
    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getHttpMgr()Lcom/sec/android/app/sns/http/SnsHttpMgr;

    move-result-object v0

    return-object v0
.end method

.method public getSessionMgr()Lcom/sec/android/app/sns/session/SnsSessionMgr;
    .registers 2

    .prologue
    .line 1411
    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getSessionMgr()Lcom/sec/android/app/sns/session/SnsSessionMgr;

    move-result-object v0

    return-object v0
.end method

.method public getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;
    .registers 2

    .prologue
    .line 1395
    invoke-static {}, Lcom/sec/android/app/sns/SnsSvc;->getInstance()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    return-object v0
.end method

.method public processDataBaseUpdate(IILandroid/os/Bundle;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1035
    new-instance v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 1036
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 1038
    const/16 v1, 0x9

    if-ne p1, v1, :cond_15

    .line 1039
    invoke-virtual {v0, p2, p3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateFriendUseContact(ILandroid/os/Bundle;)I

    .line 1044
    :goto_11
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    .line 1045
    return-void

    .line 1041
    :cond_15
    const-string v1, "SNS_REQUESTMGR"

    const-string v2, "processDataBaseUpdate : [type != PROCESS_FRIEND_LINK_PHONEBOOK_UPDATE] !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public processDataBaseUpdate(IJZ)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1012
    new-instance v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 1013
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 1015
    const/16 v1, 0x8

    if-ne p1, v1, :cond_15

    .line 1016
    invoke-virtual {v0, p2, p3, p4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateActivityReadStatus(JZ)I

    .line 1022
    :goto_11
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    .line 1023
    return-void

    .line 1018
    :cond_15
    const-string v1, "SNS_REQUESTMGR"

    const-string v2, "processDataBaseUpdate : [type != SnsThreadMessage.PROCESS_ACTIVITY_READ_UPDATE] !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public processDataBaseUpdateLong(IJJ)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1056
    new-instance v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 1057
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 1059
    const/16 v1, 0xa

    if-ne p1, v1, :cond_15

    .line 1060
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateFriendUseContact(JJ)I

    .line 1066
    :goto_11
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    .line 1067
    return-void

    .line 1062
    :cond_15
    const-string v1, "SNS_REQUESTMGR"

    const-string v2, "processDataBaseUpdate : [type != PROCESS_FRIEND_LINK_PHONEBOOK_LONG_UPDATE] !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public processRequest(I)Z
    .registers 16
    .parameter "curReqID"

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 169
    .local v3, handler:Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSessionMgr()Lcom/sec/android/app/sns/session/SnsSessionMgr;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->getSeesionStatus()I

    move-result v7

    .line 170
    .local v7, sessionStatus:I
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getFromRequestMap(I)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v2

    .line 172
    .local v2, curReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    if-nez v2, :cond_35

    .line 173
    const-string v10, "SNS_REQUESTMGR"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processRequest() : Request is NULL! (curReqID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->removeFromRequestMap(I)V

    .line 175
    const/4 v10, 0x0

    .line 268
    :goto_34
    return v10

    .line 178
    :cond_35
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v6

    .line 180
    .local v6, requestType:I
    const-string v10, "SNS_REQUESTMGR"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processRequest() : ReqID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", reqSpType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", reqType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/sns/type/SnsReqType;->NAME:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v13

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v10, 0x1

    if-ne v7, v10, :cond_98

    invoke-static {v6}, Lcom/sec/android/app/sns/util/SnsUtil;->isAuthReqType(I)Z

    move-result v10

    if-nez v10, :cond_98

    .line 188
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/sec/android/app/sns/request/data/SnsRequest;->setReqStatus(I)V

    .line 189
    const/4 v10, 0x1

    goto :goto_34

    .line 190
    :cond_98
    const/4 v10, 0x2

    if-ne v7, v10, :cond_d1

    invoke-static {v6}, Lcom/sec/android/app/sns/util/SnsUtil;->isAuthReqType(I)Z

    move-result v10

    if-nez v10, :cond_d1

    .line 192
    const-string v10, "SNS_REQUESTMGR"

    const-string v11, "processRequest() : SnsSessionStatus.SESSION_FATAL_ERROR!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0, v2}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->invokePseudoCallback(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 195
    invoke-direct {p0, v2}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getRequestSpType(Lcom/sec/android/app/sns/request/data/SnsRequest;)Ljava/util/HashSet;

    move-result-object v9

    .line 196
    .local v9, tempSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_b3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 197
    .local v8, spType:I
    invoke-direct {p0, v8}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->invokeBroadCastForRetrylogin(I)V

    goto :goto_b3

    .line 200
    .end local v8           #spType:I
    :cond_c7
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->removeFromRequestMap(I)V

    .line 201
    const/4 v10, 0x1

    goto/16 :goto_34

    .line 204
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #tempSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_d1
    invoke-direct {p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSendingRequestCount()I

    move-result v5

    .line 205
    .local v5, occupiedSlot:I
    const/4 v10, 0x3

    if-lt v5, v10, :cond_e5

    .line 206
    invoke-static {v6}, Lcom/sec/android/app/sns/util/SnsUtil;->isAuthReqType(I)Z

    move-result v10

    if-eqz v10, :cond_103

    .line 207
    const-string v10, "SNS_REQUESTMGR"

    const-string v11, "processRequest() : Request slots are full. But this request sends now specially."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_e5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v10, v2}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->isAccountAddedForCurrentRequest(Ljava/lang/Integer;Lcom/sec/android/app/sns/request/data/SnsRequest;)Z

    move-result v10

    if-nez v10, :cond_111

    .line 218
    const-string v10, "SNS_REQUESTMGR"

    const-string v11, "processRequest() : isAccountAddedForCurrentRequest() returns false."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {p0, v2}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->invokePseudoCallback(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 220
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->removeFromRequestMap(I)V

    .line 221
    const/4 v10, 0x0

    goto/16 :goto_34

    .line 210
    :cond_103
    const-string v10, "SNS_REQUESTMGR"

    const-string v11, "processRequest() : Request slots are full. This request waits for sending."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/sec/android/app/sns/request/data/SnsRequest;->setReqStatus(I)V

    .line 213
    const/4 v10, 0x1

    goto/16 :goto_34

    .line 224
    :cond_111
    const/16 v10, 0x21

    if-eq v6, v10, :cond_16a

    const/16 v10, 0x23

    if-eq v6, v10, :cond_16a

    invoke-static {v6}, Lcom/sec/android/app/sns/util/SnsUtil;->isAuthReqType(I)Z

    move-result v10

    if-nez v10, :cond_16a

    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, bIsSessionInvalid:Z
    invoke-direct {p0, v2}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getRequestSpType(Lcom/sec/android/app/sns/request/data/SnsRequest;)Ljava/util/HashSet;

    move-result-object v9

    .line 229
    .restart local v9       #tempSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_128
    :goto_128
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_154

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 230
    .restart local v8       #spType:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v0

    .line 231
    .local v0, account:Lcom/sec/android/app/sns/account/SnsAccount;
    if-eqz v0, :cond_128

    .line 232
    invoke-virtual {v0}, Lcom/sec/android/app/sns/account/SnsAccount;->getSessionValidity()Z

    move-result v10

    if-nez v10, :cond_128

    .line 233
    const-string v10, "SNS_REQUESTMGR"

    const-string v11, "processRequest() : Session is invalid"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-direct {p0, v8}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->invokeBroadCastForRetrylogin(I)V

    .line 235
    const/4 v1, 0x1

    goto :goto_128

    .line 239
    .end local v0           #account:Lcom/sec/android/app/sns/account/SnsAccount;
    .end local v8           #spType:I
    :cond_154
    if-eqz v1, :cond_16a

    .line 240
    const-string v10, "SNS_REQUESTMGR"

    const-string v11, "processRequest() : Session is invalid."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-direct {p0, v2}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->invokePseudoCallback(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 242
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->removeFromRequestMap(I)V

    .line 243
    const/4 v10, 0x1

    goto/16 :goto_34

    .line 247
    .end local v1           #bIsSessionInvalid:Z
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #tempSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_16a
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->isMaxRetry()Z

    move-result v10

    if-eqz v10, :cond_1b4

    .line 248
    const-string v10, "SNS_REQUESTMGR"

    const-string v11, "processRequest() : This request is over max retry"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0, v2}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->invokePseudoCallback(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 251
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getTempRetry()Z

    move-result v10

    if-nez v10, :cond_1aa

    .line 252
    const/16 v10, 0x21

    if-eq v6, v10, :cond_1aa

    const/16 v10, 0x23

    if-eq v6, v10, :cond_1aa

    invoke-static {v6}, Lcom/sec/android/app/sns/util/SnsUtil;->isAuthReqType(I)Z

    move-result v10

    if-nez v10, :cond_1aa

    .line 255
    invoke-direct {p0, v2}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getRequestSpType(Lcom/sec/android/app/sns/request/data/SnsRequest;)Ljava/util/HashSet;

    move-result-object v9

    .line 256
    .restart local v9       #tempSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_196
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1aa

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 257
    .restart local v8       #spType:I
    invoke-direct {p0, v8}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->invokeBroadCastForRetrylogin(I)V

    goto :goto_196

    .line 261
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #spType:I
    .end local v9           #tempSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_1aa
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->removeFromRequestMap(I)V

    .line 262
    const/4 v10, 0x1

    goto/16 :goto_34

    .line 265
    :cond_1b4
    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Lcom/sec/android/app/sns/request/data/SnsRequest;->setReqStatus(I)V

    .line 266
    const/4 v10, 0x4

    invoke-virtual {v3, v10, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 268
    const/4 v10, 0x1

    goto/16 :goto_34
.end method

.method public processResponse(Lcom/sec/android/app/sns/response/data/SnsResponse;)Z
    .registers 67
    .parameter "fwkResponse"

    .prologue
    .line 273
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : Enter Well~"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getID()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    .line 276
    .local v52, reqID:Ljava/lang/Integer;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getReqType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    .line 277
    .local v53, reqType:Ljava/lang/Integer;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getInternalCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    .line 278
    .local v42, internalCode:Ljava/lang/Integer;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getHttpStatusCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    .line 279
    .local v40, httpStatusCode:Ljava/lang/Integer;
    const/16 v47, 0x0

    .line 280
    .local v47, parsedResult:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    const/16 v18, 0x0

    .line 281
    .local v18, respUri:Landroid/net/Uri;
    const/4 v15, 0x0

    .line 283
    .local v15, partialErrMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/16 v17, 0x1

    .line 285
    .local v17, bSuccess:Z
    const/4 v13, 0x0

    .line 286
    .local v13, serverErrorCode:I
    const/4 v14, 0x0

    .line 287
    .local v14, serverSubErrCode:I
    const/16 v16, 0x0

    .line 288
    .local v16, errContext:Ljava/lang/String;
    const/16 v56, 0x0

    .line 290
    .local v56, serverErrSpType:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    const/4 v10, 0x0

    .line 291
    .local v10, bContinued:Z
    const/16 v33, 0x0

    .line 292
    .local v33, bRetryLoginCallback:Z
    const/16 v35, 0x0

    .line 294
    .local v35, bSkipFinally:Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getHandler()Landroid/os/Handler;

    move-result-object v39

    .line 295
    .local v39, hdr:Landroid/os/Handler;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v44

    .line 296
    .local v44, mAccountMgr:Lcom/sec/android/app/sns/account/SnsAccountMgr;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSessionMgr()Lcom/sec/android/app/sns/session/SnsSessionMgr;

    move-result-object v45

    .line 299
    .local v45, mSessionMgr:Lcom/sec/android/app/sns/session/SnsSessionMgr;
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getFromRequestMap(I)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v50

    .line 301
    .local v50, req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    if-eqz v50, :cond_932

    .line 303
    const/4 v6, 0x3

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sns/request/data/SnsRequest;->setReqStatus(I)V

    .line 306
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v6

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_f3

    .line 307
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reqID is wrong! (reqID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sns/util/SnsUtil;->invokeAssertion(Ljava/lang/String;)V

    .line 313
    :cond_7f
    :goto_7f
    const-string v6, "SNS_REQUESTMGR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processResponse() : ReqID = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v52

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", reqType = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v53

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "["

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v11, Lcom/sec/android/app/sns/type/SnsReqType;->NAME:[Ljava/lang/String;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v11, v11, v12

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "]"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", internalCode = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v42

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", statusCode = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual/range {v45 .. v45}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->getSeesionStatus()I

    move-result v57

    .line 319
    .local v57, sessionStatus:I
    const/4 v6, 0x1

    move/from16 v0, v57

    if-ne v0, v6, :cond_12b

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/sns/util/SnsUtil;->isAuthReqType(I)Z

    move-result v6

    if-nez v6, :cond_12b

    .line 321
    const/4 v6, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sns/request/data/SnsRequest;->setReqStatus(I)V

    .line 322
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->decreaseRetryCount()V

    .line 323
    const/4 v6, 0x1

    .line 941
    .end local v57           #sessionStatus:I
    :goto_f2
    return v6

    .line 308
    :cond_f3
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v6

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_10b

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_10b

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x29

    if-le v6, v7, :cond_7f

    .line 310
    :cond_10b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reqType is wrong! (reqType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sns/util/SnsUtil;->invokeAssertion(Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 324
    .restart local v57       #sessionStatus:I
    :cond_12b
    const/4 v6, 0x2

    move/from16 v0, v57

    if-ne v0, v6, :cond_178

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/sns/util/SnsUtil;->isAuthReqType(I)Z

    move-result v6

    if-nez v6, :cond_178

    .line 326
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : SnsSessionStatus.SESSION_FATAL_ERROR!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->invokePseudoCallback(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 329
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getRequestSpType(Lcom/sec/android/app/sns/request/data/SnsRequest;)Ljava/util/HashSet;

    move-result-object v61

    .line 330
    .local v61, tempSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual/range {v61 .. v61}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .local v41, i$:Ljava/util/Iterator;
    :goto_154
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16c

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v58

    .line 331
    .local v58, spType:I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->invokeBroadCastForRetrylogin(I)V

    goto :goto_154

    .line 334
    .end local v58           #spType:I
    :cond_16c
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->removeFromRequestMap(I)V

    .line 335
    const/4 v6, 0x0

    goto/16 :goto_f2

    .line 338
    .end local v41           #i$:Ljava/util/Iterator;
    .end local v61           #tempSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_178
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->isAccountAddedForCurrentRequest(Ljava/lang/Integer;Lcom/sec/android/app/sns/request/data/SnsRequest;)Z

    move-result v6

    if-nez v6, :cond_19e

    .line 339
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : isAccountAddedForCurrentRequest() returns false."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->invokePseudoCallback(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 341
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->removeFromRequestMap(I)V

    .line 342
    const/4 v6, 0x0

    goto/16 :goto_f2

    .line 347
    :cond_19e
    :try_start_19e
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_206

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    if-gt v6, v7, :cond_206

    .line 348
    const/16 v49, 0x0

    .line 350
    .local v49, redirectURL:Ljava/lang/String;
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_2fd

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getRedirectURL()Ljava/lang/String;

    move-result-object v49

    .line 358
    :goto_1b9
    if-eqz v49, :cond_206

    .line 359
    invoke-static {}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->getSSLServerAddress()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_206

    invoke-static {}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->getSSLServerAddress()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_206

    .line 362
    invoke-static/range {v49 .. v49}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->setSSLServerAddress(Ljava/lang/String;)V

    .line 364
    const/16 v59, 0x0

    .line 366
    .local v59, sslServerPort:I
    invoke-static/range {v49 .. v49}, Lcom/sec/android/app/sns/util/SnsUtil;->extractPortNumber(Ljava/lang/String;)I

    move-result v59

    if-nez v59, :cond_1da

    .line 367
    const/16 v59, 0x1bb

    .line 370
    :cond_1da
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getHttpMgr()Lcom/sec/android/app/sns/http/SnsHttpMgr;

    move-result-object v6

    move/from16 v0, v59

    invoke-virtual {v6, v0}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->registerSSLScheme(I)V

    .line 371
    invoke-virtual/range {v45 .. v45}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->writeSessionInfo()V

    .line 372
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_328

    .line 373
    const-string v6, "SNS_REQUESTMGR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processResponse() : redirect URL = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v49

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v49           #redirectURL:Ljava/lang/String;
    .end local v59           #sslServerPort:I
    :cond_206
    :goto_206
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getObject()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_370

    .line 382
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getObject()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v47, v0

    .line 394
    :cond_215
    :goto_215
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_1601

    .line 396
    const/16 v34, 0x0

    .line 398
    .local v34, bServerError:Z
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .local v38, errorString:Ljava/lang/StringBuilder;
    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrCode:Ljava/lang/Integer;

    if-eqz v6, :cond_250

    .line 401
    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrCode:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 402
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "serverErrorCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const/16 v34, 0x1

    .line 406
    :cond_250
    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mSubErrCode:Ljava/lang/Integer;

    if-eqz v6, :cond_27e

    .line 407
    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mSubErrCode:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 408
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "serverSubErrCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const/16 v34, 0x1

    .line 412
    :cond_27e
    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrContext:Ljava/lang/String;

    if-eqz v6, :cond_2ac

    .line 413
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrContext:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 414
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "serverErrContext = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const/16 v34, 0x1

    .line 418
    :cond_2ac
    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    if-eqz v6, :cond_3a3

    .line 419
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    move-object/from16 v56, v0

    .line 420
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "serverErrSpType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v56

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    move-object/from16 v62, v56

    .line 423
    .local v62, temporaryErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    :goto_2da
    if-eqz v62, :cond_3a3

    .line 424
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    move-object/from16 v62, v0

    goto :goto_2da

    .line 354
    .end local v34           #bServerError:Z
    .end local v38           #errorString:Ljava/lang/StringBuilder;
    .end local v62           #temporaryErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    .restart local v49       #redirectURL:Ljava/lang/String;
    :cond_2fd
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sns/SnsSvc;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f04

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 355
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : Reset SSL URL to initial value"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_312
    .catchall {:try_start_19e .. :try_end_312} :catchall_48d
    .catch Ljava/lang/NullPointerException; {:try_start_19e .. :try_end_312} :catch_314
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_312} :catch_331

    goto/16 :goto_1b9

    .line 729
    .end local v49           #redirectURL:Ljava/lang/String;
    :catch_314
    move-exception v37

    .line 730
    .local v37, e:Ljava/lang/NullPointerException;
    :goto_315
    :try_start_315
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : RESPONSE CONTENT IS NULL !!!"

    move-object/from16 v0, v37

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    invoke-virtual/range {v37 .. v37}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_321
    .catchall {:try_start_315 .. :try_end_321} :catchall_48d

    .line 732
    const/16 v17, 0x0

    .line 739
    if-eqz v35, :cond_c8b

    .line 740
    .end local v37           #e:Ljava/lang/NullPointerException;
    :cond_325
    const/4 v6, 0x1

    goto/16 :goto_f2

    .line 375
    .restart local v49       #redirectURL:Ljava/lang/String;
    .restart local v59       #sslServerPort:I
    :cond_328
    :try_start_328
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : redirect URL "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32f
    .catchall {:try_start_328 .. :try_end_32f} :catchall_48d
    .catch Ljava/lang/NullPointerException; {:try_start_328 .. :try_end_32f} :catch_314
    .catch Ljava/lang/Exception; {:try_start_328 .. :try_end_32f} :catch_331

    goto/16 :goto_206

    .line 733
    .end local v49           #redirectURL:Ljava/lang/String;
    .end local v59           #sslServerPort:I
    :catch_331
    move-exception v37

    .line 734
    .local v37, e:Ljava/lang/Exception;
    :goto_332
    :try_start_332
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : RESPONSE CONTENT ERROR !!!"

    move-object/from16 v0, v37

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 735
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_33e
    .catchall {:try_start_332 .. :try_end_33e} :catchall_48d

    .line 736
    const/16 v17, 0x0

    .line 739
    if-nez v35, :cond_325

    .line 745
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_f58

    .line 746
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->removeFromRequestMap(I)V

    .line 747
    if-eqz v17, :cond_1039

    .line 748
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : success key resolve."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v6, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->setSessionStatus(I)V

    .line 751
    invoke-virtual/range {v45 .. v45}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->writeSessionInfo()V

    .line 753
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : process Queued Request When NormalSession"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->resumeWaitingRequest()V

    .line 755
    .end local v37           #e:Ljava/lang/Exception;
    :goto_36d
    const/4 v6, 0x1

    goto/16 :goto_f2

    .line 384
    :cond_370
    :try_start_370
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : SnsXmlParsedData is null !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_215

    .line 387
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processResponse() : parsedResult is null. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/sns/type/SnsInternalCode;->printErrorInternalCode(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sns/util/SnsUtil;->invokeAssertion(Ljava/lang/String;)V

    .line 390
    const/16 v6, 0xbbd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    goto/16 :goto_215

    .line 429
    .restart local v34       #bServerError:Z
    .restart local v38       #errorString:Ljava/lang/StringBuilder;
    :cond_3a3
    move-object/from16 v0, v47

    iget v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3ab

    .line 430
    const/4 v10, 0x1

    .line 432
    :cond_3ab
    if-eqz v34, :cond_435

    .line 433
    const-string v6, "SNS_REQUESTMGR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processResponse() - "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v50

    move-object/from16 v3, v47

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->checkServerError(ILjava/lang/Integer;Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3d8
    .catchall {:try_start_370 .. :try_end_3d8} :catchall_48d
    .catch Ljava/lang/NullPointerException; {:try_start_370 .. :try_end_3d8} :catch_314
    .catch Ljava/lang/Exception; {:try_start_370 .. :try_end_3d8} :catch_331

    move-result-object v42

    move/from16 v32, v10

    .line 486
    .end local v10           #bContinued:Z
    .end local v34           #bServerError:Z
    .end local v38           #errorString:Ljava/lang/StringBuilder;
    .local v32, bContinued:Z
    :goto_3db
    :try_start_3db
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sparse-switch v6, :sswitch_data_1606

    .line 719
    const-string v6, "SNS_REQUESTMGR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processResponse() : Others !!! "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/sec/android/app/sns/type/SnsInternalCode;->printErrorInternalCode(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_402
    .catchall {:try_start_3db .. :try_end_402} :catchall_15f0
    .catch Ljava/lang/NullPointerException; {:try_start_3db .. :try_end_402} :catch_15fc
    .catch Ljava/lang/Exception; {:try_start_3db .. :try_end_402} :catch_15f7

    .line 723
    const/16 v17, 0x0

    move/from16 v10, v32

    .line 739
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    :goto_406
    if-nez v35, :cond_325

    .line 745
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_12a4

    .line 746
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->removeFromRequestMap(I)V

    .line 747
    if-eqz v17, :cond_1385

    .line 748
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : success key resolve."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v6, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->setSessionStatus(I)V

    .line 751
    invoke-virtual/range {v45 .. v45}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->writeSessionInfo()V

    .line 753
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : process Queued Request When NormalSession"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->resumeWaitingRequest()V

    goto/16 :goto_36d

    .line 438
    .restart local v34       #bServerError:Z
    .restart local v38       #errorString:Ljava/lang/StringBuilder;
    :cond_435
    :try_start_435
    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mSessionKey:Ljava/lang/String;

    if-eqz v6, :cond_46f

    .line 439
    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mSessionKey:Ljava/lang/String;

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->setSessionKey(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {v45 .. v45}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->writeSessionInfo()V

    .line 441
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_485

    .line 442
    const-string v6, "SNS_REQUESTMGR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processResponse() : mSessionKey = ["

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v47

    iget-object v11, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "]"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_46f
    :goto_46f
    move-object/from16 v0, v47

    instance-of v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataResponseOnly;

    if-eqz v6, :cond_4bf

    .line 450
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "parsedResult has no valid items !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move/from16 v32, v10

    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    goto/16 :goto_3db

    .line 445
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    :cond_485
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : mSessionKey"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48c
    .catchall {:try_start_435 .. :try_end_48c} :catchall_48d
    .catch Ljava/lang/NullPointerException; {:try_start_435 .. :try_end_48c} :catch_314
    .catch Ljava/lang/Exception; {:try_start_435 .. :try_end_48c} :catch_331

    goto :goto_46f

    .line 739
    .end local v34           #bServerError:Z
    .end local v38           #errorString:Ljava/lang/StringBuilder;
    :catchall_48d
    move-exception v6

    move-object/from16 v64, v6

    :goto_490
    if-nez v35, :cond_325

    .line 745
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_9ee

    .line 746
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->removeFromRequestMap(I)V

    .line 747
    if-eqz v17, :cond_acd

    .line 748
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : success key resolve."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v6, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->setSessionStatus(I)V

    .line 751
    invoke-virtual/range {v45 .. v45}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->writeSessionInfo()V

    .line 753
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : process Queued Request When NormalSession"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->resumeWaitingRequest()V

    goto/16 :goto_36d

    .line 453
    .restart local v34       #bServerError:Z
    .restart local v38       #errorString:Ljava/lang/StringBuilder;
    :cond_4bf
    :try_start_4bf
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_548

    .line 456
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x21

    if-ne v6, v7, :cond_4e4

    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/sns/response/data/SnsResponsePhotoUploadBody;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/app/sns/response/data/SnsResponsePhotoUploadBody;->checkPhotoUploadData()Z

    move-result v6

    if-nez v6, :cond_4e4

    .line 459
    const/16 v6, 0xc1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move/from16 v32, v10

    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    goto/16 :goto_3db

    .line 460
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    :cond_4e4
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_501

    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/sns/response/data/SnsResponseVideoUploadBody;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/app/sns/response/data/SnsResponseVideoUploadBody;->checkVideoUploadData()Z

    move-result v6

    if-nez v6, :cond_501

    .line 463
    const/16 v6, 0xc1f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move/from16 v32, v10

    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    goto/16 :goto_3db

    .line 465
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    :cond_501
    new-instance v36, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v36

    invoke-direct {v0, v6, v7}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    .line 467
    .local v36, disposeResultData:Lcom/sec/android/app/sns/result/SnsDisposeResultData;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mAppContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v6, v1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->disposeData(Landroid/content/Context;Lcom/sec/android/app/sns/request/data/SnsRequest;)Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    move-result-object v36

    .line 469
    if-eqz v36, :cond_544

    .line 470
    const-string v6, "SNS_REQUESTMGR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processResponse() : result of disposeData : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v36 .. v36}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual/range {v36 .. v36}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;->getUri()Landroid/net/Uri;

    move-result-object v18

    .line 474
    invoke-virtual/range {v36 .. v36}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;->getDisposeResultCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    .line 475
    invoke-virtual/range {v36 .. v36}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;->getPartialErrMap()Ljava/util/Map;

    move-result-object v15

    :cond_544
    move/from16 v32, v10

    .line 477
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    goto/16 :goto_3db

    .line 479
    .end local v32           #bContinued:Z
    .end local v36           #disposeResultData:Lcom/sec/android/app/sns/result/SnsDisposeResultData;
    .restart local v10       #bContinued:Z
    :cond_548
    const/16 v6, 0xc1d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_54d
    .catchall {:try_start_4bf .. :try_end_54d} :catchall_48d
    .catch Ljava/lang/NullPointerException; {:try_start_4bf .. :try_end_54d} :catch_314
    .catch Ljava/lang/Exception; {:try_start_4bf .. :try_end_54d} :catch_331

    move-result-object v42

    move/from16 v32, v10

    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    goto/16 :goto_3db

    .end local v34           #bServerError:Z
    .end local v38           #errorString:Ljava/lang/StringBuilder;
    :sswitch_552
    move/from16 v10, v32

    .line 491
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto/16 :goto_406

    .line 495
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :sswitch_556
    const/16 v55, 0x0

    .line 496
    .local v55, responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    :try_start_558
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : Response Only : We\'ve received response without valid item. BUT it\'s OK."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_1630

    .line 572
    :pswitch_566
    move-object/from16 v55, v47

    .line 573
    const-string v6, "SNS_REQUESTMGR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processResponse() : No Response Only handling, Request type is: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v53

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_582
    .catchall {:try_start_558 .. :try_end_582} :catchall_15f0
    .catch Ljava/lang/NullPointerException; {:try_start_558 .. :try_end_582} :catch_15fc
    .catch Ljava/lang/Exception; {:try_start_558 .. :try_end_582} :catch_15f7

    :cond_582
    move/from16 v10, v32

    .line 580
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    :goto_584
    :try_start_584
    new-instance v4, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mAppContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 581
    .local v4, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 582
    move-object/from16 v0, v50

    move-object/from16 v1, v55

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertEntry(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Landroid/net/Uri;

    move-result-object v18

    .line 584
    invoke-virtual {v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V
    :try_end_59b
    .catchall {:try_start_584 .. :try_end_59b} :catchall_48d
    .catch Ljava/lang/NullPointerException; {:try_start_584 .. :try_end_59b} :catch_314
    .catch Ljava/lang/Exception; {:try_start_584 .. :try_end_59b} :catch_331

    goto/16 :goto_406

    .line 501
    .end local v4           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :pswitch_59d
    :try_start_59d
    new-instance v55, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

    .end local v55           #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    invoke-direct/range {v55 .. v55}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;-><init>()V

    .line 502
    .restart local v55       #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    move-object/from16 v0, v47

    iget v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mIsEmpty:I

    move-object/from16 v0, v55

    iput v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mIsEmpty:I

    .line 504
    move-object/from16 v0, v47

    iget v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mIsEmpty:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_582

    .line 505
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : Response Only : Activity Retrieve : isEmpty is True"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    move-object/from16 v0, v50

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;

    move-object/from16 v31, v0

    .line 510
    .local v31, activityRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mAppContext:Landroid/content/Context;

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;->getActorMap()Ljava/util/Map;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getActivityOffset(Landroid/content/Context;Ljava/util/Map;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v6

    if-eqz v6, :cond_5ce

    .line 512
    const/4 v10, 0x1

    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto :goto_584

    .line 514
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :cond_5ce
    const/4 v10, 0x0

    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto :goto_584

    .line 518
    .end local v10           #bContinued:Z
    .end local v31           #activityRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;
    .restart local v32       #bContinued:Z
    :pswitch_5d0
    new-instance v55, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    .end local v55           #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    invoke-direct/range {v55 .. v55}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;-><init>()V

    .restart local v55       #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    move/from16 v10, v32

    .line 519
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto :goto_584

    .line 521
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :pswitch_5d8
    new-instance v55, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    .end local v55           #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    invoke-direct/range {v55 .. v55}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;-><init>()V

    .restart local v55       #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    move/from16 v10, v32

    .line 522
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto :goto_584

    .line 524
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :pswitch_5e0
    new-instance v55, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;

    .end local v55           #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    invoke-direct/range {v55 .. v55}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;-><init>()V

    .restart local v55       #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    move/from16 v10, v32

    .line 525
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto :goto_584

    .line 527
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :pswitch_5e8
    new-instance v55, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;

    .end local v55           #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    invoke-direct/range {v55 .. v55}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;-><init>()V

    .restart local v55       #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    move/from16 v10, v32

    .line 528
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto :goto_584

    .line 530
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :pswitch_5f0
    new-instance v55, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;

    .end local v55           #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    invoke-direct/range {v55 .. v55}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;-><init>()V

    .line 531
    .restart local v55       #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    move-object/from16 v0, v55

    iput-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    .line 533
    const-string v6, "nochange"

    move-object/from16 v0, v55

    iget-object v7, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_582

    .line 535
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : Response Only : FriendListRetrieve : nochange is True"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v10, v32

    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto/16 :goto_584

    .line 539
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :pswitch_614
    new-instance v55, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;

    .end local v55           #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    invoke-direct/range {v55 .. v55}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;-><init>()V

    .line 540
    .restart local v55       #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    move-object/from16 v0, v55

    iput-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    .line 542
    const-string v6, "nochange"

    move-object/from16 v0, v55

    iget-object v7, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_582

    .line 544
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : Response Only : FriendListRetrieve : nochange is True"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v10, v32

    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto/16 :goto_584

    .line 548
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :pswitch_638
    new-instance v55, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;

    .end local v55           #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    invoke-direct/range {v55 .. v55}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;-><init>()V

    .restart local v55       #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    move/from16 v10, v32

    .line 549
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto/16 :goto_584

    .line 551
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :pswitch_641
    new-instance v55, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    .end local v55           #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    invoke-direct/range {v55 .. v55}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;-><init>()V

    .restart local v55       #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    move/from16 v10, v32

    .line 552
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto/16 :goto_584

    .line 554
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :pswitch_64a
    new-instance v55, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;

    .end local v55           #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    invoke-direct/range {v55 .. v55}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;-><init>()V

    .restart local v55       #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    move/from16 v10, v32

    .line 555
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto/16 :goto_584

    .line 557
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :pswitch_653
    new-instance v55, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;

    .end local v55           #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    invoke-direct/range {v55 .. v55}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;-><init>()V

    .restart local v55       #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    move/from16 v10, v32

    .line 558
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto/16 :goto_584

    .line 560
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :pswitch_65c
    new-instance v55, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;

    .end local v55           #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    invoke-direct/range {v55 .. v55}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;-><init>()V

    .restart local v55       #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    move/from16 v10, v32

    .line 561
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto/16 :goto_584

    .line 563
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :pswitch_665
    new-instance v55, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    .end local v55           #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    invoke-direct/range {v55 .. v55}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;-><init>()V

    .restart local v55       #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    move/from16 v10, v32

    .line 564
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto/16 :goto_584

    .line 566
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :pswitch_66e
    new-instance v55, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;

    .end local v55           #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    invoke-direct/range {v55 .. v55}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;-><init>()V

    .restart local v55       #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    move/from16 v10, v32

    .line 567
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto/16 :goto_584

    .line 569
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :pswitch_677
    new-instance v55, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;

    .end local v55           #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    invoke-direct/range {v55 .. v55}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;-><init>()V

    .restart local v55       #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    move/from16 v10, v32

    .line 570
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto/16 :goto_584

    .line 591
    .end local v10           #bContinued:Z
    .end local v55           #responseOnlyParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    .restart local v32       #bContinued:Z
    :sswitch_680
    const-string v6, "SNS_REQUESTMGR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processResponse() : Retry Login!!! "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/sec/android/app/sns/type/SnsInternalCode;->printErrorInternalCode(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xfa3

    if-eq v6, v7, :cond_6d6

    const/16 v6, 0x2329

    if-eq v13, v6, :cond_6d6

    const/16 v6, 0xc3b

    if-eq v13, v6, :cond_6d6

    .line 598
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processResponse() : SnsAccountError : Invalid type -  httpStatusCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", serverErrorCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sns/util/SnsUtil;->invokeAssertion(Ljava/lang/String;)V

    move/from16 v10, v32

    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto/16 :goto_406

    .line 603
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :cond_6d6
    const-string v16, "Error_RetryLogin"

    .line 604
    const/16 v33, 0x1

    .line 605
    const/16 v17, 0x0

    move/from16 v10, v32

    .line 608
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto/16 :goto_406

    .line 611
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :sswitch_6e0
    const-string v6, "SNS_REQUESTMGR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processResponse() : Request auth key resolve. "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/sec/android/app/sns/type/SnsInternalCode;->printErrorInternalCode(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "serverErrorCode = ["

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "]"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_761

    .line 620
    const/16 v6, 0x1f41

    if-eq v13, v6, :cond_71e

    const/16 v6, 0x1f45

    if-ne v13, v6, :cond_761

    .line 621
    :cond_71e
    const/4 v6, 0x1

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->setSessionStatus(I)V

    .line 623
    const/4 v6, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sns/request/data/SnsRequest;->setReqStatus(I)V

    .line 625
    new-instance v54, Lcom/sec/android/app/sns/request/SnsRequestFactory;

    invoke-direct/range {v54 .. v54}, Lcom/sec/android/app/sns/request/SnsRequestFactory;-><init>()V

    .line 626
    .local v54, requestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;
    const/4 v6, -0x1

    const/16 v7, 0x10

    const/4 v11, 0x0

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v12

    move-object/from16 v0, v54

    invoke-virtual {v0, v6, v7, v11, v12}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newAuthKeyResolve(IIII)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v43

    .line 632
    .local v43, keyResolveReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 633
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->cancelRequestTimeout(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 634
    const/4 v6, 0x2

    invoke-virtual/range {v43 .. v43}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v39

    invoke-virtual {v0, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 638
    const/16 v35, 0x1

    .line 641
    .end local v43           #keyResolveReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    .end local v54           #requestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;
    :cond_761
    const/16 v17, 0x0

    move/from16 v10, v32

    .line 643
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto/16 :goto_406

    .line 646
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :sswitch_767
    const-string v6, "SNS_REQUESTMGR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processResponse() : Forwarable error. "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/sec/android/app/sns/type/SnsInternalCode;->printErrorInternalCode(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    move-object/from16 v0, v50

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestActivityForward;

    move-object/from16 v51, v0

    .line 653
    .local v51, reqActivityForward:Lcom/sec/android/app/sns/request/data/SnsRequestActivityForward;
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v30, v0

    .line 654
    .local v30, account:[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sns/account/SnsAccount;->getUserID()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v30, v6

    .line 656
    const/4 v6, 0x1

    const/4 v7, 0x2

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sns/account/SnsAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v30, v6

    .line 658
    const/4 v6, 0x2

    const/4 v7, 0x2

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sns/account/SnsAccount;->getProfilePhotoUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v30, v6

    .line 661
    new-instance v4, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mAppContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 662
    .restart local v4       #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 663
    const/4 v5, 0x2

    invoke-virtual/range {v51 .. v51}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityForward;->getActivityID()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v11, 0x0

    aget-object v8, v30, v11

    const/4 v11, 0x1

    aget-object v9, v30, v11

    const/4 v11, 0x2

    aget-object v10, v30, v11

    invoke-virtual/range {v4 .. v10}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateForwardable(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 666
    invoke-virtual {v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    move/from16 v10, v32

    .line 668
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto/16 :goto_406

    .line 671
    .end local v4           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v10           #bContinued:Z
    .end local v30           #account:[Ljava/lang/String;
    .end local v51           #reqActivityForward:Lcom/sec/android/app/sns/request/data/SnsRequestActivityForward;
    .restart local v32       #bContinued:Z
    :sswitch_7e1
    const-string v6, "SNS_REQUESTMGR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processResponse() : Internal retry. "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/sec/android/app/sns/type/SnsInternalCode;->printErrorInternalCode(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x21

    if-eq v6, v7, :cond_82e

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x23

    if-eq v6, v7, :cond_82e

    .line 678
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->setTempRetry()V

    .line 680
    const/4 v6, 0x2

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v39

    invoke-virtual {v0, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 684
    const/16 v35, 0x1

    move/from16 v10, v32

    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto/16 :goto_406

    .line 686
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :cond_82e
    const-string v6, "SNS_REQUESTMGR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processResponse() : Retrying "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v11, Lcom/sec/android/app/sns/type/SnsReqType;->NAME:[Ljava/lang/String;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v11, v11, v12

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "is skipped."

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/16 v17, 0x0

    move/from16 v10, v32

    .line 691
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto/16 :goto_406

    .line 695
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :sswitch_85a
    const-string v6, "SNS_REQUESTMGR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processResponse() : Network Unavailable !!! "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/sec/android/app/sns/type/SnsInternalCode;->printErrorInternalCode(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/16 v17, 0x0

    .line 700
    const-string v16, "Network unreachable"
    :try_end_87e
    .catchall {:try_start_59d .. :try_end_87e} :catchall_15f0
    .catch Ljava/lang/NullPointerException; {:try_start_59d .. :try_end_87e} :catch_15fc
    .catch Ljava/lang/Exception; {:try_start_59d .. :try_end_87e} :catch_15f7

    move/from16 v10, v32

    .line 702
    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto/16 :goto_406

    .line 864
    .local v8, resultReqID:I
    .local v9, resultReqType:I
    :cond_882
    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->writeAccountInfo()V

    .line 867
    :cond_885
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_8a5

    .line 868
    const-string v6, "SNS_REQUESTMGR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processResponse() : req = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_8a5
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_ba0

    .line 874
    new-instance v5, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v25

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v26

    move-object/from16 v23, v5

    move/from16 v27, v9

    move/from16 v28, v17

    move-object/from16 v29, v18

    invoke-direct/range {v23 .. v29}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 877
    .local v5, resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getCancel()Z

    move-result v6

    if-nez v6, :cond_bdf

    if-eqz v47, :cond_bdf

    move-object/from16 v0, v47

    iget v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_bdf

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_bdf

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPending()Z

    move-result v6

    if-nez v6, :cond_bdf

    .line 881
    const/16 v46, 0x0

    .line 882
    .local v46, nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x13

    if-ne v6, v7, :cond_bed

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mAppContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    move-object/from16 v6, v50

    check-cast v6, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;

    invoke-virtual {v6}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getInternalSp()I

    move-result v25

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v26

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v27

    move-object/from16 v28, v50

    move-object/from16 v29, v47

    invoke-static/range {v23 .. v29}, Lcom/sec/android/app/sns/request/SnsRequestGenerator;->createRequest(Landroid/content/Context;IIIILcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v46

    .line 898
    :goto_90d
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 899
    const/4 v6, 0x2

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v39

    invoke-virtual {v0, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 934
    .end local v5           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    .end local v46           #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_928
    :goto_928
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->removeFromRequestMap(I)V

    .line 739
    throw v64

    .line 937
    .end local v8           #resultReqID:I
    .end local v9           #resultReqType:I
    .end local v57           #sessionStatus:I
    :cond_932
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : req is NULL. Request is canceled"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const/4 v6, 0x0

    goto/16 :goto_f2

    .line 864
    .restart local v8       #resultReqID:I
    .restart local v9       #resultReqType:I
    .local v37, e:Ljava/lang/NullPointerException;
    .restart local v57       #sessionStatus:I
    :cond_93c
    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->writeAccountInfo()V

    .line 867
    :cond_93f
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_95f

    .line 868
    const-string v6, "SNS_REQUESTMGR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processResponse() : req = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_95f
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_e6d

    .line 874
    new-instance v5, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v25

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v26

    move-object/from16 v23, v5

    move/from16 v27, v9

    move/from16 v28, v17

    move-object/from16 v29, v18

    invoke-direct/range {v23 .. v29}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 877
    .restart local v5       #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getCancel()Z

    move-result v6

    if-nez v6, :cond_eac

    if-eqz v47, :cond_eac

    move-object/from16 v0, v47

    iget v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_eac

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_eac

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPending()Z

    move-result v6

    if-nez v6, :cond_eac

    .line 881
    const/16 v46, 0x0

    .line 882
    .restart local v46       #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x13

    if-ne v6, v7, :cond_eba

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mAppContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    move-object/from16 v6, v50

    check-cast v6, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;

    invoke-virtual {v6}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getInternalSp()I

    move-result v25

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v26

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v27

    move-object/from16 v28, v50

    move-object/from16 v29, v47

    invoke-static/range {v23 .. v29}, Lcom/sec/android/app/sns/request/SnsRequestGenerator;->createRequest(Landroid/content/Context;IIIILcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v46

    .line 898
    :goto_9c7
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 899
    const/4 v6, 0x2

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v39

    invoke-virtual {v0, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 934
    .end local v5           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    .end local v46           #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_9e2
    :goto_9e2
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v6

    .end local v37           #e:Ljava/lang/NullPointerException;
    :goto_9e6
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->removeFromRequestMap(I)V

    .line 941
    const/4 v6, 0x1

    goto/16 :goto_f2

    .line 768
    .end local v8           #resultReqID:I
    .end local v9           #resultReqType:I
    :cond_9ee
    const/4 v8, -0x1

    .line 769
    .restart local v8       #resultReqID:I
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 772
    .restart local v9       #resultReqType:I
    const/16 v6, 0x21

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_ae3

    move-object/from16 v48, v50

    .line 773
    check-cast v48, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;

    .line 774
    .local v48, photoUploadBodyReq:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;
    invoke-virtual/range {v48 .. v48}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->getParentRequestID()I

    move-result v8

    .line 776
    const/16 v9, 0x20

    .line 790
    .end local v48           #photoUploadBodyReq:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;
    :cond_a05
    :goto_a05
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_a77

    .line 792
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_a40

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x22

    if-eq v6, v7, :cond_a40

    .line 796
    const/4 v5, 0x0

    .line 798
    .restart local v5       #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    new-instance v5, Lcom/sec/android/app/sns/result/SnsResultData;

    .end local v5           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v6

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v7

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct/range {v5 .. v18}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 803
    .restart local v5       #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 810
    .end local v5           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_a40
    if-eqz v17, :cond_a77

    .line 811
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x15

    if-ne v6, v7, :cond_b4e

    .line 813
    new-instance v19, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v20

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v21

    const/16 v6, 0x13

    const/16 v7, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v6, v7, v11, v12}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getTypicalContentUriByReqType(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v17

    invoke-direct/range {v19 .. v25}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 818
    .local v19, msgRetrieveCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v6, v0, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 833
    .end local v19           #msgRetrieveCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_a77
    :goto_a77
    if-eqz v33, :cond_885

    const/4 v6, 0x3

    if-eq v9, v6, :cond_885

    .line 835
    if-eqz v56, :cond_b00

    .line 836
    move-object/from16 v60, v56

    .line 837
    .local v60, tempErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    :goto_a80
    if-eqz v60, :cond_882

    .line 838
    const/16 v22, 0x0

    .local v22, tempSpType:I
    :goto_a84
    sget-object v6, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    array-length v6, v6

    move/from16 v0, v22

    if-ge v0, v6, :cond_b98

    .line 839
    move-object/from16 v0, v60

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mValue:Ljava/lang/String;

    sget-object v7, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    aget-object v7, v7, v22

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_aca

    .line 840
    new-instance v20, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v21

    const/16 v26, 0x0

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v17

    invoke-direct/range {v20 .. v26}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 843
    .local v20, retryLoginCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 845
    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v30

    .line 846
    .local v30, account:Lcom/sec/android/app/sns/account/SnsAccount;
    if-eqz v30, :cond_aca

    .line 847
    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sns/account/SnsAccount;->setSessionValidity(Z)V

    .line 838
    .end local v20           #retryLoginCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    .end local v30           #account:Lcom/sec/android/app/sns/account/SnsAccount;
    :cond_aca
    add-int/lit8 v22, v22, 0x1

    goto :goto_a84

    .line 758
    .end local v8           #resultReqID:I
    .end local v9           #resultReqType:I
    .end local v22           #tempSpType:I
    .end local v60           #tempErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    :cond_acd
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : failed key resolve."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const/4 v6, 0x2

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->setSessionStatus(I)V

    .line 761
    invoke-virtual/range {v45 .. v45}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->writeSessionInfo()V

    .line 762
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->processQueuedRequestWhenFatalErrorSession()V

    .line 763
    :goto_ae0
    const/4 v6, 0x0

    goto/16 :goto_f2

    .line 777
    .restart local v8       #resultReqID:I
    .restart local v9       #resultReqType:I
    :cond_ae3
    const/16 v6, 0x23

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_af7

    move-object/from16 v63, v50

    .line 778
    check-cast v63, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;

    .line 779
    .local v63, videoUploadBodyReq:Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;
    invoke-virtual/range {v63 .. v63}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->getParentRequestID()I

    move-result v8

    .line 781
    const/16 v9, 0x22

    .line 782
    goto/16 :goto_a05

    .line 783
    .end local v63           #videoUploadBodyReq:Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;
    :cond_af7
    const/4 v6, -0x1

    if-ne v8, v6, :cond_a05

    .line 784
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto/16 :goto_a05

    .line 853
    :cond_b00
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getRequestSpType(Lcom/sec/android/app/sns/request/data/SnsRequest;)Ljava/util/HashSet;

    move-result-object v61

    .line 854
    .restart local v61       #tempSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual/range {v61 .. v61}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .restart local v41       #i$:Ljava/util/Iterator;
    :cond_b0c
    :goto_b0c
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_882

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 855
    .restart local v22       #tempSpType:I
    new-instance v20, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v21

    const/16 v26, 0x0

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v17

    invoke-direct/range {v20 .. v26}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 857
    .restart local v20       #retryLoginCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 859
    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v30

    .line 860
    .restart local v30       #account:Lcom/sec/android/app/sns/account/SnsAccount;
    if-eqz v30, :cond_b0c

    .line 861
    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sns/account/SnsAccount;->setSessionValidity(Z)V

    goto :goto_b0c

    .line 820
    .end local v20           #retryLoginCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    .end local v22           #tempSpType:I
    .end local v30           #account:Lcom/sec/android/app/sns/account/SnsAccount;
    .end local v41           #i$:Ljava/util/Iterator;
    .end local v61           #tempSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_b4e
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b5f

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/sns/util/SnsUtil;->isOAuthSpType(I)Z

    move-result v6

    if-eqz v6, :cond_b71

    :cond_b5f
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x29

    if-ne v6, v7, :cond_a77

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/sns/util/SnsUtil;->isOAuthSpType(I)Z

    move-result v6

    if-eqz v6, :cond_a77

    .line 824
    :cond_b71
    new-instance v19, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v20

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v21

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v17

    move-object/from16 v25, v18

    invoke-direct/range {v19 .. v25}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 826
    .restart local v19       #msgRetrieveCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v6, v0, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_a77

    .line 850
    .end local v19           #msgRetrieveCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    .restart local v22       #tempSpType:I
    .restart local v60       #tempErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    :cond_b98
    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    move-object/from16 v60, v0

    goto/16 :goto_a80

    .line 905
    .end local v22           #tempSpType:I
    .end local v60           #tempErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    :cond_ba0
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_bb0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x22

    if-ne v6, v7, :cond_928

    .line 909
    :cond_bb0
    if-eqz v17, :cond_c39

    .line 910
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_c5e

    .line 911
    move-object/from16 v0, v50

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestGenerator;->createPhotoUploadBodyRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v46

    .line 913
    .restart local v46       #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 914
    const/4 v6, 0x2

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v39

    invoke-virtual {v0, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_928

    .line 902
    .end local v46           #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    .restart local v5       #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_bdf
    const/4 v6, 0x1

    move-object/from16 v0, v39

    invoke-virtual {v0, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_928

    .line 887
    .restart local v46       #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_bed
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x24

    if-ne v6, v7, :cond_c19

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mAppContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    move-object/from16 v6, v50

    check-cast v6, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;

    invoke-virtual {v6}, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->getInternalSp()I

    move-result v25

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v26

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v27

    move-object/from16 v28, v50

    move-object/from16 v29, v47

    invoke-static/range {v23 .. v29}, Lcom/sec/android/app/sns/request/SnsRequestGenerator;->createRequest(Landroid/content/Context;IIIILcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v46

    goto/16 :goto_90d

    .line 893
    :cond_c19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mAppContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v25

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v26

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v27

    move-object/from16 v28, v50

    move-object/from16 v29, v47

    invoke-static/range {v23 .. v29}, Lcom/sec/android/app/sns/request/SnsRequestGenerator;->createRequest(Landroid/content/Context;IIIILcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v46

    goto/16 :goto_90d

    .line 924
    .end local v5           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    .end local v46           #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_c39
    new-instance v5, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v6

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v7

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct/range {v5 .. v18}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 928
    .restart local v5       #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_928

    .line 916
    .end local v5           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_c5e
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x22

    if-ne v6, v7, :cond_928

    .line 917
    move-object/from16 v0, v50

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestGenerator;->createVideoUploadBodyRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v46

    .line 919
    .restart local v46       #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 920
    const/4 v6, 0x2

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v39

    invoke-virtual {v0, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_928

    .line 745
    .end local v8           #resultReqID:I
    .end local v9           #resultReqType:I
    .end local v46           #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    .restart local v37       #e:Ljava/lang/NullPointerException;
    :cond_c8b
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_cb8

    .line 746
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->removeFromRequestMap(I)V

    .line 747
    if-eqz v17, :cond_d99

    .line 748
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : success key resolve."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v6, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->setSessionStatus(I)V

    .line 751
    invoke-virtual/range {v45 .. v45}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->writeSessionInfo()V

    .line 753
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : process Queued Request When NormalSession"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->resumeWaitingRequest()V

    goto/16 :goto_36d

    .line 768
    :cond_cb8
    const/4 v8, -0x1

    .line 769
    .restart local v8       #resultReqID:I
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 772
    .restart local v9       #resultReqType:I
    const/16 v6, 0x21

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_dae

    move-object/from16 v48, v50

    .line 773
    check-cast v48, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;

    .line 774
    .restart local v48       #photoUploadBodyReq:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;
    invoke-virtual/range {v48 .. v48}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->getParentRequestID()I

    move-result v8

    .line 776
    const/16 v9, 0x20

    .line 790
    .end local v48           #photoUploadBodyReq:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;
    :cond_ccf
    :goto_ccf
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_d43

    .line 792
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_d0a

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x22

    if-eq v6, v7, :cond_d0a

    .line 796
    const/4 v5, 0x0

    .line 798
    .restart local v5       #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    new-instance v5, Lcom/sec/android/app/sns/result/SnsResultData;

    .end local v5           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v6

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v7

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct/range {v5 .. v18}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 803
    .restart local v5       #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 810
    .end local v5           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_d0a
    if-eqz v17, :cond_d43

    .line 811
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x15

    if-ne v6, v7, :cond_e19

    .line 813
    new-instance v19, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v25

    const/16 v6, 0x13

    const/16 v7, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v6, v7, v11, v12}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getTypicalContentUriByReqType(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v23, v19

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v28, v17

    invoke-direct/range {v23 .. v29}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 818
    .restart local v19       #msgRetrieveCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v6, v0, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 833
    .end local v19           #msgRetrieveCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_d43
    :goto_d43
    if-eqz v33, :cond_93f

    const/4 v6, 0x3

    if-eq v9, v6, :cond_93f

    .line 835
    if-eqz v56, :cond_dcb

    .line 836
    move-object/from16 v60, v56

    .line 837
    .restart local v60       #tempErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    :goto_d4c
    if-eqz v60, :cond_93c

    .line 838
    const/16 v22, 0x0

    .restart local v22       #tempSpType:I
    :goto_d50
    sget-object v6, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    array-length v6, v6

    move/from16 v0, v22

    if-ge v0, v6, :cond_e65

    .line 839
    move-object/from16 v0, v60

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mValue:Ljava/lang/String;

    sget-object v7, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    aget-object v7, v7, v22

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d96

    .line 840
    new-instance v20, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v21

    const/16 v26, 0x0

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v17

    invoke-direct/range {v20 .. v26}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 843
    .restart local v20       #retryLoginCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 845
    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v30

    .line 846
    .restart local v30       #account:Lcom/sec/android/app/sns/account/SnsAccount;
    if-eqz v30, :cond_d96

    .line 847
    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sns/account/SnsAccount;->setSessionValidity(Z)V

    .line 838
    .end local v20           #retryLoginCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    .end local v30           #account:Lcom/sec/android/app/sns/account/SnsAccount;
    :cond_d96
    add-int/lit8 v22, v22, 0x1

    goto :goto_d50

    .line 758
    .end local v8           #resultReqID:I
    .end local v9           #resultReqType:I
    .end local v22           #tempSpType:I
    .end local v60           #tempErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    :cond_d99
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : failed key resolve."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const/4 v6, 0x2

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->setSessionStatus(I)V

    .line 761
    invoke-virtual/range {v45 .. v45}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->writeSessionInfo()V

    .line 762
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->processQueuedRequestWhenFatalErrorSession()V

    goto/16 :goto_ae0

    .line 777
    .restart local v8       #resultReqID:I
    .restart local v9       #resultReqType:I
    :cond_dae
    const/16 v6, 0x23

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_dc2

    move-object/from16 v63, v50

    .line 778
    check-cast v63, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;

    .line 779
    .restart local v63       #videoUploadBodyReq:Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;
    invoke-virtual/range {v63 .. v63}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->getParentRequestID()I

    move-result v8

    .line 781
    const/16 v9, 0x22

    .line 782
    goto/16 :goto_ccf

    .line 783
    .end local v63           #videoUploadBodyReq:Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;
    :cond_dc2
    const/4 v6, -0x1

    if-ne v8, v6, :cond_ccf

    .line 784
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto/16 :goto_ccf

    .line 853
    :cond_dcb
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getRequestSpType(Lcom/sec/android/app/sns/request/data/SnsRequest;)Ljava/util/HashSet;

    move-result-object v61

    .line 854
    .restart local v61       #tempSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual/range {v61 .. v61}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .restart local v41       #i$:Ljava/util/Iterator;
    :cond_dd7
    :goto_dd7
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_93c

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 855
    .restart local v22       #tempSpType:I
    new-instance v20, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v21

    const/16 v26, 0x0

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v17

    invoke-direct/range {v20 .. v26}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 857
    .restart local v20       #retryLoginCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 859
    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v30

    .line 860
    .restart local v30       #account:Lcom/sec/android/app/sns/account/SnsAccount;
    if-eqz v30, :cond_dd7

    .line 861
    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sns/account/SnsAccount;->setSessionValidity(Z)V

    goto :goto_dd7

    .line 820
    .end local v20           #retryLoginCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    .end local v22           #tempSpType:I
    .end local v30           #account:Lcom/sec/android/app/sns/account/SnsAccount;
    .end local v41           #i$:Ljava/util/Iterator;
    .end local v61           #tempSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_e19
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_e2a

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/sns/util/SnsUtil;->isOAuthSpType(I)Z

    move-result v6

    if-eqz v6, :cond_e3c

    :cond_e2a
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x29

    if-ne v6, v7, :cond_d43

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/sns/util/SnsUtil;->isOAuthSpType(I)Z

    move-result v6

    if-eqz v6, :cond_d43

    .line 824
    :cond_e3c
    new-instance v19, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v25

    move-object/from16 v23, v19

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v28, v17

    move-object/from16 v29, v18

    invoke-direct/range {v23 .. v29}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 826
    .restart local v19       #msgRetrieveCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v6, v0, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_d43

    .line 850
    .end local v19           #msgRetrieveCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    .restart local v22       #tempSpType:I
    .restart local v60       #tempErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    :cond_e65
    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    move-object/from16 v60, v0

    goto/16 :goto_d4c

    .line 905
    .end local v22           #tempSpType:I
    .end local v60           #tempErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    :cond_e6d
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_e7d

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x22

    if-ne v6, v7, :cond_9e2

    .line 909
    :cond_e7d
    if-eqz v17, :cond_f06

    .line 910
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_f2b

    .line 911
    move-object/from16 v0, v50

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestGenerator;->createPhotoUploadBodyRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v46

    .line 913
    .restart local v46       #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 914
    const/4 v6, 0x2

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v39

    invoke-virtual {v0, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9e2

    .line 902
    .end local v46           #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    .restart local v5       #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_eac
    const/4 v6, 0x1

    move-object/from16 v0, v39

    invoke-virtual {v0, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9e2

    .line 887
    .restart local v46       #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_eba
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x24

    if-ne v6, v7, :cond_ee6

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mAppContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    move-object/from16 v6, v50

    check-cast v6, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;

    invoke-virtual {v6}, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->getInternalSp()I

    move-result v25

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v26

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v27

    move-object/from16 v28, v50

    move-object/from16 v29, v47

    invoke-static/range {v23 .. v29}, Lcom/sec/android/app/sns/request/SnsRequestGenerator;->createRequest(Landroid/content/Context;IIIILcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v46

    goto/16 :goto_9c7

    .line 893
    :cond_ee6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mAppContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v25

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v26

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v27

    move-object/from16 v28, v50

    move-object/from16 v29, v47

    invoke-static/range {v23 .. v29}, Lcom/sec/android/app/sns/request/SnsRequestGenerator;->createRequest(Landroid/content/Context;IIIILcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v46

    goto/16 :goto_9c7

    .line 924
    .end local v5           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    .end local v46           #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_f06
    new-instance v5, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v6

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v7

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct/range {v5 .. v18}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 928
    .restart local v5       #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9e2

    .line 916
    .end local v5           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_f2b
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x22

    if-ne v6, v7, :cond_9e2

    .line 917
    move-object/from16 v0, v50

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestGenerator;->createVideoUploadBodyRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v46

    .line 919
    .restart local v46       #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 920
    const/4 v6, 0x2

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v39

    invoke-virtual {v0, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9e2

    .line 768
    .end local v8           #resultReqID:I
    .end local v9           #resultReqType:I
    .end local v46           #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    .local v37, e:Ljava/lang/Exception;
    :cond_f58
    const/4 v8, -0x1

    .line 769
    .restart local v8       #resultReqID:I
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 772
    .restart local v9       #resultReqType:I
    const/16 v6, 0x21

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_104e

    move-object/from16 v48, v50

    .line 773
    check-cast v48, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;

    .line 774
    .restart local v48       #photoUploadBodyReq:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;
    invoke-virtual/range {v48 .. v48}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->getParentRequestID()I

    move-result v8

    .line 776
    const/16 v9, 0x20

    .line 790
    .end local v48           #photoUploadBodyReq:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;
    :cond_f6f
    :goto_f6f
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_fe3

    .line 792
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_faa

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x22

    if-eq v6, v7, :cond_faa

    .line 796
    const/4 v5, 0x0

    .line 798
    .restart local v5       #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    new-instance v5, Lcom/sec/android/app/sns/result/SnsResultData;

    .end local v5           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v6

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v7

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct/range {v5 .. v18}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 803
    .restart local v5       #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 810
    .end local v5           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_faa
    if-eqz v17, :cond_fe3

    .line 811
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x15

    if-ne v6, v7, :cond_1165

    .line 813
    new-instance v19, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v25

    const/16 v6, 0x13

    const/16 v7, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v6, v7, v11, v12}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getTypicalContentUriByReqType(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v23, v19

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v28, v17

    invoke-direct/range {v23 .. v29}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 818
    .restart local v19       #msgRetrieveCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v6, v0, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 833
    .end local v19           #msgRetrieveCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_fe3
    :goto_fe3
    if-eqz v33, :cond_106e

    const/4 v6, 0x3

    if-eq v9, v6, :cond_106e

    .line 835
    if-eqz v56, :cond_1117

    .line 836
    move-object/from16 v60, v56

    .line 837
    .restart local v60       #tempErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    :goto_fec
    if-eqz v60, :cond_106b

    .line 838
    const/16 v22, 0x0

    .restart local v22       #tempSpType:I
    :goto_ff0
    sget-object v6, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    array-length v6, v6

    move/from16 v0, v22

    if-ge v0, v6, :cond_11b1

    .line 839
    move-object/from16 v0, v60

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mValue:Ljava/lang/String;

    sget-object v7, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    aget-object v7, v7, v22

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1036

    .line 840
    new-instance v20, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v21

    const/16 v26, 0x0

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v17

    invoke-direct/range {v20 .. v26}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 843
    .restart local v20       #retryLoginCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 845
    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v30

    .line 846
    .restart local v30       #account:Lcom/sec/android/app/sns/account/SnsAccount;
    if-eqz v30, :cond_1036

    .line 847
    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sns/account/SnsAccount;->setSessionValidity(Z)V

    .line 838
    .end local v20           #retryLoginCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    .end local v30           #account:Lcom/sec/android/app/sns/account/SnsAccount;
    :cond_1036
    add-int/lit8 v22, v22, 0x1

    goto :goto_ff0

    .line 758
    .end local v8           #resultReqID:I
    .end local v9           #resultReqType:I
    .end local v22           #tempSpType:I
    .end local v60           #tempErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    :cond_1039
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : failed key resolve."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const/4 v6, 0x2

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->setSessionStatus(I)V

    .line 761
    invoke-virtual/range {v45 .. v45}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->writeSessionInfo()V

    .line 762
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->processQueuedRequestWhenFatalErrorSession()V

    goto/16 :goto_ae0

    .line 777
    .restart local v8       #resultReqID:I
    .restart local v9       #resultReqType:I
    :cond_104e
    const/16 v6, 0x23

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_1062

    move-object/from16 v63, v50

    .line 778
    check-cast v63, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;

    .line 779
    .restart local v63       #videoUploadBodyReq:Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;
    invoke-virtual/range {v63 .. v63}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->getParentRequestID()I

    move-result v8

    .line 781
    const/16 v9, 0x22

    .line 782
    goto/16 :goto_f6f

    .line 783
    .end local v63           #videoUploadBodyReq:Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;
    :cond_1062
    const/4 v6, -0x1

    if-ne v8, v6, :cond_f6f

    .line 784
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto/16 :goto_f6f

    .line 864
    :cond_106b
    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->writeAccountInfo()V

    .line 867
    :cond_106e
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_108e

    .line 868
    const-string v6, "SNS_REQUESTMGR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processResponse() : req = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_108e
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_11b9

    .line 874
    new-instance v5, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v25

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v26

    move-object/from16 v23, v5

    move/from16 v27, v9

    move/from16 v28, v17

    move-object/from16 v29, v18

    invoke-direct/range {v23 .. v29}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 877
    .restart local v5       #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getCancel()Z

    move-result v6

    if-nez v6, :cond_11f8

    if-eqz v47, :cond_11f8

    move-object/from16 v0, v47

    iget v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_11f8

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_11f8

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPending()Z

    move-result v6

    if-nez v6, :cond_11f8

    .line 881
    const/16 v46, 0x0

    .line 882
    .restart local v46       #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x13

    if-ne v6, v7, :cond_1206

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mAppContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    move-object/from16 v6, v50

    check-cast v6, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;

    invoke-virtual {v6}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getInternalSp()I

    move-result v25

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v26

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v27

    move-object/from16 v28, v50

    move-object/from16 v29, v47

    invoke-static/range {v23 .. v29}, Lcom/sec/android/app/sns/request/SnsRequestGenerator;->createRequest(Landroid/content/Context;IIIILcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v46

    .line 898
    :goto_10f6
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 899
    const/4 v6, 0x2

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v39

    invoke-virtual {v0, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 934
    .end local v5           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    .end local v46           #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_1111
    :goto_1111
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v6

    goto/16 :goto_9e6

    .line 853
    :cond_1117
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getRequestSpType(Lcom/sec/android/app/sns/request/data/SnsRequest;)Ljava/util/HashSet;

    move-result-object v61

    .line 854
    .restart local v61       #tempSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual/range {v61 .. v61}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .restart local v41       #i$:Ljava/util/Iterator;
    :cond_1123
    :goto_1123
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_106b

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 855
    .restart local v22       #tempSpType:I
    new-instance v20, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v21

    const/16 v26, 0x0

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v17

    invoke-direct/range {v20 .. v26}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 857
    .restart local v20       #retryLoginCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 859
    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v30

    .line 860
    .restart local v30       #account:Lcom/sec/android/app/sns/account/SnsAccount;
    if-eqz v30, :cond_1123

    .line 861
    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sns/account/SnsAccount;->setSessionValidity(Z)V

    goto :goto_1123

    .line 820
    .end local v20           #retryLoginCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    .end local v22           #tempSpType:I
    .end local v30           #account:Lcom/sec/android/app/sns/account/SnsAccount;
    .end local v41           #i$:Ljava/util/Iterator;
    .end local v61           #tempSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_1165
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1176

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/sns/util/SnsUtil;->isOAuthSpType(I)Z

    move-result v6

    if-eqz v6, :cond_1188

    :cond_1176
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x29

    if-ne v6, v7, :cond_fe3

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/sns/util/SnsUtil;->isOAuthSpType(I)Z

    move-result v6

    if-eqz v6, :cond_fe3

    .line 824
    :cond_1188
    new-instance v19, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v25

    move-object/from16 v23, v19

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v28, v17

    move-object/from16 v29, v18

    invoke-direct/range {v23 .. v29}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 826
    .restart local v19       #msgRetrieveCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v6, v0, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_fe3

    .line 850
    .end local v19           #msgRetrieveCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    .restart local v22       #tempSpType:I
    .restart local v60       #tempErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    :cond_11b1
    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    move-object/from16 v60, v0

    goto/16 :goto_fec

    .line 905
    .end local v22           #tempSpType:I
    .end local v60           #tempErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    :cond_11b9
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_11c9

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x22

    if-ne v6, v7, :cond_1111

    .line 909
    :cond_11c9
    if-eqz v17, :cond_1252

    .line 910
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_1277

    .line 911
    move-object/from16 v0, v50

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestGenerator;->createPhotoUploadBodyRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v46

    .line 913
    .restart local v46       #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 914
    const/4 v6, 0x2

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v39

    invoke-virtual {v0, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1111

    .line 902
    .end local v46           #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    .restart local v5       #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_11f8
    const/4 v6, 0x1

    move-object/from16 v0, v39

    invoke-virtual {v0, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1111

    .line 887
    .restart local v46       #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_1206
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x24

    if-ne v6, v7, :cond_1232

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mAppContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    move-object/from16 v6, v50

    check-cast v6, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;

    invoke-virtual {v6}, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->getInternalSp()I

    move-result v25

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v26

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v27

    move-object/from16 v28, v50

    move-object/from16 v29, v47

    invoke-static/range {v23 .. v29}, Lcom/sec/android/app/sns/request/SnsRequestGenerator;->createRequest(Landroid/content/Context;IIIILcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v46

    goto/16 :goto_10f6

    .line 893
    :cond_1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mAppContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v25

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v26

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v27

    move-object/from16 v28, v50

    move-object/from16 v29, v47

    invoke-static/range {v23 .. v29}, Lcom/sec/android/app/sns/request/SnsRequestGenerator;->createRequest(Landroid/content/Context;IIIILcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v46

    goto/16 :goto_10f6

    .line 924
    .end local v5           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    .end local v46           #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_1252
    new-instance v5, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v6

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v7

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct/range {v5 .. v18}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 928
    .restart local v5       #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1111

    .line 916
    .end local v5           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_1277
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x22

    if-ne v6, v7, :cond_1111

    .line 917
    move-object/from16 v0, v50

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestGenerator;->createVideoUploadBodyRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v46

    .line 919
    .restart local v46       #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 920
    const/4 v6, 0x2

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v39

    invoke-virtual {v0, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1111

    .line 768
    .end local v8           #resultReqID:I
    .end local v9           #resultReqType:I
    .end local v37           #e:Ljava/lang/Exception;
    .end local v46           #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_12a4
    const/4 v8, -0x1

    .line 769
    .restart local v8       #resultReqID:I
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 772
    .restart local v9       #resultReqType:I
    const/16 v6, 0x21

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_139a

    move-object/from16 v48, v50

    .line 773
    check-cast v48, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;

    .line 774
    .restart local v48       #photoUploadBodyReq:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;
    invoke-virtual/range {v48 .. v48}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->getParentRequestID()I

    move-result v8

    .line 776
    const/16 v9, 0x20

    .line 790
    .end local v48           #photoUploadBodyReq:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;
    :cond_12bb
    :goto_12bb
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_132f

    .line 792
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_12f6

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x22

    if-eq v6, v7, :cond_12f6

    .line 796
    const/4 v5, 0x0

    .line 798
    .restart local v5       #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    new-instance v5, Lcom/sec/android/app/sns/result/SnsResultData;

    .end local v5           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v6

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v7

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct/range {v5 .. v18}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 803
    .restart local v5       #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 810
    .end local v5           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_12f6
    if-eqz v17, :cond_132f

    .line 811
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x15

    if-ne v6, v7, :cond_14b1

    .line 813
    new-instance v19, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v25

    const/16 v6, 0x13

    const/16 v7, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v6, v7, v11, v12}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getTypicalContentUriByReqType(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v23, v19

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v28, v17

    invoke-direct/range {v23 .. v29}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 818
    .restart local v19       #msgRetrieveCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v6, v0, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 833
    .end local v19           #msgRetrieveCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_132f
    :goto_132f
    if-eqz v33, :cond_13ba

    const/4 v6, 0x3

    if-eq v9, v6, :cond_13ba

    .line 835
    if-eqz v56, :cond_1463

    .line 836
    move-object/from16 v60, v56

    .line 837
    .restart local v60       #tempErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    :goto_1338
    if-eqz v60, :cond_13b7

    .line 838
    const/16 v22, 0x0

    .restart local v22       #tempSpType:I
    :goto_133c
    sget-object v6, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    array-length v6, v6

    move/from16 v0, v22

    if-ge v0, v6, :cond_14fd

    .line 839
    move-object/from16 v0, v60

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mValue:Ljava/lang/String;

    sget-object v7, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    aget-object v7, v7, v22

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1382

    .line 840
    new-instance v20, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v21

    const/16 v26, 0x0

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v17

    invoke-direct/range {v20 .. v26}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 843
    .restart local v20       #retryLoginCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 845
    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v30

    .line 846
    .restart local v30       #account:Lcom/sec/android/app/sns/account/SnsAccount;
    if-eqz v30, :cond_1382

    .line 847
    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sns/account/SnsAccount;->setSessionValidity(Z)V

    .line 838
    .end local v20           #retryLoginCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    .end local v30           #account:Lcom/sec/android/app/sns/account/SnsAccount;
    :cond_1382
    add-int/lit8 v22, v22, 0x1

    goto :goto_133c

    .line 758
    .end local v8           #resultReqID:I
    .end local v9           #resultReqType:I
    .end local v22           #tempSpType:I
    .end local v60           #tempErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    :cond_1385
    const-string v6, "SNS_REQUESTMGR"

    const-string v7, "processResponse() : failed key resolve."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const/4 v6, 0x2

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->setSessionStatus(I)V

    .line 761
    invoke-virtual/range {v45 .. v45}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->writeSessionInfo()V

    .line 762
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->processQueuedRequestWhenFatalErrorSession()V

    goto/16 :goto_ae0

    .line 777
    .restart local v8       #resultReqID:I
    .restart local v9       #resultReqType:I
    :cond_139a
    const/16 v6, 0x23

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_13ae

    move-object/from16 v63, v50

    .line 778
    check-cast v63, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;

    .line 779
    .restart local v63       #videoUploadBodyReq:Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;
    invoke-virtual/range {v63 .. v63}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->getParentRequestID()I

    move-result v8

    .line 781
    const/16 v9, 0x22

    .line 782
    goto/16 :goto_12bb

    .line 783
    .end local v63           #videoUploadBodyReq:Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;
    :cond_13ae
    const/4 v6, -0x1

    if-ne v8, v6, :cond_12bb

    .line 784
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto/16 :goto_12bb

    .line 864
    :cond_13b7
    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->writeAccountInfo()V

    .line 867
    :cond_13ba
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_13da

    .line 868
    const-string v6, "SNS_REQUESTMGR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processResponse() : req = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_13da
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_1505

    .line 874
    new-instance v5, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v25

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v26

    move-object/from16 v23, v5

    move/from16 v27, v9

    move/from16 v28, v17

    move-object/from16 v29, v18

    invoke-direct/range {v23 .. v29}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 877
    .restart local v5       #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getCancel()Z

    move-result v6

    if-nez v6, :cond_1544

    if-eqz v47, :cond_1544

    move-object/from16 v0, v47

    iget v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1544

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1544

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPending()Z

    move-result v6

    if-nez v6, :cond_1544

    .line 881
    const/16 v46, 0x0

    .line 882
    .restart local v46       #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x13

    if-ne v6, v7, :cond_1552

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mAppContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    move-object/from16 v6, v50

    check-cast v6, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;

    invoke-virtual {v6}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getInternalSp()I

    move-result v25

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v26

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v27

    move-object/from16 v28, v50

    move-object/from16 v29, v47

    invoke-static/range {v23 .. v29}, Lcom/sec/android/app/sns/request/SnsRequestGenerator;->createRequest(Landroid/content/Context;IIIILcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v46

    .line 898
    :goto_1442
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 899
    const/4 v6, 0x2

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v39

    invoke-virtual {v0, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 934
    .end local v5           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    .end local v46           #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_145d
    :goto_145d
    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v6

    goto/16 :goto_9e6

    .line 853
    :cond_1463
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getRequestSpType(Lcom/sec/android/app/sns/request/data/SnsRequest;)Ljava/util/HashSet;

    move-result-object v61

    .line 854
    .restart local v61       #tempSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual/range {v61 .. v61}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .restart local v41       #i$:Ljava/util/Iterator;
    :cond_146f
    :goto_146f
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13b7

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 855
    .restart local v22       #tempSpType:I
    new-instance v20, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v21

    const/16 v26, 0x0

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v17

    invoke-direct/range {v20 .. v26}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 857
    .restart local v20       #retryLoginCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 859
    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v30

    .line 860
    .restart local v30       #account:Lcom/sec/android/app/sns/account/SnsAccount;
    if-eqz v30, :cond_146f

    .line 861
    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sns/account/SnsAccount;->setSessionValidity(Z)V

    goto :goto_146f

    .line 820
    .end local v20           #retryLoginCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    .end local v22           #tempSpType:I
    .end local v30           #account:Lcom/sec/android/app/sns/account/SnsAccount;
    .end local v41           #i$:Ljava/util/Iterator;
    .end local v61           #tempSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_14b1
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_14c2

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/sns/util/SnsUtil;->isOAuthSpType(I)Z

    move-result v6

    if-eqz v6, :cond_14d4

    :cond_14c2
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x29

    if-ne v6, v7, :cond_132f

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/sns/util/SnsUtil;->isOAuthSpType(I)Z

    move-result v6

    if-eqz v6, :cond_132f

    .line 824
    :cond_14d4
    new-instance v19, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v25

    move-object/from16 v23, v19

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v28, v17

    move-object/from16 v29, v18

    invoke-direct/range {v23 .. v29}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 826
    .restart local v19       #msgRetrieveCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v6, v0, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_132f

    .line 850
    .end local v19           #msgRetrieveCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    .restart local v22       #tempSpType:I
    .restart local v60       #tempErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    :cond_14fd
    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    move-object/from16 v60, v0

    goto/16 :goto_1338

    .line 905
    .end local v22           #tempSpType:I
    .end local v60           #tempErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    :cond_1505
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_1515

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x22

    if-ne v6, v7, :cond_145d

    .line 909
    :cond_1515
    if-eqz v17, :cond_159e

    .line 910
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_15c3

    .line 911
    move-object/from16 v0, v50

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestGenerator;->createPhotoUploadBodyRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v46

    .line 913
    .restart local v46       #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 914
    const/4 v6, 0x2

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v39

    invoke-virtual {v0, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_145d

    .line 902
    .end local v46           #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    .restart local v5       #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_1544
    const/4 v6, 0x1

    move-object/from16 v0, v39

    invoke-virtual {v0, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_145d

    .line 887
    .restart local v46       #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_1552
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x24

    if-ne v6, v7, :cond_157e

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mAppContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    move-object/from16 v6, v50

    check-cast v6, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;

    invoke-virtual {v6}, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->getInternalSp()I

    move-result v25

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v26

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v27

    move-object/from16 v28, v50

    move-object/from16 v29, v47

    invoke-static/range {v23 .. v29}, Lcom/sec/android/app/sns/request/SnsRequestGenerator;->createRequest(Landroid/content/Context;IIIILcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v46

    goto/16 :goto_1442

    .line 893
    :cond_157e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mAppContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v24

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v25

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v26

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v27

    move-object/from16 v28, v50

    move-object/from16 v29, v47

    invoke-static/range {v23 .. v29}, Lcom/sec/android/app/sns/request/SnsRequestGenerator;->createRequest(Landroid/content/Context;IIIILcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v46

    goto/16 :goto_1442

    .line 924
    .end local v5           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    .end local v46           #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_159e
    new-instance v5, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v6

    invoke-virtual/range {v50 .. v50}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v7

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct/range {v5 .. v18}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 928
    .restart local v5       #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_145d

    .line 916
    .end local v5           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_15c3
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x22

    if-ne v6, v7, :cond_145d

    .line 917
    move-object/from16 v0, v50

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestGenerator;->createVideoUploadBodyRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v46

    .line 919
    .restart local v46       #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 920
    const/4 v6, 0x2

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v39

    invoke-virtual {v0, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_145d

    .line 739
    .end local v8           #resultReqID:I
    .end local v9           #resultReqType:I
    .end local v10           #bContinued:Z
    .end local v46           #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    .restart local v32       #bContinued:Z
    :catchall_15f0
    move-exception v6

    move-object/from16 v64, v6

    move/from16 v10, v32

    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto/16 :goto_490

    .line 733
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :catch_15f7
    move-exception v37

    move/from16 v10, v32

    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto/16 :goto_332

    .line 729
    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    :catch_15fc
    move-exception v37

    move/from16 v10, v32

    .end local v32           #bContinued:Z
    .restart local v10       #bContinued:Z
    goto/16 :goto_315

    :cond_1601
    move/from16 v32, v10

    .end local v10           #bContinued:Z
    .restart local v32       #bContinued:Z
    goto/16 :goto_3db

    .line 486
    nop

    :sswitch_data_1606
    .sparse-switch
        0x0 -> :sswitch_552
        0x1 -> :sswitch_552
        0x2 -> :sswitch_556
        0xbb9 -> :sswitch_6e0
        0xbba -> :sswitch_680
        0xbbb -> :sswitch_7e1
        0xbbc -> :sswitch_767
        0xfa3 -> :sswitch_680
        0x13ed -> :sswitch_85a
        0x13ee -> :sswitch_85a
    .end sparse-switch

    .line 499
    :pswitch_data_1630
    .packed-switch 0x5
        :pswitch_59d
        :pswitch_5d0
        :pswitch_566
        :pswitch_5e0
        :pswitch_566
        :pswitch_5d8
        :pswitch_566
        :pswitch_614
        :pswitch_5e8
        :pswitch_5f0
        :pswitch_566
        :pswitch_566
        :pswitch_638
        :pswitch_566
        :pswitch_641
        :pswitch_566
        :pswitch_566
        :pswitch_64a
        :pswitch_566
        :pswitch_566
        :pswitch_653
        :pswitch_566
        :pswitch_566
        :pswitch_566
        :pswitch_65c
        :pswitch_665
        :pswitch_566
        :pswitch_566
        :pswitch_566
        :pswitch_566
        :pswitch_566
        :pswitch_66e
        :pswitch_677
    .end packed-switch
.end method

.method public resumeWaitingRequest()V
    .registers 6

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 154
    .local v0, handler:Landroid/os/Handler;
    iget-object v3, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mRequestMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 156
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/sns/request/data/SnsRequest;>;"
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sns/request/data/SnsRequest;

    .line 158
    .local v2, nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqStatus()I

    move-result v3

    if-nez v3, :cond_e

    .line 159
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 160
    const/4 v3, 0x2

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_e

    .line 164
    .end local v2           #nextReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_34
    return-void
.end method

.method public setRequestCancelling(I)V
    .registers 5
    .parameter "pollingID"

    .prologue
    .line 983
    iget-object v2, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mRequestMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 985
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/sns/request/data/SnsRequest;>;"
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 986
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sns/request/data/SnsRequest;

    .line 987
    .local v1, req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v2

    if-ne v2, p1, :cond_a

    .line 988
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->setCancel()V

    goto :goto_a

    .line 990
    .end local v1           #req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_20
    return-void
.end method

.method public setRequestPending(I)V
    .registers 5
    .parameter "pollingID"

    .prologue
    .line 994
    iget-object v2, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr;->mRequestMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 996
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/sns/request/data/SnsRequest;>;"
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 997
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sns/request/data/SnsRequest;

    .line 998
    .local v1, req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v2

    if-ne v2, p1, :cond_a

    .line 999
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->setPending()V

    goto :goto_a

    .line 1001
    .end local v1           #req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_20
    return-void
.end method
