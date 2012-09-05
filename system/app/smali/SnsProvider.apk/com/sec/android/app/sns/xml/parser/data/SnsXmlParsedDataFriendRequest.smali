.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendRequest;
.super Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
.source "SnsXmlParsedDataFriendRequest.java"


# instance fields
.field public mID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 22
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V
    .registers 3
    .parameter "mParsedData"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 28
    invoke-virtual {p0, p0, p1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendRequest;->copyBaseMembers(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 30
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 31
    return-void
.end method
