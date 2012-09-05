.class public Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;
.super Lcom/sec/android/socialhub/SocialHubQueryBuilder;
.source "SocialHubQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/SocialHubQueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadMsgQuery"
.end annotation


# instance fields
.field private bSupportUserName:Z

.field private mName:Ljava/lang/String;

.field private mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

.field private mSenderId:Ljava/lang/String;

.field private miSpType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder;-><init>(Landroid/content/Context;)V

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->miSpType:I

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->bSupportUserName:Z

    .line 151
    iput-object v1, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->mName:Ljava/lang/String;

    .line 152
    iput-object v1, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->mSenderId:Ljava/lang/String;

    .line 153
    iput-object v1, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;)V
    .registers 10
    .parameter "context"
    .parameter "spType"
    .parameter "name"
    .parameter "id"
    .parameter "profile"

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder;-><init>(Landroid/content/Context;)V

    .line 149
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->miSpType:I

    .line 150
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->bSupportUserName:Z

    .line 151
    iput-object v3, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->mName:Ljava/lang/String;

    .line 152
    iput-object v3, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->mSenderId:Ljava/lang/String;

    .line 153
    iput-object v3, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 163
    iput p2, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->miSpType:I

    .line 164
    iput-object p3, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->mName:Ljava/lang/String;

    .line 165
    iput-object p4, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->mSenderId:Ljava/lang/String;

    .line 166
    iput-object p5, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 168
    iget v2, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->miSpType:I

    invoke-static {v2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v0

    .line 171
    .local v0, adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/16 v2, 0xf

    :try_start_20
    invoke-interface {v0, v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->bSupportUserName:Z
    :try_end_26
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_20 .. :try_end_26} :catch_27

    .line 177
    :goto_26
    return-void

    .line 173
    :catch_27
    move-exception v1

    .line 175
    .local v1, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v1}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_26
.end method


# virtual methods
.method public getQuery(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .parameter "account"

    .prologue
    .line 182
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 184
    .local v1, selection:Ljava/lang/StringBuffer;
    iget-boolean v2, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->bSupportUserName:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_82

    .line 186
    iget-object v2, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->mName:Ljava/lang/String;

    if-eqz v2, :cond_78

    .line 188
    const-string v2, "UPPER("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->mName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "app_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x258

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 190
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 191
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "sp_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->miSpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 236
    :cond_73
    :goto_73
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 195
    :cond_78
    const-string v2, "ThreadMsgQuery"

    const-string v3, "startQuery()"

    const-string v4, "Name is null!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    .line 200
    :cond_82
    iget-object v2, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->mSenderId:Ljava/lang/String;

    if-eqz v2, :cond_73

    .line 202
    iget-object v2, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    iget v3, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->miSpType:I

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->getActorID(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, owner:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->mSenderId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 206
    const-string v2, "sender_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    iget-object v2, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->mSenderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    const-string v2, "\' and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    const-string v2, "folder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    const-string v2, "=\'inbox\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    const-string v2, "representative_receiver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    iget-object v2, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->mSenderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const-string v2, "\' and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    const-string v2, "folder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    const-string v2, "=\'outbox\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_73

    .line 224
    :cond_d8
    const-string v2, "sender_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    iget-object v2, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->mSenderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    const-string v2, "\' or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    const-string v2, "representative_receiver_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    iget-object v2, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->mSenderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_73
.end method
