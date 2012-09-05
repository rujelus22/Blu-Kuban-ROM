.class public Lcom/sec/android/socialhub/sns/LimitationChecker;
.super Ljava/lang/Object;
.source "LimitationChecker.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkOverLimit(IIIILandroid/widget/EditText;)Z
    .registers 11
    .parameter "sptype"
    .parameter "limit_type"
    .parameter "support_type"
    .parameter "length"
    .parameter "edit"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 26
    invoke-static {p0}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v2

    .line 30
    .local v2, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/4 v1, 0x0

    .line 32
    .local v1, size:I
    :try_start_7
    invoke-interface {v2, p2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v5

    if-ne v5, v3, :cond_21

    .line 34
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v1, v5

    .line 41
    :goto_1a
    invoke-interface {v2, p1}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I
    :try_end_1d
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_7 .. :try_end_1d} :catch_25

    move-result v5

    if-ge v5, v1, :cond_23

    .line 55
    :goto_20
    return v3

    .line 38
    :cond_21
    move v1, p3

    goto :goto_1a

    :cond_23
    move v3, v4

    .line 47
    goto :goto_20

    .line 50
    :catch_25
    move-exception v0

    .line 52
    .local v0, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    move v3, v4

    .line 55
    goto :goto_20
.end method
