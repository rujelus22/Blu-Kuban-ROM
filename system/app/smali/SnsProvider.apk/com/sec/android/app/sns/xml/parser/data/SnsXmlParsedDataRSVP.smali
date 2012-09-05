.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;
.super Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
.source "SnsXmlParsedDataRSVP.java"


# instance fields
.field public mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;

.field public mMember:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;

.field public mMembersCount:I

.field public mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    return-void
.end method
