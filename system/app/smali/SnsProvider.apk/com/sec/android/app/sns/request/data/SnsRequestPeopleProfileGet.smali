.class public Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileGet;
.super Lcom/sec/android/app/sns/request/data/SnsRequest;
.source "SnsRequestPeopleProfileGet.java"


# instance fields
.field private mParentReqID:I

.field private mPeopleID:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;I)V
    .registers 13
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "pollingID"
    .parameter "peopleID"
    .parameter "parentReqID"

    .prologue
    .line 33
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sns/request/data/SnsRequest;-><init>(IIIZI)V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileGet;->mParentReqID:I

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileGet;->mPeopleID:Ljava/lang/String;

    .line 35
    iput p6, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileGet;->mParentReqID:I

    .line 36
    iput-object p5, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileGet;->mPeopleID:Ljava/lang/String;

    .line 38
    const-string v0, "SNS_FRAMEWORK"

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileGet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method


# virtual methods
.method public getPeopleID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileGet;->mPeopleID:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method
