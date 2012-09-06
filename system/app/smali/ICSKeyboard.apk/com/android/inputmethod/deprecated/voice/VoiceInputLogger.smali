.class public Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;
.super Ljava/lang/Object;
.source "VoiceInputLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sVoiceInputLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;


# instance fields
.field private final mBaseIntent:Landroid/content/Intent;

.field private final mContext:Landroid/content/Context;

.field private mHasLoggingInfo:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mHasLoggingInfo:Z

    .line 63
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mBaseIntent:Landroid/content/Intent;

    .line 66
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mBaseIntent:Landroid/content/Intent;

    const-string v1, "app_name"

    const-string v2, "voiceime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    return-void
.end method

.method public static declared-synchronized getLogger(Landroid/content/Context;)Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;
    .registers 3
    .parameter "contextHint"

    .prologue
    .line 56
    const-class v1, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->sVoiceInputLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    if-nez v0, :cond_e

    .line 57
    new-instance v0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->sVoiceInputLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    .line 59
    :cond_e
    sget-object v0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->sVoiceInputLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasLoggingInfo()Z
    .registers 2

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mHasLoggingInfo:Z

    return v0
.end method

.method private newLoggingBroadcast(I)Landroid/content/Intent;
    .registers 4
    .parameter "event"

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mBaseIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 71
    .local v0, i:Landroid/content/Intent;
    const-string v1, "extra_event"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    return-object v0
.end method

.method private setHasLoggingInfo(Z)V
    .registers 2
    .parameter "hasLoggingInfo"

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mHasLoggingInfo:Z

    .line 259
    invoke-static {p1}, Lcom/android/inputmethod/deprecated/compat/VoiceInputLoggerCompatUtils;->setHasVoiceLoggingInfoCompat(Z)V

    .line 260
    return-void
.end method


# virtual methods
.method public cancelDuringError()V
    .registers 3

    .prologue
    .line 148
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 150
    return-void
.end method

.method public cancelDuringListening()V
    .registers 3

    .prologue
    .line 138
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method public cancelDuringWorking()V
    .registers 3

    .prologue
    .line 143
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    return-void
.end method

.method public error(I)V
    .registers 4
    .parameter "code"

    .prologue
    .line 159
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 160
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 161
    .local v0, i:Landroid/content/Intent;
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 163
    return-void
.end method

.method public flush()V
    .registers 4

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->hasLoggingInfo()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 77
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mBaseIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 78
    .local v0, i:Landroid/content/Intent;
    const-string v1, "flush"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 80
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 82
    .end local v0           #i:Landroid/content/Intent;
    :cond_1c
    return-void
.end method

.method public inputEnded()V
    .registers 3

    .prologue
    .line 225
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 226
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 227
    return-void
.end method

.method public keyboardWarningDialogCancel()V
    .registers 3

    .prologue
    .line 103
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 105
    const/4 v1, 0x3

    .line 104
    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    return-void
.end method

.method public keyboardWarningDialogDismissed()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 91
    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    return-void
.end method

.method public keyboardWarningDialogOk()V
    .registers 3

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 99
    const/4 v1, 0x2

    .line 98
    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    return-void
.end method

.method public keyboardWarningDialogShown()V
    .registers 3

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 87
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    return-void
.end method

.method public punctuationHintDisplayed()V
    .registers 3

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 155
    const/16 v1, 0x9

    .line 154
    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method public settingsWarningDialogCancel()V
    .registers 3

    .prologue
    .line 127
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 129
    const/4 v1, 0x7

    .line 128
    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method public settingsWarningDialogDismissed()V
    .registers 3

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 117
    const/4 v1, 0x5

    .line 116
    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method public settingsWarningDialogOk()V
    .registers 3

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 123
    const/4 v1, 0x6

    .line 122
    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 124
    return-void
.end method

.method public settingsWarningDialogShown()V
    .registers 3

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 111
    const/4 v1, 0x4

    .line 110
    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method public start(Ljava/lang/String;Z)V
    .registers 7
    .parameter "locale"
    .parameter "swipe"

    .prologue
    .line 166
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 167
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 168
    .local v0, i:Landroid/content/Intent;
    const-string v1, "locale"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "swipe"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 170
    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 171
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 172
    return-void
.end method

.method public swipeHintDisplayed()V
    .registers 3

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 134
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method public textModifiedByChooseSuggestion(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "suggestionLength"
    .parameter "replacedPhraseLength"
    .parameter "index"
    .parameter "before"
    .parameter "after"

    .prologue
    const/4 v2, 0x1

    .line 212
    invoke-direct {p0, v2}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 213
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 214
    .local v0, i:Landroid/content/Intent;
    const-string v1, "length"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    const-string v1, "length"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    const-string v1, "index"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    const-string v1, "before"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v1, "after"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 222
    return-void
.end method

.method public textModifiedByTypingDeletion(I)V
    .registers 5
    .parameter "length"

    .prologue
    .line 200
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 201
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 202
    .local v0, i:Landroid/content/Intent;
    const-string v1, "length"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    const-string v1, "type"

    .line 204
    const/4 v2, 0x2

    .line 203
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    return-void
.end method

.method public textModifiedByTypingInsertion(I)V
    .registers 5
    .parameter "length"

    .prologue
    .line 182
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 183
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 184
    .local v0, i:Landroid/content/Intent;
    const-string v1, "length"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    const-string v1, "type"

    .line 186
    const/4 v2, 0x3

    .line 185
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    return-void
.end method

.method public textModifiedByTypingInsertionPunctuation(I)V
    .registers 5
    .parameter "length"

    .prologue
    .line 191
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 192
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 193
    .local v0, i:Landroid/content/Intent;
    const-string v1, "length"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    const-string v1, "type"

    .line 195
    const/4 v2, 0x4

    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 197
    return-void
.end method

.method public voiceInputDelivered(I)V
    .registers 4
    .parameter "length"

    .prologue
    .line 175
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 176
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 177
    .local v0, i:Landroid/content/Intent;
    const-string v1, "length"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 179
    return-void
.end method

.method public voiceInputSettingDisabled()V
    .registers 3

    .prologue
    .line 236
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 238
    const/16 v1, 0x14

    .line 237
    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    return-void
.end method

.method public voiceInputSettingEnabled()V
    .registers 3

    .prologue
    .line 230
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 232
    const/16 v1, 0x13

    .line 231
    invoke-direct {p0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 233
    return-void
.end method
