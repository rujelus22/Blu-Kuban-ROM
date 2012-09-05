.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;
.super Ljava/lang/Object;
.source "SnsXmlParsedDataEmail.java"


# instance fields
.field public mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

.field public mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "email"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;->mValue:Ljava/lang/String;

    .line 16
    return-void
.end method
