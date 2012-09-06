.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditorialSeriesContainer"
.end annotation


# instance fields
.field private cachedSize:I

.field private colorThemeArgb_:Ljava/lang/String;

.field private episodeSubtitle_:Ljava/lang/String;

.field private episodeTitle_:Ljava/lang/String;

.field private hasColorThemeArgb:Z

.field private hasEpisodeSubtitle:Z

.field private hasEpisodeTitle:Z

.field private hasSeriesSubtitle:Z

.field private hasSeriesTitle:Z

.field private seriesSubtitle_:Ljava/lang/String;

.field private seriesTitle_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 2106
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2111
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->seriesTitle_:Ljava/lang/String;

    .line 2128
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->seriesSubtitle_:Ljava/lang/String;

    .line 2145
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->episodeTitle_:Ljava/lang/String;

    .line 2162
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->episodeSubtitle_:Ljava/lang/String;

    .line 2179
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->colorThemeArgb_:Ljava/lang/String;

    .line 2227
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->cachedSize:I

    .line 2106
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2230
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->cachedSize:I

    if-gez v0, :cond_7

    .line 2232
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getSerializedSize()I

    .line 2234
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->cachedSize:I

    return v0
.end method

.method public getColorThemeArgb()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->colorThemeArgb_:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeSubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->episodeSubtitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2146
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->episodeTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 2239
    const/4 v0, 0x0

    .line 2240
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasSeriesTitle()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2241
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getSeriesTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2244
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasSeriesSubtitle()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2245
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getSeriesSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2248
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasEpisodeTitle()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2249
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2252
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasEpisodeSubtitle()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2253
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getEpisodeSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2256
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasColorThemeArgb()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 2257
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2260
    :cond_51
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->cachedSize:I

    .line 2261
    return v0
.end method

.method public getSeriesSubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2129
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->seriesSubtitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getSeriesTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2112
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->seriesTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public hasColorThemeArgb()Z
    .registers 2

    .prologue
    .line 2181
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasColorThemeArgb:Z

    return v0
.end method

.method public hasEpisodeSubtitle()Z
    .registers 2

    .prologue
    .line 2164
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasEpisodeSubtitle:Z

    return v0
.end method

.method public hasEpisodeTitle()Z
    .registers 2

    .prologue
    .line 2147
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasEpisodeTitle:Z

    return v0
.end method

.method public hasSeriesSubtitle()Z
    .registers 2

    .prologue
    .line 2130
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasSeriesSubtitle:Z

    return v0
.end method

.method public hasSeriesTitle()Z
    .registers 2

    .prologue
    .line 2113
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasSeriesTitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2269
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2270
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 2274
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2275
    :sswitch_d
    return-object p0

    .line 2280
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->setSeriesTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    goto :goto_0

    .line 2284
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->setSeriesSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    goto :goto_0

    .line 2288
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->setEpisodeTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    goto :goto_0

    .line 2292
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->setEpisodeSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    goto :goto_0

    .line 2296
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->setColorThemeArgb(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    goto :goto_0

    .line 2270
    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_2e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2103
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    move-result-object v0

    return-object v0
.end method

.method public setColorThemeArgb(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    .registers 3
    .parameter "value"

    .prologue
    .line 2183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasColorThemeArgb:Z

    .line 2184
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->colorThemeArgb_:Ljava/lang/String;

    .line 2185
    return-object p0
.end method

.method public setEpisodeSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    .registers 3
    .parameter "value"

    .prologue
    .line 2166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasEpisodeSubtitle:Z

    .line 2167
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->episodeSubtitle_:Ljava/lang/String;

    .line 2168
    return-object p0
.end method

.method public setEpisodeTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    .registers 3
    .parameter "value"

    .prologue
    .line 2149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasEpisodeTitle:Z

    .line 2150
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->episodeTitle_:Ljava/lang/String;

    .line 2151
    return-object p0
.end method

.method public setSeriesSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    .registers 3
    .parameter "value"

    .prologue
    .line 2132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasSeriesSubtitle:Z

    .line 2133
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->seriesSubtitle_:Ljava/lang/String;

    .line 2134
    return-object p0
.end method

.method public setSeriesTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    .registers 3
    .parameter "value"

    .prologue
    .line 2115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasSeriesTitle:Z

    .line 2116
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->seriesTitle_:Ljava/lang/String;

    .line 2117
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2210
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasSeriesTitle()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2211
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getSeriesTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2213
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasSeriesSubtitle()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2214
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getSeriesSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2216
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasEpisodeTitle()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2217
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2219
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasEpisodeSubtitle()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2220
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getEpisodeSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2222
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasColorThemeArgb()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2223
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2225
    :cond_46
    return-void
.end method
