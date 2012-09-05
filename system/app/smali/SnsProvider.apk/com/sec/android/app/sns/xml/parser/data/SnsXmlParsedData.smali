.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
.super Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
.source "SnsXmlParsedData.java"


# instance fields
.field public mDataType:I

.field public mErrCode:Ljava/lang/Integer;

.field public mErrContext:Ljava/lang/String;

.field public mErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

.field public mFriendDataType:Ljava/lang/String;

.field public mHasNextType:I

.field public mIsEmpty:I

.field public mResponseTime:Ljava/lang/String;

.field public mSessionKey:Ljava/lang/String;

.field public mStartContext:Ljava/lang/String;

.field public mSubErrCode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 20
    iput-object v1, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mSessionKey:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrCode:Ljava/lang/Integer;

    .line 26
    iput-object v1, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mSubErrCode:Ljava/lang/Integer;

    .line 28
    iput-object v1, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrContext:Ljava/lang/String;

    .line 30
    iput v2, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    .line 32
    iput v2, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mIsEmpty:I

    .line 34
    iput-object v1, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mResponseTime:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    return-void
.end method


# virtual methods
.method protected copyBaseMembers(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V
    .registers 5
    .parameter "targetObj"
    .parameter "sourceObj"

    .prologue
    .line 41
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mSessionKey:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 42
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mSessionKey:Ljava/lang/String;

    iput-object v0, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mSessionKey:Ljava/lang/String;

    .line 44
    :cond_8
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 45
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    iput-object v0, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    .line 47
    :cond_10
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrCode:Ljava/lang/Integer;

    if-eqz v0, :cond_18

    .line 48
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrCode:Ljava/lang/Integer;

    iput-object v0, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrCode:Ljava/lang/Integer;

    .line 50
    :cond_18
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mSubErrCode:Ljava/lang/Integer;

    if-eqz v0, :cond_20

    .line 51
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mSubErrCode:Ljava/lang/Integer;

    iput-object v0, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mSubErrCode:Ljava/lang/Integer;

    .line 53
    :cond_20
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrContext:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 54
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrContext:Ljava/lang/String;

    iput-object v0, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrContext:Ljava/lang/String;

    .line 56
    :cond_28
    iget v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    iput v0, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    .line 58
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    if-eqz v0, :cond_39

    .line 59
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    iget-object v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;)V

    iput-object v0, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    .line 61
    :cond_39
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    if-eqz v0, :cond_41

    .line 62
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    iput-object v0, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    .line 64
    :cond_41
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mResponseTime:Ljava/lang/String;

    if-eqz v0, :cond_49

    .line 65
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mResponseTime:Ljava/lang/String;

    iput-object v0, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mResponseTime:Ljava/lang/String;

    .line 66
    :cond_49
    return-void
.end method
