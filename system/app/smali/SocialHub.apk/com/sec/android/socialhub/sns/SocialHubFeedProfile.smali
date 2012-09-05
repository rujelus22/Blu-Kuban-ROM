.class public Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;
.super Ljava/lang/Object;
.source "SocialHubFeedProfile.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mSnsService:Lcom/sec/android/app/sns/ISnsService;

.field profile:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string v0, "SocialHubFeedProfile"

    sput-object v0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->mContext:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->profile:Ljava/util/HashMap;

    .line 28
    iput-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    .line 30
    iput-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->mSnsService:Lcom/sec/android/app/sns/ISnsService;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->profile:Ljava/util/HashMap;

    .line 35
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->profile:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public addProfile(I)Z
    .registers 8
    .parameter "sp"

    .prologue
    const/4 v2, 0x0

    .line 57
    const/4 v1, 0x0

    .line 59
    .local v1, profile_data:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->getService()Lcom/sec/android/app/sns/ISnsService;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->mSnsService:Lcom/sec/android/app/sns/ISnsService;

    .line 61
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->mSnsService:Lcom/sec/android/app/sns/ISnsService;

    if-nez v3, :cond_16

    .line 63
    sget-object v3, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->TAG:Ljava/lang/String;

    const-string v4, "addProfile()"

    const-string v5, "service is null!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_15
    return v2

    .line 69
    :cond_16
    :try_start_16
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->mSnsService:Lcom/sec/android/app/sns/ISnsService;

    invoke-interface {v3, p1}, Lcom/sec/android/app/sns/ISnsService;->getLoggedInAccount(I)[Ljava/lang/String;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_2a

    move-result-object v1

    .line 79
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->profile:Ljava/util/HashMap;

    if-nez v3, :cond_2f

    .line 81
    sget-object v3, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->TAG:Ljava/lang/String;

    const-string v4, "addProfile()"

    const-string v5, "profile is null!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 71
    :catch_2a
    move-exception v0

    .line 73
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_15

    .line 85
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2f
    if-eqz v1, :cond_34

    array-length v3, v1

    if-gtz v3, :cond_3e

    .line 87
    :cond_34
    sget-object v3, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->TAG:Ljava/lang/String;

    const-string v4, "addProfile()"

    const-string v5, "profile_data is null OR profile_data lengh size is 0"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 91
    :cond_3e
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->profile:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 93
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->profile:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_53
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->profile:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v2, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->TAG:Ljava/lang/String;

    const-string v3, "addProfile()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "validity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (0 : valid, 1 : invalid )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v2, 0x1

    goto :goto_15
.end method

.method public close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->profile:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 42
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->mContext:Landroid/content/Context;

    .line 43
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->mSnsService:Lcom/sec/android/app/sns/ISnsService;

    .line 44
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    .line 45
    return-void
.end method

.method public getActorID(I)Ljava/lang/String;
    .registers 9
    .parameter "sp"

    .prologue
    .line 167
    const-string v2, ""

    .line 171
    .local v2, ret:Ljava/lang/String;
    :try_start_2
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->profile:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 173
    .local v0, data:[Ljava/lang/String;
    if-eqz v0, :cond_13

    array-length v3, v0

    if-gtz v3, :cond_29

    .line 175
    :cond_13
    sget-object v3, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->TAG:Ljava/lang/String;

    const-string v4, "getActorID()"

    const-string v5, "data is null!! "

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->addProfile(I)Z

    move-result v3

    if-nez v3, :cond_24

    move-object v3, v2

    .line 194
    .end local v0           #data:[Ljava/lang/String;
    :goto_23
    return-object v3

    .line 182
    .restart local v0       #data:[Ljava/lang/String;
    :cond_24
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->getActorID(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_23

    .line 185
    :cond_29
    const/4 v3, 0x0

    aget-object v2, v0, v3

    .line 186
    sget-object v3, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->TAG:Ljava/lang/String;

    const-string v4, "getActorID()"

    const-string v5, "data is not null"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_37

    .end local v0           #data:[Ljava/lang/String;
    :goto_35
    move-object v3, v2

    .line 194
    goto :goto_23

    .line 189
    :catch_37
    move-exception v1

    .line 191
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->TAG:Ljava/lang/String;

    const-string v4, "getActorID()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method

.method public getDisplayName(I)Ljava/lang/String;
    .registers 9
    .parameter "sp"

    .prologue
    .line 207
    const/4 v2, 0x0

    .line 211
    .local v2, name:Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->profile:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 213
    .local v0, data:[Ljava/lang/String;
    if-eqz v0, :cond_12

    array-length v3, v0

    if-gtz v3, :cond_28

    .line 215
    :cond_12
    sget-object v3, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->TAG:Ljava/lang/String;

    const-string v4, "getDisplayName()"

    const-string v5, "data is null!! "

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->addProfile(I)Z

    move-result v3

    if-nez v3, :cond_23

    move-object v3, v2

    .line 233
    .end local v0           #data:[Ljava/lang/String;
    :goto_22
    return-object v3

    .line 222
    .restart local v0       #data:[Ljava/lang/String;
    :cond_23
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->getDisplayName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    .line 225
    :cond_28
    const/4 v3, 0x1

    aget-object v2, v0, v3
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2d

    .end local v0           #data:[Ljava/lang/String;
    :goto_2b
    move-object v3, v2

    .line 233
    goto :goto_22

    .line 228
    :catch_2d
    move-exception v1

    .line 230
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->TAG:Ljava/lang/String;

    const-string v4, "getDisplayName()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public getProfileLink(I)Ljava/lang/String;
    .registers 9
    .parameter "sp"

    .prologue
    .line 129
    const/4 v2, 0x0

    .line 133
    .local v2, ret:Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->profile:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 135
    .local v0, data:[Ljava/lang/String;
    if-eqz v0, :cond_12

    array-length v3, v0

    if-gtz v3, :cond_28

    .line 137
    :cond_12
    sget-object v3, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->TAG:Ljava/lang/String;

    const-string v4, "getProfileLink()"

    const-string v5, "data is null!! "

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->addProfile(I)Z

    move-result v3

    if-nez v3, :cond_23

    .line 141
    const/4 v3, 0x0

    .line 154
    .end local v0           #data:[Ljava/lang/String;
    :goto_22
    return-object v3

    .line 144
    .restart local v0       #data:[Ljava/lang/String;
    :cond_23
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->getProfileLink(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    .line 147
    :cond_28
    const/4 v3, 0x2

    aget-object v2, v0, v3
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2d

    .end local v0           #data:[Ljava/lang/String;
    :goto_2b
    move-object v3, v2

    .line 154
    goto :goto_22

    .line 149
    :catch_2d
    move-exception v1

    .line 151
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->TAG:Ljava/lang/String;

    const-string v4, "getProfileLink()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public getService()Lcom/sec/android/app/sns/ISnsService;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    .line 111
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    if-eqz v0, :cond_17

    .line 113
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->getSnsService()Lcom/sec/android/app/sns/ISnsService;

    move-result-object v0

    .line 117
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method
