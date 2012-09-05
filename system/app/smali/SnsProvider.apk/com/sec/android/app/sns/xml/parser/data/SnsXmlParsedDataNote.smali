.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
.super Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
.source "SnsXmlParsedDataNote.java"


# instance fields
.field public mAttachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

.field public mAuthor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuthor;

.field public mComment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

.field public mContent:Ljava/lang/String;

.field public mID:Ljava/lang/String;

.field public mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;

.field public mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;

.field public mResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 51
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V
    .registers 3
    .parameter "mParsedData"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 43
    invoke-virtual {p0, p0, p1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;->copyBaseMembers(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 45
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 46
    return-void
.end method
