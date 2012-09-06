.class public final Lcom/google/android/apps/plus/util/AudienceUtils;
.super Ljava/lang/Object;
.source "AudienceUtils.java"


# direct methods
.method public static areEqual(Lcom/google/wireless/tacotruck/proto/Data$Audience;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Z
    .registers 11
    .parameter "audienceOne"
    .parameter "audienceTwo"

    .prologue
    const/4 v7, 0x0

    .line 19
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleCount()I

    move-result v5

    .line 20
    .local v5, viewCircleCount:I
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleCount()I

    move-result v2

    .line 21
    .local v2, listCircleCount:I
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v6

    .line 22
    .local v6, viewUserCount:I
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v3

    .line 25
    .local v3, listUserCount:I
    if-eq v5, v2, :cond_14

    .line 55
    :cond_13
    :goto_13
    return v7

    .line 28
    :cond_14
    if-ne v6, v3, :cond_13

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v0, circleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    if-ge v1, v2, :cond_2c

    .line 35
    invoke-virtual {p1, v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircle(I)Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 37
    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    if-ge v1, v5, :cond_40

    .line 38
    invoke-virtual {p0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircle(I)Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 44
    :cond_40
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v4, userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    :goto_46
    if-ge v1, v3, :cond_56

    .line 46
    invoke-virtual {p1, v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUser(I)Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 48
    :cond_56
    const/4 v1, 0x0

    :goto_57
    if-ge v1, v6, :cond_6a

    .line 49
    invoke-virtual {p0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUser(I)Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 55
    :cond_6a
    const/4 v7, 0x1

    goto :goto_13
.end method
