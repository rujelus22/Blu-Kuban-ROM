.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;
.super Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
.source "SnsXmlParsedDataObject.java"


# instance fields
.field public mContent:Ljava/lang/String;

.field public mCreateTime:Ljava/lang/Long;

.field public mCreator:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;

.field public mID:Ljava/lang/String;

.field public mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;

.field public mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;

.field public mRepPhotoURL:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mType:Ljava/lang/String;

.field public mURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 61
    const/16 v0, 0x18

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V
    .registers 3
    .parameter "mParsedData"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 53
    invoke-virtual {p0, p0, p1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->copyBaseMembers(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 55
    const/16 v0, 0x18

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 56
    return-void
.end method
