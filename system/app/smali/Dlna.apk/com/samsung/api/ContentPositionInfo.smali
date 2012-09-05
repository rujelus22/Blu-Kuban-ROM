.class public Lcom/samsung/api/ContentPositionInfo;
.super Ljava/lang/Object;
.source "ContentPositionInfo.java"


# instance fields
.field private mAbsCount:Ljava/lang/String;

.field private mAbsTime:Ljava/lang/String;

.field private mRelCount:Ljava/lang/String;

.field private mRelTime:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrackDuration:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "00:00:00"

    iput-object v0, p0, Lcom/samsung/api/ContentPositionInfo;->mTrackDuration:Ljava/lang/String;

    .line 45
    const-string v0, "00:00:00"

    iput-object v0, p0, Lcom/samsung/api/ContentPositionInfo;->mRelTime:Ljava/lang/String;

    .line 46
    const-string v0, "00:00:00"

    iput-object v0, p0, Lcom/samsung/api/ContentPositionInfo;->mAbsTime:Ljava/lang/String;

    .line 47
    const-string v0, "0"

    iput-object v0, p0, Lcom/samsung/api/ContentPositionInfo;->mRelCount:Ljava/lang/String;

    .line 48
    const-string v0, "0"

    iput-object v0, p0, Lcom/samsung/api/ContentPositionInfo;->mAbsCount:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/api/ContentPositionInfo;->mTitle:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private formatTime(Ljava/lang/String;)I
    .registers 15
    .parameter "time"

    .prologue
    const/16 v12, 0x3c

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 180
    if-eqz p1, :cond_46

    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_46

    .line 182
    const-string v9, "."

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 183
    .local v2, index:I
    if-eq v2, v7, :cond_1b

    .line 184
    const/4 v9, 0x0

    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 186
    :cond_1b
    const-string v9, ":"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, timeArray:[Ljava/lang/String;
    array-length v3, v6

    .line 188
    .local v3, length:I
    const/4 v1, 0x0

    .line 189
    .local v1, hour:I
    const/4 v4, 0x0

    .line 190
    .local v4, minute:I
    const/4 v5, 0x0

    .line 191
    .local v5, second:I
    if-le v3, v11, :cond_47

    .line 192
    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 193
    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 194
    const/4 v8, 0x2

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 203
    :goto_3c
    if-ltz v1, :cond_46

    if-ltz v4, :cond_46

    if-gt v4, v12, :cond_46

    if-ltz v5, :cond_46

    if-le v5, v12, :cond_6a

    .line 211
    .end local v1           #hour:I
    .end local v2           #index:I
    .end local v3           #length:I
    .end local v4           #minute:I
    .end local v5           #second:I
    .end local v6           #timeArray:[Ljava/lang/String;
    :cond_46
    :goto_46
    return v7

    .line 195
    .restart local v1       #hour:I
    .restart local v2       #index:I
    .restart local v3       #length:I
    .restart local v4       #minute:I
    .restart local v5       #second:I
    .restart local v6       #timeArray:[Ljava/lang/String;
    :cond_47
    if-le v3, v10, :cond_58

    .line 196
    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 197
    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_3c

    .line 198
    :cond_58
    const-string v9, "END_OF_MEDIA"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_68

    const-string v9, "NOT_IMPLEMENTED"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_65} :catch_73

    move-result v9

    if-eqz v9, :cond_46

    :cond_68
    move v7, v8

    .line 199
    goto :goto_46

    .line 206
    :cond_6a
    mul-int/lit8 v7, v1, 0x3c

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit8 v8, v4, 0x3c

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    goto :goto_46

    .line 210
    .end local v1           #hour:I
    .end local v2           #index:I
    .end local v3           #length:I
    .end local v4           #minute:I
    .end local v5           #second:I
    .end local v6           #timeArray:[Ljava/lang/String;
    :catch_73
    move-exception v0

    .line 211
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_46
.end method


# virtual methods
.method public getRelTimeInt()I
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/samsung/api/ContentPositionInfo;->mRelTime:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/api/ContentPositionInfo;->formatTime(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTrackDuration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/api/ContentPositionInfo;->mTrackDuration:Ljava/lang/String;

    return-object v0
.end method

.method public setAbsCount(Ljava/lang/String;)V
    .registers 5
    .parameter "absCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 157
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 158
    iput-object p1, p0, Lcom/samsung/api/ContentPositionInfo;->mAbsCount:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 163
    return-void

    .line 160
    :catch_6
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v1
.end method

.method public setAbsTime(Ljava/lang/String;)V
    .registers 4
    .parameter "absTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/samsung/api/ContentPositionInfo;->formatTime(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 117
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 119
    :cond_e
    iput-object p1, p0, Lcom/samsung/api/ContentPositionInfo;->mAbsTime:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setRelCount(Ljava/lang/String;)V
    .registers 5
    .parameter "relCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 137
    iput-object p1, p0, Lcom/samsung/api/ContentPositionInfo;->mRelCount:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 141
    return-void

    .line 138
    :catch_6
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v1
.end method

.method public setRelTime(Ljava/lang/String;)V
    .registers 4
    .parameter "relTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/api/ContentPositionInfo;->formatTime(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 94
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 96
    :cond_e
    iput-object p1, p0, Lcom/samsung/api/ContentPositionInfo;->mRelTime:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setTrackDuration(Ljava/lang/String;)V
    .registers 4
    .parameter "trackDuration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/samsung/api/ContentPositionInfo;->formatTime(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 71
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 73
    :cond_e
    iput-object p1, p0, Lcom/samsung/api/ContentPositionInfo;->mTrackDuration:Ljava/lang/String;

    .line 74
    return-void
.end method
