.class public Lcom/sec/android/socialhub/parent/IntentCheckActivity;
.super Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;
.source "IntentCheckActivity.java"


# instance fields
.field private mCompare:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/IntentCheckActivity;->mCompare:[Ljava/lang/String;

    return-void
.end method

.method private checkIntentRequiredData(Landroid/os/Bundle;)Z
    .registers 8
    .parameter "bundle"

    .prologue
    const/4 v4, 0x0

    .line 61
    iget-object v5, p0, Lcom/sec/android/socialhub/parent/IntentCheckActivity;->mCompare:[Ljava/lang/String;

    if-nez v5, :cond_6

    .line 71
    :cond_5
    :goto_5
    return v4

    .line 64
    :cond_6
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/IntentCheckActivity;->mCompare:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_a
    if-ge v1, v3, :cond_17

    aget-object v2, v0, v1

    .line 66
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 71
    .end local v2           #key:Ljava/lang/String;
    :cond_17
    const/4 v4, 0x1

    goto :goto_5
.end method


# virtual methods
.method public getIntentWithCheck()Landroid/content/Intent;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/socialhub/exception/SocialHubRequireValueException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 28
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_8

    .line 29
    const/4 v6, 0x0

    .line 42
    :goto_7
    return-object v6

    .line 31
    :cond_8
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/socialhub/parent/IntentCheckActivity;->checkIntentRequiredData(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_37

    .line 33
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "This Activity Required Data which key contains <"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 34
    .local v5, message:Ljava/lang/StringBuffer;
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/IntentCheckActivity;->mCompare:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1d
    if-ge v1, v4, :cond_2d

    aget-object v3, v0, v1

    .line 36
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 39
    .end local v3           #key:Ljava/lang/String;
    :cond_2d
    new-instance v6, Lcom/sec/android/socialhub/exception/SocialHubRequireValueException;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sec/android/socialhub/exception/SocialHubRequireValueException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 42
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #message:Ljava/lang/StringBuffer;
    :cond_37
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    goto :goto_7
.end method

.method public setIntentCompareData([Ljava/lang/String;)V
    .registers 2
    .parameter "data"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/IntentCheckActivity;->mCompare:[Ljava/lang/String;

    .line 52
    return-void
.end method
