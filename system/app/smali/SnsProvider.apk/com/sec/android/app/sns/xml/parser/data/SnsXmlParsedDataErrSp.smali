.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
.super Ljava/lang/Object;
.source "SnsXmlParsedDataErrSp.java"


# instance fields
.field public mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

.field public mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;)V
    .registers 5
    .parameter "sourceObj"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    move-object v0, p0

    .line 22
    .local v0, curErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    iget-object v2, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mValue:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 23
    iget-object v2, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mValue:Ljava/lang/String;

    iput-object v2, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mValue:Ljava/lang/String;

    .line 24
    iget-object p1, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    .line 37
    :cond_e
    return-void

    .line 26
    :cond_f
    :goto_f
    if-eqz p1, :cond_e

    .line 27
    const/4 v1, 0x0

    .line 28
    .local v1, errSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    iget-object v2, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mValue:Ljava/lang/String;

    if-eqz v2, :cond_21

    .line 29
    new-instance v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    .end local v1           #errSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    iget-object v2, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mValue:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;-><init>(Ljava/lang/String;)V

    .line 31
    .restart local v1       #errSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    iput-object v1, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    .line 32
    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    .line 34
    :cond_21
    iget-object p1, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    .line 35
    goto :goto_f
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "sp"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mValue:Ljava/lang/String;

    .line 16
    return-void
.end method
