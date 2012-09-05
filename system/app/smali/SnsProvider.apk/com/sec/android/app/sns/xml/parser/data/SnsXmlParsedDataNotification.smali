.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;
.super Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
.source "SnsXmlParsedDataNotification.java"


# instance fields
.field public mContent:Ljava/lang/String;

.field public mCount:I

.field public mCreateTime:Ljava/lang/Long;

.field public mID:Ljava/lang/String;

.field public mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;

.field public mName:Ljava/lang/String;

.field public mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;

.field public mOwnerID:Ljava/lang/String;

.field public mOwnerName:Ljava/lang/String;

.field public mOwnerProfilePhotoURL:Ljava/lang/String;

.field public mRelatedContent:Ljava/lang/String;

.field public mRelatedHref:Ljava/lang/String;

.field public mRelatedID:Ljava/lang/String;

.field public mRelatedName:Ljava/lang/String;

.field public mRelatedType:Ljava/lang/String;

.field public mSp:Ljava/lang/String;

.field public mSubRelatedID:Ljava/lang/String;

.field public mTypeIconURL:Ljava/lang/String;

.field public mUnread:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 73
    const/16 v0, 0x11

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V
    .registers 3
    .parameter "mParsedData"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 79
    invoke-virtual {p0, p0, p1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->copyBaseMembers(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 81
    const/16 v0, 0x11

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 82
    return-void
.end method
