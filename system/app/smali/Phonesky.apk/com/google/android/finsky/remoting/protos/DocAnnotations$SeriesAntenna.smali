.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeriesAntenna"
.end annotation


# instance fields
.field private cachedSize:I

.field private colorThemeArgb_:Ljava/lang/String;

.field private episodeSubtitle_:Ljava/lang/String;

.field private episodeTitle_:Ljava/lang/String;

.field private hasColorThemeArgb:Z

.field private hasEpisodeSubtitle:Z

.field private hasEpisodeTitle:Z

.field private hasSectionAlbums:Z

.field private hasSectionTracks:Z

.field private hasSeriesSubtitle:Z

.field private hasSeriesTitle:Z

.field private sectionAlbums_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private sectionTracks_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private seriesSubtitle_:Ljava/lang/String;

.field private seriesTitle_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2093
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2098
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->seriesTitle_:Ljava/lang/String;

    .line 2115
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->seriesSubtitle_:Ljava/lang/String;

    .line 2132
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->episodeTitle_:Ljava/lang/String;

    .line 2149
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->episodeSubtitle_:Ljava/lang/String;

    .line 2166
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->colorThemeArgb_:Ljava/lang/String;

    .line 2183
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->sectionTracks_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 2203
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->sectionAlbums_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 2261
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->cachedSize:I

    .line 2093
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2263
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->cachedSize:I

    if-gez v0, :cond_7

    .line 2265
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSerializedSize()I

    .line 2267
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->cachedSize:I

    return v0
.end method

.method public getColorThemeArgb()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->colorThemeArgb_:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeSubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2150
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->episodeSubtitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->episodeTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionAlbums()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .registers 2

    .prologue
    .line 2205
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->sectionAlbums_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSectionTracks()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .registers 2

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->sectionTracks_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 2271
    const/4 v0, 0x0

    .line 2272
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSeriesTitle()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2273
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSeriesTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2276
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSeriesSubtitle()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2277
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSeriesSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2280
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasEpisodeTitle()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2281
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2284
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasEpisodeSubtitle()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2285
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getEpisodeSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2288
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasColorThemeArgb()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 2289
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2292
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSectionTracks()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 2293
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSectionTracks()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2296
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSectionAlbums()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 2297
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSectionAlbums()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2300
    :cond_71
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->cachedSize:I

    .line 2301
    return v0
.end method

.method public getSeriesSubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->seriesSubtitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getSeriesTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->seriesTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public hasColorThemeArgb()Z
    .registers 2

    .prologue
    .line 2168
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasColorThemeArgb:Z

    return v0
.end method

.method public hasEpisodeSubtitle()Z
    .registers 2

    .prologue
    .line 2151
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasEpisodeSubtitle:Z

    return v0
.end method

.method public hasEpisodeTitle()Z
    .registers 2

    .prologue
    .line 2134
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasEpisodeTitle:Z

    return v0
.end method

.method public hasSectionAlbums()Z
    .registers 2

    .prologue
    .line 2204
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSectionAlbums:Z

    return v0
.end method

.method public hasSectionTracks()Z
    .registers 2

    .prologue
    .line 2184
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSectionTracks:Z

    return v0
.end method

.method public hasSeriesSubtitle()Z
    .registers 2

    .prologue
    .line 2117
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSeriesSubtitle:Z

    return v0
.end method

.method public hasSeriesTitle()Z
    .registers 2

    .prologue
    .line 2100
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSeriesTitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2308
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2309
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_4e

    .line 2313
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2314
    :sswitch_d
    return-object p0

    .line 2319
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->setSeriesTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    goto :goto_0

    .line 2323
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->setSeriesSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    goto :goto_0

    .line 2327
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->setEpisodeTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    goto :goto_0

    .line 2331
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->setEpisodeSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    goto :goto_0

    .line 2335
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->setColorThemeArgb(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    goto :goto_0

    .line 2339
    :sswitch_36
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 2340
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2341
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->setSectionTracks(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    goto :goto_0

    .line 2345
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :sswitch_42
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 2346
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2347
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->setSectionAlbums(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    goto :goto_0

    .line 2309
    :sswitch_data_4e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_2e
        0x32 -> :sswitch_36
        0x3a -> :sswitch_42
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
    .line 2091
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    move-result-object v0

    return-object v0
.end method

.method public setColorThemeArgb(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    .registers 3
    .parameter "value"

    .prologue
    .line 2170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasColorThemeArgb:Z

    .line 2171
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->colorThemeArgb_:Ljava/lang/String;

    .line 2172
    return-object p0
.end method

.method public setEpisodeSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    .registers 3
    .parameter "value"

    .prologue
    .line 2153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasEpisodeSubtitle:Z

    .line 2154
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->episodeSubtitle_:Ljava/lang/String;

    .line 2155
    return-object p0
.end method

.method public setEpisodeTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    .registers 3
    .parameter "value"

    .prologue
    .line 2136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasEpisodeTitle:Z

    .line 2137
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->episodeTitle_:Ljava/lang/String;

    .line 2138
    return-object p0
.end method

.method public setSectionAlbums(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    .registers 3
    .parameter "value"

    .prologue
    .line 2207
    if-nez p1, :cond_8

    .line 2208
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2210
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSectionAlbums:Z

    .line 2211
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->sectionAlbums_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 2212
    return-object p0
.end method

.method public setSectionTracks(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    .registers 3
    .parameter "value"

    .prologue
    .line 2187
    if-nez p1, :cond_8

    .line 2188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2190
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSectionTracks:Z

    .line 2191
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->sectionTracks_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 2192
    return-object p0
.end method

.method public setSeriesSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    .registers 3
    .parameter "value"

    .prologue
    .line 2119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSeriesSubtitle:Z

    .line 2120
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->seriesSubtitle_:Ljava/lang/String;

    .line 2121
    return-object p0
.end method

.method public setSeriesTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    .registers 3
    .parameter "value"

    .prologue
    .line 2102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSeriesTitle:Z

    .line 2103
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->seriesTitle_:Ljava/lang/String;

    .line 2104
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
    .line 2238
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSeriesTitle()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2239
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSeriesTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2241
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSeriesSubtitle()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2242
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSeriesSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2244
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasEpisodeTitle()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2245
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2247
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasEpisodeSubtitle()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2248
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getEpisodeSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2250
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasColorThemeArgb()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2251
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2253
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSectionTracks()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 2254
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSectionTracks()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2256
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSectionAlbums()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2257
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSectionAlbums()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2259
    :cond_62
    return-void
.end method
