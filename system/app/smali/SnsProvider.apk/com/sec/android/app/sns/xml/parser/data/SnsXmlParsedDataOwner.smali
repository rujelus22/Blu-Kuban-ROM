.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;
.super Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
.source "SnsXmlParsedDataOwner.java"


# instance fields
.field public mID:Ljava/lang/String;

.field public mIsFriend:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    return-void
.end method
