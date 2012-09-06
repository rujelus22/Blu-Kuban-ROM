.class public final Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;
.super Ljava/lang/Object;
.source "VoicemailImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$1;,
        Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;
    }
.end annotation


# instance fields
.field private final mDuration:Ljava/lang/Long;

.field private final mHasContent:Ljava/lang/Boolean;

.field private final mId:Ljava/lang/Long;

.field private final mIsRead:Ljava/lang/Boolean;

.field private final mNumber:Ljava/lang/String;

.field private final mProviderData:Ljava/lang/String;

.field private final mSource:Ljava/lang/String;

.field private final mTimestamp:Ljava/lang/Long;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 10
    .parameter "timestamp"
    .parameter "number"
    .parameter "id"
    .parameter "duration"
    .parameter "source"
    .parameter "providerData"
    .parameter "uri"
    .parameter "isRead"
    .parameter "hasContent"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mId:Ljava/lang/Long;

    .line 37
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mNumber:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mDuration:Ljava/lang/Long;

    .line 39
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mTimestamp:Ljava/lang/Long;

    .line 40
    iput-object p5, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mSource:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mProviderData:Ljava/lang/String;

    .line 42
    iput-object p7, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mUri:Landroid/net/Uri;

    .line 43
    iput-object p8, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mIsRead:Ljava/lang/Boolean;

    .line 44
    iput-object p9, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mHasContent:Ljava/lang/Boolean;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$1;)V
    .registers 11
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p9}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static createEmptyBuilder()Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;
    .registers 2

    .prologue
    .line 70
    new-instance v0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;-><init>(Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$1;)V

    return-object v0
.end method

.method public static createForInsertion(JLjava/lang/String;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;
    .registers 5
    .parameter "timestamp"
    .parameter "number"

    .prologue
    .line 53
    new-instance v0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;-><init>(Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$1;)V

    invoke-virtual {v0, p2}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setNumber(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setTimestamp(J)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static createForUpdate(J)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;
    .registers 4
    .parameter "id"

    .prologue
    .line 62
    new-instance v0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;-><init>(Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$1;)V

    invoke-virtual {v0, p0, p1}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setId(J)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDuration()J
    .registers 3

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->hasDuration()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mDuration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_c
    return-wide v0

    :cond_d
    const-wide/16 v0, 0x0

    goto :goto_c
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->hasId()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_c
    return-wide v0

    :cond_d
    const-wide/16 v0, -0x1

    goto :goto_c
.end method

.method public getNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mProviderData:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampMillis()J
    .registers 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->hasTimestampMillis()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_c
    return-wide v0

    :cond_d
    const-wide/16 v0, 0x0

    goto :goto_c
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hasContent()Z
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mHasContent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasDuration()Z
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mDuration:Ljava/lang/Long;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasHasContent()Z
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mHasContent:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasId()Z
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mId:Ljava/lang/Long;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasNumber()Z
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasRead()Z
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mIsRead:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasSourceData()Z
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mProviderData:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasSourcePackage()Z
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mSource:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasTimestampMillis()Z
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mTimestamp:Ljava/lang/Long;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasUri()Z
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isRead()Z
    .registers 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->hasRead()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mIsRead:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoicemailImpl [mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mDuration:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProviderData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mProviderData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mIsRead:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->mHasContent:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
