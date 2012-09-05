.class public Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;
.super Lcom/sprint/dsa/diagnostics/Diagnostic;
.source "ScreenDiagnostic.java"

# interfaces
.implements Lcom/sprint/dsa/diagnostics/PowerUser;


# static fields
.field public static final BRIGHTNESS_HIGH:I = 0xaf

.field public static final BRIGHTNESS_LOW:I = 0x1e

.field public static final BRIGHTNESS_MAX:I = 0xff

.field public static final BRIGHTNESS_MEDIUM:I = 0x7d

.field public static final KEY:Ljava/lang/String; = "screen"

.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"

.field public static final TIMEOUT_HIGH:J = 0x927c0L

.field public static final TIMEOUT_LOW:J = 0x3a98L

.field public static final TIMEOUT_MEDIUM:J = 0x1d4c0L


# instance fields
.field private mBrightness:I

.field private mBrightnessMode:I

.field private mDesc:Ljava/lang/String;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTimeout:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 4
    .parameter "context"
    .parameter "stub"

    .prologue
    .line 33
    const-string v0, "screen"

    invoke-direct {p0, p1, v0, p2}, Lcom/sprint/dsa/diagnostics/Diagnostic;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 35
    const-string v0, "status.test.running"

    invoke-virtual {p2, v0}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mDesc:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mResolver:Landroid/content/ContentResolver;

    .line 37
    return-void
.end method

.method public static getBrightnessLevel(I)Ljava/lang/String;
    .registers 2
    .parameter "brightness"

    .prologue
    .line 154
    const/16 v0, 0xaf

    if-lt p0, v0, :cond_7

    .line 155
    const-string v0, "High"

    .line 159
    :goto_6
    return-object v0

    .line 156
    :cond_7
    const/16 v0, 0x7d

    if-lt p0, v0, :cond_e

    .line 157
    const-string v0, "Medium"

    goto :goto_6

    .line 159
    :cond_e
    const-string v0, "Low"

    goto :goto_6
.end method

.method public static getBrightnessString(I)Ljava/lang/String;
    .registers 4
    .parameter "brightness"

    .prologue
    .line 149
    int-to-float v1, p0

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 150
    .local v0, perc:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTimeoutLevel(J)Ljava/lang/String;
    .registers 4
    .parameter "timeout"

    .prologue
    .line 185
    const-wide/32 v0, 0x927c0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_a

    .line 186
    const-string v0, "High"

    .line 190
    :goto_9
    return-object v0

    .line 187
    :cond_a
    const-wide/32 v0, 0x1d4c0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_14

    .line 188
    const-string v0, "Medium"

    goto :goto_9

    .line 190
    :cond_14
    const-string v0, "Low"

    goto :goto_9
.end method

.method public static getTimeoutString(J)Ljava/lang/String;
    .registers 11
    .parameter "timeout"

    .prologue
    .line 164
    const-wide/16 v7, 0x3e8

    div-long v0, p0, v7

    .line 165
    .local v0, allSeconds:J
    const-wide/16 v7, 0x3c

    div-long v3, v0, v7

    .line 166
    .local v3, minutes:J
    const-wide/16 v7, 0x3c

    rem-long v5, p0, v7

    .line 168
    .local v5, modSeconds:J
    const-string v2, ""

    .line 169
    .local v2, desc:Ljava/lang/String;
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_68

    .line 170
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_4a

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " minutes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    :goto_2d
    const-wide/16 v7, 0x1

    cmp-long v7, v3, v7

    if-nez v7, :cond_3b

    const-string v7, "minutes"

    const-string v8, "minute"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 176
    :cond_3b
    const-wide/16 v7, 0x1

    cmp-long v7, v5, v7

    if-nez v7, :cond_49

    const-string v7, "seconds"

    const-string v8, "second"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 181
    :cond_49
    :goto_49
    return-object v2

    .line 173
    :cond_4a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " minutes, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seconds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2d

    .line 178
    :cond_68
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " seconds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    const-wide/16 v7, 0x1

    cmp-long v7, v0, v7

    if-nez v7, :cond_49

    const-string v7, "seconds"

    const-string v8, "second"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_49
.end method


# virtual methods
.method protected getBrightnessLevel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mBrightness:I

    invoke-static {v0}, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->getBrightnessLevel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBrightnessString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 195
    iget v0, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mBrightness:I

    invoke-static {v0}, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->getBrightnessString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerDescription()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 123
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v4, "info.power.brightness.line"

    new-array v5, v9, [Ljava/lang/Object;

    .line 124
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->getBrightnessString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->getBrightnessLevel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 123
    invoke-virtual {v3, v4, v5}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, brightnessLine:Ljava/lang/String;
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v4, "info.power.timeout.line"

    new-array v5, v9, [Ljava/lang/Object;

    .line 126
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->getTimeoutString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->getTimeoutLevel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 125
    invoke-virtual {v3, v4, v5}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, timeoutLine:Ljava/lang/String;
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5e

    .line 130
    :cond_37
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Brightness: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->getBrightnessString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->getBrightnessLevel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_5e
    if-eqz v2, :cond_66

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8d

    .line 133
    :cond_66
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Timeout: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->getTimeoutString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->getTimeoutLevel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    :cond_8d
    const-string v1, ""

    .line 137
    .local v1, desc:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    return-object v1
.end method

.method public getPowerTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerUsage()Lcom/sprint/dsa/diagnostics/PowerUsage;
    .registers 5

    .prologue
    const-wide/32 v2, 0x927c0

    .line 108
    iget v0, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mBrightness:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_f

    iget-wide v0, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mTimeout:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    .line 109
    :cond_f
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->HIGHEST:Lcom/sprint/dsa/diagnostics/PowerUsage;

    .line 117
    :goto_11
    return-object v0

    .line 110
    :cond_12
    iget v0, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mBrightness:I

    const/16 v1, 0xaf

    if-ge v0, v1, :cond_1e

    iget-wide v0, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mTimeout:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_21

    .line 111
    :cond_1e
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->HIGH:Lcom/sprint/dsa/diagnostics/PowerUsage;

    goto :goto_11

    .line 112
    :cond_21
    iget v0, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mBrightness:I

    const/16 v1, 0x7d

    if-ge v0, v1, :cond_30

    iget-wide v0, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mTimeout:J

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_33

    .line 113
    :cond_30
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->MEDIUM:Lcom/sprint/dsa/diagnostics/PowerUsage;

    goto :goto_11

    .line 114
    :cond_33
    iget v0, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mBrightness:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_41

    iget-wide v0, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mTimeout:J

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-gtz v0, :cond_44

    .line 115
    :cond_41
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->LOWEST:Lcom/sprint/dsa/diagnostics/PowerUsage;

    goto :goto_11

    .line 117
    :cond_44
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->LOW:Lcom/sprint/dsa/diagnostics/PowerUsage;

    goto :goto_11
.end method

.method protected getSettingsId()I
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method protected getTimeoutLevel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mTimeout:J

    invoke-static {v0, v1}, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->getTimeoutLevel(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTimeoutString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mTimeout:J

    invoke-static {v0, v1}, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->getTimeoutString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    .registers 6

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mResolver:Landroid/content/ContentResolver;

    .line 53
    const-string v2, "screen_brightness"

    .line 52
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mBrightness:I

    .line 54
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mResolver:Landroid/content/ContentResolver;

    .line 55
    const-string v2, "screen_brightness_mode"

    .line 54
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mBrightnessMode:I

    .line 57
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mResolver:Landroid/content/ContentResolver;

    .line 58
    const-string v2, "screen_off_timeout"

    .line 57
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mTimeout:J

    .line 60
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v2, "status.available"

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->getBrightnessString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->getTimeoutString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mDesc:Ljava/lang/String;

    .line 63
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_OKAY:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 64
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 65
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_47
    .catchall {:try_start_0 .. :try_end_47} :catchall_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_4b

    .line 74
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->fireStatusChange()V

    .line 71
    :goto_4a
    return-object v1

    .line 66
    :catch_4b
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/Exception;
    :try_start_4c
    const-string v1, "SprintZone_Diagnostics"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_ERROR:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 69
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 70
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v2, "status.unavailable"

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mDesc:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_67
    .catchall {:try_start_4c .. :try_end_67} :catchall_6b

    .line 74
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->fireStatusChange()V

    goto :goto_4a

    .line 73
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_6b
    move-exception v1

    .line 74
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->fireStatusChange()V

    .line 75
    throw v1
.end method

.method public updateReceiverIntentFilter(Landroid/content/IntentFilter;)V
    .registers 2
    .parameter "filter"

    .prologue
    .line 102
    return-void
.end method

.method public updateState(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 87
    return-void
.end method

.method public updateValues(Lcom/sprint/dsa/diagnostics/DiagnosticsData;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 79
    iget v0, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mBrightness:I

    iput v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->screenBrightness:I

    .line 80
    iget v0, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mBrightnessMode:I

    iput v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->screenBrightnessMode:I

    .line 81
    iget-wide v0, p0, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->mTimeout:J

    iput-wide v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->screenTimeout:J

    .line 82
    return-void
.end method
