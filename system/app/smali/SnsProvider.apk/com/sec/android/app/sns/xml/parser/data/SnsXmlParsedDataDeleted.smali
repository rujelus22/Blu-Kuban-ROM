.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;
.super Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
.source "SnsXmlParsedDataDeleted.java"


# instance fields
.field public mCount:I

.field public mFail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 32
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V
    .registers 3
    .parameter "mParsedData"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 24
    invoke-virtual {p0, p0, p1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;->copyBaseMembers(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 26
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 27
    return-void
.end method
