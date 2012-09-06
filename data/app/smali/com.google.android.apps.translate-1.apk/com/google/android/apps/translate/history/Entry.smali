.class public Lcom/google/android/apps/translate/history/Entry;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final KEY_DELIMITER:Ljava/lang/String; = "\\t"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAccessedTime:J

.field private mCreatedTime:J

.field private final mInputText:Ljava/lang/String;

.field private final mLanguageFrom:Ljava/lang/String;

.field private final mLanguageTo:Ljava/lang/String;

.field private final mOutputText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "from"
    .parameter "to"
    .parameter "inputText"
    .parameter "outputText"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/Language;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mLanguageFrom:Ljava/lang/String;

    .line 48
    invoke-static {p2}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/Language;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mLanguageTo:Ljava/lang/String;

    .line 49
    invoke-static {p3}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mInputText:Ljava/lang/String;

    .line 50
    invoke-static {p4}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mOutputText:Ljava/lang/String;

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/translate/history/Entry;->mAccessedTime:J

    iput-wide v0, p0, Lcom/google/android/apps/translate/history/Entry;->mCreatedTime:J

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/translate/history/Entry;)V
    .registers 4
    .parameter "entry"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iget-object v0, p1, Lcom/google/android/apps/translate/history/Entry;->mLanguageFrom:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mLanguageFrom:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lcom/google/android/apps/translate/history/Entry;->mLanguageTo:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mLanguageTo:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/google/android/apps/translate/history/Entry;->mInputText:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mInputText:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lcom/google/android/apps/translate/history/Entry;->mOutputText:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mOutputText:Ljava/lang/String;

    .line 62
    iget-wide v0, p1, Lcom/google/android/apps/translate/history/Entry;->mAccessedTime:J

    iput-wide v0, p0, Lcom/google/android/apps/translate/history/Entry;->mAccessedTime:J

    .line 63
    iget-wide v0, p1, Lcom/google/android/apps/translate/history/Entry;->mCreatedTime:J

    iput-wide v0, p0, Lcom/google/android/apps/translate/history/Entry;->mCreatedTime:J

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "fromShortName"
    .parameter "toShortName"
    .parameter "inputText"
    .parameter "outputText"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mLanguageFrom:Ljava/lang/String;

    .line 37
    invoke-static {p2}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mLanguageTo:Ljava/lang/String;

    .line 38
    invoke-static {p3}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mInputText:Ljava/lang/String;

    .line 39
    invoke-static {p4}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mOutputText:Ljava/lang/String;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/translate/history/Entry;->mAccessedTime:J

    iput-wide v0, p0, Lcom/google/android/apps/translate/history/Entry;->mCreatedTime:J

    .line 41
    return-void
.end method

.method public static getDbKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "from"
    .parameter "to"
    .parameter "inputText"

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/google/android/apps/translate/Util;->generateLanguagePairText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readData(Ljava/io/DataInputStream;)Lcom/google/android/apps/translate/history/Entry;
    .registers 9
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, from:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, to:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, inputText:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, outputText:Ljava/lang/String;
    new-instance v1, Lcom/google/android/apps/translate/history/Entry;

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/google/android/apps/translate/history/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v1, entry:Lcom/google/android/apps/translate/history/Entry;
    :try_start_15
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/google/android/apps/translate/history/Entry;->setCreatedTime(J)V

    .line 150
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/google/android/apps/translate/history/Entry;->setAccessedTime(J)V
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_23} :catch_24

    .line 154
    return-object v1

    .line 151
    :catch_24
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Failed to read time from stream"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static readKey(Ljava/io/DataInputStream;)Lcom/google/android/apps/translate/history/Entry;
    .registers 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, from:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, to:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, inputText:Ljava/lang/String;
    new-instance v3, Lcom/google/android/apps/translate/history/Entry;

    const-string v4, ""

    invoke-direct {v3, v0, v2, v1, v4}, Lcom/google/android/apps/translate/history/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public getAccessedTime()J
    .registers 3

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/google/android/apps/translate/history/Entry;->mAccessedTime:J

    return-wide v0
.end method

.method public getCreatedTime()J
    .registers 3

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/google/android/apps/translate/history/Entry;->mCreatedTime:J

    return-wide v0
.end method

.method public getDbKey()Ljava/lang/String;
    .registers 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mLanguageFrom:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/translate/history/Entry;->mLanguageTo:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/translate/history/Entry;->mInputText:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/translate/history/Entry;->getDbKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromLanguage(Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/Language;
    .registers 3
    .parameter "languages"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mLanguageFrom:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    return-object v0
.end method

.method public getFromLanguageShortName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mLanguageFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getInputText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mInputText:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mOutputText:Ljava/lang/String;

    return-object v0
.end method

.method public getToLanguage(Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/Language;
    .registers 3
    .parameter "languages"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mLanguageTo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    return-object v0
.end method

.method public getToLanguageShortName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mLanguageTo:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslation()Ljava/lang/String;
    .registers 4

    .prologue
    .line 91
    iget-object v1, p0, Lcom/google/android/apps/translate/history/Entry;->mOutputText:Ljava/lang/String;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 92
    .local v0, separator:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    iget-object v1, p0, Lcom/google/android/apps/translate/history/Entry;->mOutputText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_16
    return-object v1

    :cond_17
    iget-object v1, p0, Lcom/google/android/apps/translate/history/Entry;->mOutputText:Ljava/lang/String;

    goto :goto_16
.end method

.method public isSameTranslation(Lcom/google/android/apps/translate/history/Entry;)Z
    .registers 4
    .parameter "entry"

    .prologue
    .line 133
    iget-object v0, p1, Lcom/google/android/apps/translate/history/Entry;->mLanguageFrom:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/translate/history/Entry;->mLanguageFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p1, Lcom/google/android/apps/translate/history/Entry;->mLanguageTo:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/translate/history/Entry;->mLanguageTo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p1, Lcom/google/android/apps/translate/history/Entry;->mInputText:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/translate/history/Entry;->mInputText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p1, Lcom/google/android/apps/translate/history/Entry;->mOutputText:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/translate/history/Entry;->mOutputText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public setAccessedTime(J)V
    .registers 5
    .parameter "accessedTime"

    .prologue
    .line 109
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_d

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/android/apps/translate/Preconditions;->checkArguments(Z)V

    .line 110
    iput-wide p1, p0, Lcom/google/android/apps/translate/history/Entry;->mAccessedTime:J

    .line 111
    return-void

    .line 109
    :cond_d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setCreatedTime(J)V
    .registers 5
    .parameter "createdTime"

    .prologue
    .line 100
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_d

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/android/apps/translate/Preconditions;->checkArguments(Z)V

    .line 101
    iput-wide p1, p0, Lcom/google/android/apps/translate/history/Entry;->mCreatedTime:J

    .line 102
    return-void

    .line 100
    :cond_d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public writeData(Ljava/io/DataOutputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mLanguageFrom:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mLanguageTo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mInputText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/translate/history/Entry;->mOutputText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 175
    iget-wide v0, p0, Lcom/google/android/apps/translate/history/Entry;->mCreatedTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 176
    iget-wide v0, p0, Lcom/google/android/apps/translate/history/Entry;->mAccessedTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 177
    return-void
.end method
