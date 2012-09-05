.class public Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "PostAuthBatchQuery.java"


# instance fields
.field private mAvatarHash:Ljava/lang/String;

.field private mCapabilities:I

.field private mDeviceIdle:Z

.field private mOnline:Z

.field private mOtrEtag:Ljava/lang/String;

.field private mRosterEtag:Ljava/lang/String;

.field private mSharedStatusVersion:I

.field private mShowMobileIndicator:Z

.field private mVCardQueryStanzaId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x22

    .line 119
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->isOnline()Z

    move-result v1

    .line 121
    .local v1, isOnline:Z
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    .local v0, buf:Ljava/lang/StringBuffer;
    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "query"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " xmlns=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "google:mobile:batchquery"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 124
    const-string v2, " presence="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    if-eqz v1, :cond_d9

    const-string v2, "\"available\""

    :goto_30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    if-eqz v1, :cond_cf

    .line 127
    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mDeviceIdle:Z

    if-eqz v2, :cond_3e

    .line 128
    const-string v2, " device_idle=\"true\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :cond_3e
    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mShowMobileIndicator:Z

    if-eqz v2, :cond_47

    .line 132
    const-string v2, " mobile_indicator=\"true\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    :cond_47
    iget v2, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mSharedStatusVersion:I

    if-eqz v2, :cond_5c

    .line 136
    const-string v2, " shared_status_version=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mSharedStatusVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :cond_5c
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mRosterEtag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 140
    const-string v2, " roster_etag=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mRosterEtag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    :cond_73
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mOtrEtag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 144
    const-string v2, " otr_etag=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mOtrEtag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 147
    :cond_8a
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mAvatarHash:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a1

    .line 148
    const-string v2, " avatar_hash=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mAvatarHash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 151
    :cond_a1
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mVCardQueryStanzaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b8

    .line 152
    const-string v2, " vcard_query_stanza_id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mVCardQueryStanzaId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 155
    :cond_b8
    iget v2, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mCapabilities:I

    if-eqz v2, :cond_cf

    .line 156
    const-string v2, " capabilities=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mCapabilities:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    :cond_cf
    const-string v2, "/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 124
    :cond_d9
    const-string v2, "\"unavailable\""

    goto/16 :goto_30
.end method

.method protected getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 167
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->EXTENSION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 168
    .local v1, extension:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v3, 0xb

    invoke-virtual {v1, v4, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 171
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->POST_AUTH_BATCH_QUERY:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 172
    .local v0, batchQuery:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->isOnline()Z

    move-result v2

    .line 174
    .local v2, isOnline:Z
    invoke-virtual {v0, v4, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 177
    if-eqz v2, :cond_7f

    .line 178
    iget-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mDeviceIdle:Z

    if-eqz v3, :cond_27

    .line 179
    iget-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mDeviceIdle:Z

    invoke-virtual {v0, v5, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 184
    :cond_27
    iget-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mShowMobileIndicator:Z

    if-eqz v3, :cond_31

    .line 185
    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mShowMobileIndicator:Z

    invoke-virtual {v0, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 190
    :cond_31
    iget v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mSharedStatusVersion:I

    if-eqz v3, :cond_3b

    .line 191
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mSharedStatusVersion:I

    invoke-virtual {v0, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 196
    :cond_3b
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mRosterEtag:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 197
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mRosterEtag:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 202
    :cond_49
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mOtrEtag:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_57

    .line 203
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mOtrEtag:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 208
    :cond_57
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mAvatarHash:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_65

    .line 209
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mAvatarHash:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 214
    :cond_65
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mVCardQueryStanzaId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_74

    .line 215
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mVCardQueryStanzaId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 220
    :cond_74
    iget v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mCapabilities:I

    if-eqz v3, :cond_7f

    .line 221
    const/16 v3, 0x9

    iget v4, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mCapabilities:I

    invoke-virtual {v0, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 227
    :cond_7f
    invoke-virtual {v1, v5, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 228
    return-object v1
.end method

.method public isOnline()Z
    .registers 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mOnline:Z

    return v0
.end method

.method public setAvatarHash(Ljava/lang/String;)V
    .registers 2
    .parameter "hash"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mAvatarHash:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setCapabilities(I)V
    .registers 2
    .parameter "capabilities"

    .prologue
    .line 114
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mCapabilities:I

    .line 115
    return-void
.end method

.method public setDeviceIdle(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mDeviceIdle:Z

    .line 59
    return-void
.end method

.method public setIsOnline(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mOnline:Z

    .line 51
    return-void
.end method

.method public setOtrEtag(Ljava/lang/String;)V
    .registers 2
    .parameter "etag"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mOtrEtag:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setRosterEtag(Ljava/lang/String;)V
    .registers 2
    .parameter "etag"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mRosterEtag:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setSharedStatusVersion(I)V
    .registers 2
    .parameter "version"

    .prologue
    .line 74
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mSharedStatusVersion:I

    .line 75
    return-void
.end method

.method public setShowMobileIndicator(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mShowMobileIndicator:Z

    .line 67
    return-void
.end method

.method public setVCardQUeryStanzaId(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->mVCardQueryStanzaId:Ljava/lang/String;

    .line 107
    return-void
.end method
