.class public Lcom/sec/android/app/sns/request/data/SnsRequestSearchingKeywordsRetrieve;
.super Lcom/sec/android/app/sns/request/data/SnsRequest;
.source "SnsRequestSearchingKeywordsRetrieve.java"


# direct methods
.method public constructor <init>(III)V
    .registers 6
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sns/request/data/SnsRequest;-><init>(III)V

    .line 21
    const-string v0, "SNS_FRAMEWORK"

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingKeywordsRetrieve;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 29
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method