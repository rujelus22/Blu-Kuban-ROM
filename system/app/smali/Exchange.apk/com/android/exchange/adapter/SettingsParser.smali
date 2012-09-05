.class public Lcom/android/exchange/adapter/SettingsParser;
.super Lcom/android/exchange/adapter/Parser;
.source "SettingsParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/android/exchange/adapter/SettingsParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/SettingsParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/SettingsParser;->mStatus:I

    .line 43
    return-void
.end method

.method private parseSetTag()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x1

    .line 185
    .local v0, result:Z
    :cond_1
    :goto_1
    const/16 v1, 0x488

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_21

    .line 187
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x486

    if-ne v1, v2, :cond_1d

    .line 189
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->getValueInt()I

    move-result v1

    iput v1, p0, Lcom/android/exchange/adapter/SettingsParser;->mStatus:I

    .line 191
    iget v1, p0, Lcom/android/exchange/adapter/SettingsParser;->mStatus:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 193
    const/4 v0, 0x0

    goto :goto_1

    .line 199
    :cond_1d
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->skipTag()V

    goto :goto_1

    .line 205
    :cond_21
    return v0
.end method

.method private parseSettings()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x1

    .line 81
    .local v0, result:Z
    :cond_1
    :goto_1
    const/16 v1, 0x485

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_37

    .line 83
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x486

    if-ne v1, v2, :cond_1d

    .line 85
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->getValueInt()I

    move-result v1

    iput v1, p0, Lcom/android/exchange/adapter/SettingsParser;->mStatus:I

    .line 87
    iget v1, p0, Lcom/android/exchange/adapter/SettingsParser;->mStatus:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 89
    const/4 v0, 0x0

    goto :goto_1

    .line 93
    :cond_1d
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x496

    if-ne v1, v2, :cond_28

    .line 95
    invoke-direct {p0}, Lcom/android/exchange/adapter/SettingsParser;->parserDeviceInformation()Z

    move-result v0

    goto :goto_1

    .line 97
    :cond_28
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x494

    if-ne v1, v2, :cond_33

    .line 99
    invoke-direct {p0}, Lcom/android/exchange/adapter/SettingsParser;->parserDevicePassword()Z

    move-result v0

    goto :goto_1

    .line 103
    :cond_33
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->skipTag()V

    goto :goto_1

    .line 109
    :cond_37
    return v0
.end method

.method private parserDeviceInformation()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x1

    .line 133
    .local v0, result:Z
    :goto_1
    const/16 v1, 0x496

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_19

    .line 135
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x488

    if-ne v1, v2, :cond_15

    .line 137
    invoke-direct {p0}, Lcom/android/exchange/adapter/SettingsParser;->parseSetTag()Z

    move-result v0

    goto :goto_1

    .line 141
    :cond_15
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->skipTag()V

    goto :goto_1

    .line 147
    :cond_19
    return v0
.end method

.method private parserDevicePassword()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x1

    .line 159
    .local v0, result:Z
    :goto_1
    const/16 v1, 0x494

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_19

    .line 161
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x488

    if-ne v1, v2, :cond_15

    .line 163
    invoke-direct {p0}, Lcom/android/exchange/adapter/SettingsParser;->parseSetTag()Z

    move-result v0

    goto :goto_1

    .line 167
    :cond_15
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->skipTag()V

    goto :goto_1

    .line 173
    :cond_19
    return v0
.end method


# virtual methods
.method public getStatus()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lcom/android/exchange/adapter/SettingsParser;->mStatus:I

    return v0
.end method

.method public parse()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/EasException;
        }
    .end annotation

    .prologue
    .line 51
    sget-object v1, Lcom/android/exchange/adapter/SettingsParser;->TAG:Ljava/lang/String;

    const-string v2, "parsing the document"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, res:Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v1

    const/16 v2, 0x485

    if-eq v1, v2, :cond_17

    .line 57
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 61
    :cond_17
    invoke-direct {p0}, Lcom/android/exchange/adapter/SettingsParser;->parseSettings()Z

    move-result v0

    .line 63
    sget-object v1, Lcom/android/exchange/adapter/SettingsParser;->TAG:Ljava/lang/String;

    const-string v2, "document parsing done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return v0
.end method
