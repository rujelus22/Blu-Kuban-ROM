.class public Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;
.super Lcom/sec/android/app/sns/request/data/SnsRequest;
.source "SnsRequestServiceProviderDeepLinkGet.java"


# instance fields
.field private mDeeplinkUrl:Ljava/lang/String;

.field private mLinkType:Ljava/lang/String;

.field private mPeopleID:Ljava/lang/String;

.field private mTargetCommentID:Ljava/lang/String;

.field private mTargetID:Ljava/lang/String;

.field private mTargetSubID:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "linkType"
    .parameter "deeplinkUrl"
    .parameter "peopleID"
    .parameter "targetID"
    .parameter "targetSubID"
    .parameter "targetCommentID"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sns/request/data/SnsRequest;-><init>(III)V

    .line 49
    iput-object p4, p0, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->mLinkType:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->mDeeplinkUrl:Ljava/lang/String;

    .line 51
    iput-object p6, p0, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->mPeopleID:Ljava/lang/String;

    .line 52
    iput-object p7, p0, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->mTargetID:Ljava/lang/String;

    .line 53
    iput-object p8, p0, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->mTargetSubID:Ljava/lang/String;

    .line 54
    iput-object p9, p0, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->mTargetCommentID:Ljava/lang/String;

    .line 56
    const-string v0, "SNS_FRAMEWORK"

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method


# virtual methods
.method public getDeeplinkUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->mDeeplinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->mLinkType:Ljava/lang/String;

    return-object v0
.end method

.method public getPeopleID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->mPeopleID:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetCommentID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->mTargetCommentID:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->mTargetID:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetSubID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->mTargetSubID:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method
