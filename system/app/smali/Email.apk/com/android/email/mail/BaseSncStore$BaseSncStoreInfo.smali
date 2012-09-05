.class public Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;
.super Ljava/lang/Object;
.source "BaseSncStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/BaseSncStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseSncStoreInfo"
.end annotation


# instance fields
.field public mAccountInstanceLimit:I

.field public mClassName:Ljava/lang/String;

.field public mPushSupported:Z

.field public mScheme:Ljava/lang/String;

.field public mVisibleLimitDefault:I

.field public mVisibleLimitIncrement:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->mPushSupported:Z

    return-void
.end method

.method public static getStoreInfo(ILjava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;
    .registers 11
    .parameter "resourceId"
    .parameter "scheme"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 127
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 130
    .local v1, xml:Landroid/content/res/XmlResourceParser;
    :cond_9
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    .local v2, xmlEventType:I
    const/4 v5, 0x1

    if-eq v2, v5, :cond_6a

    .line 131
    const/4 v5, 0x2

    if-ne v2, v5, :cond_9

    const-string v5, "store"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 133
    const/4 v5, 0x0

    const-string v6, "scheme"

    invoke-interface {v1, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, xmlScheme:Ljava/lang/String;
    if-eqz p1, :cond_9

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 135
    new-instance v0, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;

    invoke-direct {v0}, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;-><init>()V

    .line 136
    .local v0, result:Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;
    iput-object v3, v0, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->mScheme:Ljava/lang/String;

    .line 137
    const/4 v5, 0x0

    const-string v6, "class"

    invoke-interface {v1, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->mClassName:Ljava/lang/String;

    .line 138
    const/4 v5, 0x0

    const-string v6, "push"

    const/4 v7, 0x0

    invoke-interface {v1, v5, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->mPushSupported:Z

    .line 140
    const/4 v5, 0x0

    const-string v6, "visibleLimitDefault"

    const/16 v7, 0x19

    invoke-interface {v1, v5, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->mVisibleLimitDefault:I

    .line 142
    const/4 v5, 0x0

    const-string v6, "visibleLimitIncrement"

    const/16 v7, 0x19

    invoke-interface {v1, v5, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->mVisibleLimitIncrement:I

    .line 144
    const/4 v5, 0x0

    const-string v6, "accountInstanceLimit"

    const/4 v7, -0x1

    invoke-interface {v1, v5, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->mAccountInstanceLimit:I
    :try_end_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_68} :catch_6c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_68} :catch_69

    .line 155
    .end local v0           #result:Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;
    .end local v1           #xml:Landroid/content/res/XmlResourceParser;
    .end local v2           #xmlEventType:I
    .end local v3           #xmlScheme:Ljava/lang/String;
    :goto_68
    return-object v0

    .line 152
    :catch_69
    move-exception v5

    :cond_6a
    :goto_6a
    move-object v0, v4

    .line 155
    goto :goto_68

    .line 150
    :catch_6c
    move-exception v5

    goto :goto_6a
.end method

.method public static getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;
    .registers 4
    .parameter "scheme"
    .parameter "context"

    .prologue
    .line 118
    const v1, 0x7f060013

    invoke-static {v1, p0, p1}, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->getStoreInfo(ILjava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;

    move-result-object v0

    .line 119
    .local v0, result:Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;
    if-nez v0, :cond_10

    .line 120
    const v1, 0x7f060012

    invoke-static {v1, p0, p1}, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->getStoreInfo(ILjava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;

    move-result-object v0

    .line 122
    :cond_10
    return-object v0
.end method