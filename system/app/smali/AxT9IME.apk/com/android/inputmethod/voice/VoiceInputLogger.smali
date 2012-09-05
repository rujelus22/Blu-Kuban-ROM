.class public Lcom/android/inputmethod/voice/VoiceInputLogger;
.super Ljava/lang/Object;
.source "VoiceInputLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sVoiceInputLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;


# instance fields
.field private final mBaseIntent:Landroid/content/Intent;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/voice/VoiceInputLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mBaseIntent:Landroid/content/Intent;

    .line 59
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mBaseIntent:Landroid/content/Intent;

    const-string v1, "app_name"

    const-string v2, "voiceime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method public static declared-synchronized getLogger(Landroid/content/Context;)Lcom/android/inputmethod/voice/VoiceInputLogger;
    .registers 3
    .parameter "contextHint"

    .prologue
    .line 49
    const-class v1, Lcom/android/inputmethod/voice/VoiceInputLogger;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/inputmethod/voice/VoiceInputLogger;->sVoiceInputLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    if-nez v0, :cond_e

    .line 50
    new-instance v0, Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/voice/VoiceInputLogger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/inputmethod/voice/VoiceInputLogger;->sVoiceInputLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    .line 52
    :cond_e
    sget-object v0, Lcom/android/inputmethod/voice/VoiceInputLogger;->sVoiceInputLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private newLoggingBroadcast(I)Landroid/content/Intent;
    .registers 4
    .parameter "event"

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mBaseIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 64
    .local v0, i:Landroid/content/Intent;
    const-string v1, "extra_event"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    return-object v0
.end method


# virtual methods
.method public cancelDuringError()V
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public cancelDuringListening()V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method public cancelDuringWorking()V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 124
    return-void
.end method

.method public error(I)V
    .registers 4
    .parameter "code"

    .prologue
    .line 136
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 137
    .local v0, i:Landroid/content/Intent;
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.method public flush()V
    .registers 4

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mBaseIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 70
    .local v0, i:Landroid/content/Intent;
    const-string v1, "flush"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method public inputEnded()V
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 196
    return-void
.end method

.method public keyboardWarningDialogDismissed()V
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 82
    return-void
.end method

.method public start(Ljava/lang/String;Z)V
    .registers 7
    .parameter "locale"
    .parameter "swipe"

    .prologue
    .line 142
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 143
    .local v0, i:Landroid/content/Intent;
    const-string v1, "locale"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "swipe"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    return-void
.end method

.method public textModifiedByTypingDeletion(I)V
    .registers 5
    .parameter "length"

    .prologue
    .line 172
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 173
    .local v0, i:Landroid/content/Intent;
    const-string v1, "length"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    return-void
.end method

.method public textModifiedByTypingInsertion(I)V
    .registers 5
    .parameter "length"

    .prologue
    .line 156
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 157
    .local v0, i:Landroid/content/Intent;
    const-string v1, "length"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string v1, "type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    return-void
.end method

.method public textModifiedByTypingInsertionPunctuation(I)V
    .registers 5
    .parameter "length"

    .prologue
    .line 164
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 165
    .local v0, i:Landroid/content/Intent;
    const-string v1, "length"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    const-string v1, "type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 169
    return-void
.end method

.method public voiceInputDelivered(I)V
    .registers 4
    .parameter "length"

    .prologue
    .line 150
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 151
    .local v0, i:Landroid/content/Intent;
    const-string v1, "length"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 153
    return-void
.end method
