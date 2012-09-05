.class public abstract Lcom/android/common/contacts/BaseEmailAddressAdapterSec;
.super Lcom/android/common/widget/CompositeCursorAdapter;
.source "BaseEmailAddressAdapterSec.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;,
        Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;,
        Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryListQuery;,
        Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;,
        Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery;,
        Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    }
.end annotation


# static fields
.field private static BackupOfSearchedString:Ljava/lang/String;

.field public static ExpandResultMaxAndShowMoreMode:Z

.field public static final RIC_URI:Landroid/net/Uri;

.field public static isEnableGroupSearch:Z


# instance fields
.field private Acc_Id:Ljava/lang/Long;

.field private mAccount:Landroid/accounts/Account;

.field protected final mContentResolver:Landroid/content/ContentResolver;

.field private mDirectoriesLoaded:Z

.field private mHandler:Landroid/os/Handler;

.field private mInputText:Ljava/lang/String;

.field private mPreferredMaxResultCount:I

.field protected final mSynchronizer:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 97
    const-string v0, "content://com.android.exchange.directory.provider/recipientInformation cache/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->RIC_URI:Landroid/net/Uri;

    .line 120
    sput-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    .line 121
    sput-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mInputText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mDirectoriesLoaded:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mDirectoriesLoaded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mPreferredMaxResultCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Ljava/lang/Long;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->Acc_Id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addShowMoreButtonAtlastPatition()V
    .registers 16

    .prologue
    .line 874
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v11

    .line 876
    .local v11, totalPatitionCount:I
    const/4 v12, 0x1

    if-gt v11, v12, :cond_f

    .line 877
    const-string v12, "BaseEmailAddressAdapter"

    const-string v13, "addShowMoreButtonAtlastPatition : partition is none"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :goto_e
    return-void

    .line 881
    :cond_f
    add-int/lit8 v8, v11, -0x1

    .line 883
    .local v8, partionindex:I
    const/4 v3, 0x0

    .line 884
    .local v3, enbleShowMore:Z
    const/4 v4, 0x1

    .local v4, i:I
    :goto_13
    if-ge v4, v11, :cond_6e

    .line 885
    invoke-virtual {p0, v4}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v9

    check-cast v9, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 886
    .local v9, partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    if-eqz v9, :cond_6b

    .line 888
    invoke-virtual {p0, v4}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 889
    .local v0, curCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_6b

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-ltz v12, :cond_6b

    .line 891
    const-string v12, "BaseEmailAddressAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addShowMoreButtonAtlastPatition : cursor is not null. + ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-boolean v12, v9, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->moreResultIsRemained:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6b

    .line 894
    const-string v12, "BaseEmailAddressAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addShowMoreButtonAtlastPatition : showmore does not need. + ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const/4 v3, 0x1

    .line 884
    .end local v0           #curCursor:Landroid/database/Cursor;
    :cond_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 902
    .end local v9           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_6e
    invoke-virtual {p0, v8}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getCursor(I)Landroid/database/Cursor;

    move-result-object v6

    .line 904
    .local v6, lastCursor:Landroid/database/Cursor;
    new-instance v7, Landroid/database/MatrixCursor;

    sget-object v12, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v7, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 905
    .local v7, newCursor:Landroid/database/MatrixCursor;
    if-eqz v6, :cond_ba

    .line 907
    const/4 v12, -0x1

    invoke-interface {v6, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 908
    :cond_7f
    :goto_7f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_ba

    .line 912
    const/4 v12, 0x0

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 913
    .local v1, displayName:Ljava/lang/String;
    const/4 v12, 0x1

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 916
    .local v2, emailAddress:Ljava/lang/String;
    sget-object v12, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 917
    .local v5, imageIndex:I
    const/4 v10, 0x0

    .line 920
    .local v10, pictureData:Ljava/lang/String;
    if-eqz v1, :cond_a3

    const-string v12, "gal_search_show_more"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7f

    .line 925
    :cond_a3
    const/4 v12, -0x1

    if-eq v5, v12, :cond_aa

    .line 926
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 931
    :cond_aa
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    const/4 v13, 0x1

    aput-object v2, v12, v13

    const/4 v13, 0x2

    aput-object v10, v12, v13

    invoke-virtual {v7, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_7f

    .line 938
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #emailAddress:Ljava/lang/String;
    .end local v5           #imageIndex:I
    .end local v10           #pictureData:Ljava/lang/String;
    :cond_ba
    if-eqz v3, :cond_d6

    .line 941
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "gal_search_show_more"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "-1"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "gal_search_show_more"

    aput-object v14, v12, v13

    invoke-virtual {v7, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 946
    :goto_d1
    invoke-virtual {p0, v8, v7}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->changeCursor(ILandroid/database/Cursor;)V

    goto/16 :goto_e

    .line 943
    :cond_d6
    const-string v12, "BaseEmailAddressAdapter"

    const-string v13, "addShowMoreButtonAtlastPatition : showmore does not need."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1
.end method

.method private createLoadingCursor()Landroid/database/Cursor;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 774
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "searching"

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 775
    .local v0, cursor:Landroid/database/MatrixCursor;
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 776
    return-object v0
.end method

.method private hasDuplicates(Landroid/database/Cursor;I)Z
    .registers 6
    .parameter "cursor"
    .parameter "partition"

    .prologue
    const/4 v1, 0x1

    .line 983
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 984
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 985
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 986
    .local v0, emailAddress:Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isDuplicate(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 990
    .end local v0           #emailAddress:Ljava/lang/String;
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private isAllPartitionEmpty()Z
    .registers 4

    .prologue
    .line 969
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v1

    .line 971
    .local v1, totalCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_12

    .line 973
    invoke-virtual {p0, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isPartitionEmpty(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 975
    const/4 v2, 0x0

    .line 979
    :goto_e
    return v2

    .line 971
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 979
    :cond_12
    const/4 v2, 0x1

    goto :goto_e
.end method

.method private isAllPartitionLoadFinished()Z
    .registers 5

    .prologue
    .line 953
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v2

    .line 955
    .local v2, totalCount:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_16

    .line 957
    invoke-virtual {p0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 958
    .local v0, curpartition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    iget-boolean v3, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    if-eqz v3, :cond_13

    .line 960
    const/4 v3, 0x0

    .line 964
    .end local v0           #curpartition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :goto_12
    return v3

    .line 955
    .restart local v0       #curpartition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 964
    .end local v0           #curpartition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_16
    const/4 v3, 0x1

    goto :goto_12
.end method

.method private isDuplicate(Ljava/lang/String;I)Z
    .registers 9
    .parameter "emailAddress"
    .parameter "excludePartition"

    .prologue
    const/4 v4, 0x1

    .line 998
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v3

    .line 1000
    .local v3, partitionCount:I
    const/4 v2, 0x0

    .local v2, partition:I
    :goto_6
    if-ge v2, v3, :cond_2e

    .line 1001
    if-eq v2, p2, :cond_2b

    invoke-direct {p0, v2}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isLoading(I)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 1002
    invoke-virtual {p0, v2}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getCursor(I)Landroid/database/Cursor;

    move-result-object v1

    .line 1003
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_2b

    .line 1004
    const/4 v5, -0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1005
    :cond_1a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1006
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, address:Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1015
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #cursor:Landroid/database/Cursor;
    :goto_2a
    return v4

    .line 1000
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1015
    :cond_2e
    const/4 v4, 0x0

    goto :goto_2a
.end method

.method private isDuplicateAddPictureDate(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 19
    .parameter "emailAddress"
    .parameter "excludePartition"
    .parameter "pictureData"

    .prologue
    .line 1019
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v12

    .line 1020
    .local v12, partitionCount:I
    new-instance v9, Landroid/database/MatrixCursor;

    sget-object v13, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v9, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1021
    .local v9, newCursor:Landroid/database/MatrixCursor;
    const/4 v6, 0x0

    .line 1022
    .local v6, defaultPatitionCursorChanged:Z
    const/4 v10, 0x0

    .line 1023
    .local v10, nowFounded:Z
    const/4 v8, 0x0

    .line 1024
    .local v8, isduplicated:Z
    const/4 v2, 0x0

    .line 1025
    .local v2, curdisplayName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1026
    .local v3, curemailAddress:Ljava/lang/String;
    const/4 v7, -0x1

    .line 1027
    .local v7, imageIndex:I
    const/4 v4, 0x0

    .line 1029
    .local v4, curpictureData:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, partition:I
    :goto_13
    if-ge v11, v12, :cond_60

    .line 1030
    move/from16 v0, p2

    if-eq v11, v0, :cond_5d

    invoke-direct {p0, v11}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isLoading(I)Z

    move-result v13

    if-nez v13, :cond_5d

    .line 1031
    invoke-virtual {p0, v11}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getCursor(I)Landroid/database/Cursor;

    move-result-object v5

    .line 1032
    .local v5, cursor:Landroid/database/Cursor;
    if-eqz v5, :cond_5d

    .line 1033
    const/4 v13, -0x1

    invoke-interface {v5, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1034
    :cond_29
    :goto_29
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_5d

    .line 1035
    const/4 v13, 0x1

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1036
    .local v1, address:Ljava/lang/String;
    if-nez v11, :cond_50

    .line 1038
    const/4 v13, 0x0

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1039
    const/4 v13, 0x1

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1040
    sget-object v13, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1042
    const/4 v4, 0x0

    .line 1043
    if-ltz v7, :cond_50

    .line 1044
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1048
    :cond_50
    const/4 v10, 0x0

    .line 1049
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_67

    .line 1050
    const/4 v8, 0x1

    .line 1051
    const/4 v10, 0x1

    .line 1053
    if-eqz v11, :cond_67

    .line 1070
    .end local v1           #address:Ljava/lang/String;
    .end local v5           #cursor:Landroid/database/Cursor;
    :cond_5d
    const/4 v13, 0x1

    if-ne v8, v13, :cond_8e

    .line 1076
    :cond_60
    if-eqz v6, :cond_66

    .line 1077
    const/4 v13, 0x0

    invoke-virtual {p0, v13, v9}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->changeCursor(ILandroid/database/Cursor;)V

    .line 1080
    :cond_66
    return v8

    .line 1058
    .restart local v1       #address:Ljava/lang/String;
    .restart local v5       #cursor:Landroid/database/Cursor;
    :cond_67
    if-nez v11, :cond_29

    .line 1059
    if-eqz v10, :cond_7e

    if-nez v4, :cond_7e

    .line 1060
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    const/4 v14, 0x2

    aput-object p3, v13, v14

    invoke-virtual {v9, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1061
    const/4 v6, 0x1

    goto :goto_29

    .line 1063
    :cond_7e
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    const/4 v14, 0x2

    aput-object v4, v13, v14

    invoke-virtual {v9, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_29

    .line 1029
    .end local v1           #address:Ljava/lang/String;
    .end local v5           #cursor:Landroid/database/Cursor;
    :cond_8e
    add-int/lit8 v11, v11, 0x1

    goto :goto_13
.end method

.method private isLoading(I)Z
    .registers 3
    .parameter "partitionIndex"

    .prologue
    .line 578
    invoke-virtual {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    iget-boolean v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    return v0
.end method

.method private final makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 7
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 1084
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "searching"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1085
    const-string v1, ""

    .line 1093
    :cond_f
    :goto_f
    return-object v1

    .line 1088
    :cond_10
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, displayName:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1090
    .local v1, emailAddress:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1093
    new-instance v2, Landroid/text/util/Rfc822Token;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_f
.end method

.method private removeDuplicatesAndTruncate(ILandroid/database/Cursor;)Landroid/database/Cursor;
    .registers 16
    .parameter "partition"
    .parameter "cursor"

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 822
    new-instance v5, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v5, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 824
    .local v5, newCursor:Landroid/database/MatrixCursor;
    invoke-virtual {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    check-cast v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 825
    .local v1, curpartition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    iput-boolean v8, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->moreResultIsRemained:Z

    .line 827
    if-nez p2, :cond_20

    .line 828
    const-string v7, "BaseEmailAddressAdapter"

    const-string v8, "addShowMoreButtonAtlastPatition : cursor is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/4 p2, 0x0

    .line 870
    .end local p2
    :goto_1f
    return-object p2

    .line 832
    .restart local p2
    :cond_20
    sget-boolean v7, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-nez v7, :cond_38

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-gt v7, v12, :cond_38

    invoke-direct {p0, p2, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->hasDuplicates(Landroid/database/Cursor;I)Z

    move-result v7

    if-nez v7, :cond_38

    .line 835
    const-string v7, "BaseEmailAddressAdapter"

    const-string v8, "addShowMoreButtonAtlastPatition : this partition has no duplication."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 839
    :cond_38
    const/4 v0, 0x0

    .line 840
    .local v0, count:I
    invoke-interface {p2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 842
    :cond_3c
    :goto_3c
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_7f

    sget-boolean v7, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-nez v7, :cond_48

    if-ge v0, v12, :cond_7f

    .line 843
    :cond_48
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 844
    .local v2, displayName:Ljava/lang/String;
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 847
    .local v3, emailAddress:Ljava/lang/String;
    sget-object v7, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 848
    .local v4, imageIndex:I
    const/4 v6, 0x0

    .line 851
    .local v6, pictureData:Ljava/lang/String;
    const-string v7, "gal_search_show_more"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 852
    iput-boolean v9, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->moreResultIsRemained:Z

    goto :goto_3c

    .line 857
    :cond_64
    if-eq v4, v10, :cond_6a

    .line 858
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 862
    :cond_6a
    invoke-direct {p0, v3, p1, v6}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isDuplicateAddPictureDate(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 863
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    aput-object v3, v7, v9

    aput-object v6, v7, v11

    invoke-virtual {v5, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 864
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 868
    .end local v2           #displayName:Ljava/lang/String;
    .end local v3           #emailAddress:Ljava/lang/String;
    .end local v4           #imageIndex:I
    .end local v6           #pictureData:Ljava/lang/String;
    :cond_7f
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    move-object p2, v5

    .line 870
    goto :goto_1f
.end method

.method public static setBackupOfSearchedString(Ljava/lang/String;)V
    .registers 1
    .parameter "backupOfSearchedString"

    .prologue
    .line 594
    sput-object p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->BackupOfSearchedString:Ljava/lang/String;

    .line 595
    return-void
.end method


# virtual methods
.method public RIemailAddress(JLjava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 13
    .parameter "acckey"
    .parameter "constraint"

    .prologue
    .line 350
    if-nez p3, :cond_27

    const-string v7, ""

    .line 351
    .local v7, filter:Ljava/lang/String;
    :goto_4
    const/4 v8, 0x0

    .line 354
    .local v8, ric:Landroid/database/Cursor;
    :try_start_5
    sget-object v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->RIC_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 355
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_2c

    move-result-object v8

    .line 360
    .end local v1           #uri:Landroid/net/Uri;
    :goto_26
    return-object v8

    .line 350
    .end local v7           #filter:Ljava/lang/String;
    .end local v8           #ric:Landroid/database/Cursor;
    :cond_27
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 356
    .restart local v7       #filter:Ljava/lang/String;
    .restart local v8       #ric:Landroid/database/Cursor;
    :catch_2c
    move-exception v6

    .line 357
    .local v6, e:Ljava/lang/Exception;
    const/4 v8, 0x0

    goto :goto_26
.end method

.method public getGroupNameCursor(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 10
    .parameter "constraint"

    .prologue
    const/4 v4, 0x0

    .line 1098
    const/4 v6, 0x0

    .line 1101
    .local v6, groupCursor:Landroid/database/Cursor;
    if-eqz p1, :cond_43

    .line 1102
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1106
    .local v7, inputText:Ljava/lang/String;
    :goto_8
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "title"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "account_type"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "system_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(title like \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%%\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1111
    return-object v6

    .line 1104
    .end local v7           #inputText:Ljava/lang/String;
    :cond_43
    const-string v7, ""

    .restart local v7       #inputText:Ljava/lang/String;
    goto :goto_8
.end method

.method protected onDirectoryLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .registers 27
    .parameter "constraint"
    .parameter "directoryCursor"
    .parameter "defaultPartitionCursor"

    .prologue
    .line 604
    if-eqz p2, :cond_156

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 606
    .local v14, packageManager:Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    .line 607
    .local v17, preferredDirectory:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v6, directories:Ljava/util/List;,"Ljava/util/List<Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;>;"
    :cond_11
    :goto_11
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_133

    .line 609
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 613
    .local v10, id:J
    const-wide/16 v20, 0x1

    cmp-long v20, v10, v20

    if-eqz v20, :cond_11

    .line 617
    new-instance v16, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    invoke-direct/range {v16 .. v16}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;-><init>()V

    .line 618
    .local v16, partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    move-object/from16 v0, v16

    iput-wide v10, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->directoryId:J

    .line 619
    const/16 v20, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->displayName:Ljava/lang/String;

    .line 620
    const/16 v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->accountName:Ljava/lang/String;

    .line 621
    const/16 v20, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->accountType:Ljava/lang/String;

    .line 622
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->moreResultIsRemained:Z

    .line 623
    const/16 v20, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 624
    .local v15, packageName:Ljava/lang/String;
    const/16 v20, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 625
    .local v18, resourceId:I
    if-eqz v15, :cond_c2

    if-eqz v18, :cond_c2

    .line 627
    :try_start_80
    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v19

    .line 629
    .local v19, resources:Landroid/content/res/Resources;
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->directoryType:Ljava/lang/String;

    .line 630
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->directoryType:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_c2

    .line 631
    const-string v20, "BaseEmailAddressAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cannot resolve directory name: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "@"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_80 .. :try_end_c2} :catch_fe

    .line 643
    .end local v19           #resources:Landroid/content/res/Resources;
    :cond_c2
    :goto_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->accountName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->accountType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12c

    .line 645
    move-object/from16 v17, v16

    goto/16 :goto_11

    .line 634
    :catch_fe
    move-exception v7

    .line 635
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v20, "BaseEmailAddressAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cannot resolve directory name: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "@"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c2

    .line 647
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_12c
    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 651
    .end local v10           #id:J
    .end local v15           #packageName:Ljava/lang/String;
    .end local v16           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    .end local v18           #resourceId:I
    :cond_133
    if-eqz v17, :cond_13e

    .line 652
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v6, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 655
    :cond_13e
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_142
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_156

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 656
    .restart local v16       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    goto :goto_142

    .line 660
    .end local v6           #directories:Ljava/util/List;,"Ljava/util/List<Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v14           #packageManager:Landroid/content/pm/PackageManager;
    .end local v16           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    .end local v17           #preferredDirectory:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_156
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v4

    .line 661
    .local v4, count:I
    const/4 v12, 0x0

    .line 665
    .local v12, limit:I
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->setNotificationsEnabled(Z)V

    .line 668
    if-eqz p3, :cond_177

    :try_start_166
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v20

    if-lez v20, :cond_177

    .line 669
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->changeCursor(ILandroid/database/Cursor;)V

    .line 672
    :cond_177
    if-nez p3, :cond_1b5

    const/4 v5, 0x0

    .line 675
    .local v5, defaultPartitionCount:I
    :goto_17a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mPreferredMaxResultCount:I

    move/from16 v20, v0

    sub-int v12, v20, v5

    .line 679
    const/4 v8, 0x1

    .local v8, i:I
    :goto_183
    if-ge v8, v4, :cond_1d7

    .line 680
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v16

    check-cast v16, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 681
    .restart local v16       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    .line 683
    if-gtz v12, :cond_199

    sget-boolean v20, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-eqz v20, :cond_1ba

    .line 684
    :cond_199
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    move/from16 v20, v0

    if-nez v20, :cond_1b2

    .line 685
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    .line 686
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->changeCursor(ILandroid/database/Cursor;)V

    .line 679
    :cond_1b2
    :goto_1b2
    add-int/lit8 v8, v8, 0x1

    goto :goto_183

    .line 672
    .end local v5           #defaultPartitionCount:I
    .end local v8           #i:I
    .end local v16           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_1b5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    goto :goto_17a

    .line 689
    .restart local v5       #defaultPartitionCount:I
    .restart local v8       #i:I
    .restart local v16       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_1ba
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    .line 690
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->changeCursor(ILandroid/database/Cursor;)V
    :try_end_1cb
    .catchall {:try_start_166 .. :try_end_1cb} :catchall_1cc

    goto :goto_1b2

    .line 694
    .end local v5           #defaultPartitionCount:I
    .end local v8           #i:I
    .end local v16           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :catchall_1cc
    move-exception v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->setNotificationsEnabled(Z)V

    throw v20

    .restart local v5       #defaultPartitionCount:I
    .restart local v8       #i:I
    :cond_1d7
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->setNotificationsEnabled(Z)V

    .line 699
    const/4 v8, 0x1

    :goto_1e1
    if-ge v8, v4, :cond_288

    .line 700
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v16

    check-cast v16, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 701
    .restart local v16       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    move/from16 v20, v0

    if-eqz v20, :cond_274

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 704
    .local v13, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x3e8

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 705
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    if-nez v20, :cond_248

    .line 706
    new-instance v20, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->directoryId:J

    move-wide/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-wide/from16 v2, v21

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;-><init>(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;IJ)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    .line 708
    :cond_248
    sget-boolean v20, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-eqz v20, :cond_268

    .line 710
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    const/16 v21, 0x14

    invoke-virtual/range {v20 .. v21}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->setLimit(I)V

    .line 716
    :goto_257
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->filter(Ljava/lang/CharSequence;)V

    .line 699
    .end local v13           #msg:Landroid/os/Message;
    :cond_264
    :goto_264
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1e1

    .line 714
    .restart local v13       #msg:Landroid/os/Message;
    :cond_268
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->setLimit(I)V

    goto :goto_257

    .line 718
    .end local v13           #msg:Landroid/os/Message;
    :cond_274
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_264

    .line 720
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_264

    .line 724
    .end local v16           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_288
    return-void
.end method

.method public onPartitionLoadFinished(Ljava/lang/CharSequence;ILandroid/database/Cursor;)V
    .registers 7
    .parameter "constraint"
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v1

    if-ge p2, v1, :cond_52

    .line 782
    invoke-virtual {p0, p2}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 787
    .local v0, partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    iget-boolean v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_4c

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 789
    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 790
    if-eqz p1, :cond_27

    .line 791
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->setBackupOfSearchedString(Ljava/lang/String;)V

    .line 792
    :cond_27
    invoke-direct {p0, p2, p3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->removeDuplicatesAndTruncate(ILandroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->changeCursor(ILandroid/database/Cursor;)V

    .line 793
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    .line 795
    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-eqz v1, :cond_48

    .line 797
    iget-object v2, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mSynchronizer:Ljava/lang/Object;

    monitor-enter v2

    .line 798
    :try_start_38
    invoke-direct {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isAllPartitionLoadFinished()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-direct {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isAllPartitionEmpty()Z

    move-result v1

    if-nez v1, :cond_47

    .line 800
    invoke-direct {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->addShowMoreButtonAtlastPatition()V

    .line 802
    :cond_47
    monitor-exit v2

    .line 814
    .end local v0           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_48
    :goto_48
    return-void

    .line 802
    .restart local v0       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :catchall_49
    move-exception v1

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_38 .. :try_end_4b} :catchall_49

    throw v1

    .line 807
    :cond_4c
    if-eqz p3, :cond_48

    .line 808
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_48

    .line 811
    .end local v0           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_52
    if-eqz p3, :cond_48

    .line 812
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_48
.end method

.method showSearchPendingIfNotComplete(I)V
    .registers 4
    .parameter "partitionIndex"

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v1

    if-ge p1, v1, :cond_17

    .line 763
    invoke-virtual {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 764
    .local v0, partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    iget-boolean v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_17

    .line 765
    invoke-direct {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->createLoadingCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->changeCursor(ILandroid/database/Cursor;)V

    .line 768
    .end local v0           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_17
    return-void
.end method
