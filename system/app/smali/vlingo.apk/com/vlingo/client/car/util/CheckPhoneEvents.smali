.class public Lcom/vlingo/client/car/util/CheckPhoneEvents;
.super Ljava/lang/Object;
.source "CheckPhoneEvents.java"


# static fields
.field private static myInstance:Lcom/vlingo/client/car/util/CheckPhoneEvents;


# instance fields
.field private delegate:Lcom/vlingo/client/car/CarActivityDelegate;

.field private res:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->myInstance:Lcom/vlingo/client/car/util/CheckPhoneEvents;

    return-void
.end method

.method private constructor <init>(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 3
    .parameter "carDelegate"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 30
    iput-object v0, p0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->res:Landroid/content/res/Resources;

    .line 41
    iput-object p1, p0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 42
    iget-object v0, p0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->res:Landroid/content/res/Resources;

    .line 43
    return-void
.end method

.method public static getInstance(Lcom/vlingo/client/car/CarActivityDelegate;)Lcom/vlingo/client/car/util/CheckPhoneEvents;
    .registers 2
    .parameter "carDelegate"

    .prologue
    .line 33
    sget-object v0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->myInstance:Lcom/vlingo/client/car/util/CheckPhoneEvents;

    if-eqz v0, :cond_7

    .line 34
    sget-object v0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->myInstance:Lcom/vlingo/client/car/util/CheckPhoneEvents;

    .line 36
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Lcom/vlingo/client/car/util/CheckPhoneEvents;

    invoke-direct {v0, p0}, Lcom/vlingo/client/car/util/CheckPhoneEvents;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    goto :goto_6
.end method

.method private ttsAlarmDetails(Lcom/vlingo/client/samsung/ScheduleEvent;)Ljava/lang/String;
    .registers 14
    .parameter "alarm"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 205
    const/4 v2, 0x0

    .line 206
    .local v2, detailTxt:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/vlingo/client/samsung/ScheduleEvent;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, title:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/vlingo/client/samsung/ScheduleEvent;->getBegin()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 208
    .local v5, millis:Ljava/lang/Long;
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 209
    .local v0, alarmTime:Landroid/text/format/Time;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 210
    const-string v7, "%H %M"

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, alarmTimeTxt:Ljava/lang/String;
    const-string v7, "%H"

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, hrsTimeTxt:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 214
    .local v3, hrs:I
    if-eqz v6, :cond_3e

    .line 215
    iget-object v7, p0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->res:Landroid/content/res/Resources;

    const v8, 0x7f090244

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v10

    aput-object v1, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 220
    :goto_3d
    return-object v2

    .line 217
    :cond_3e
    iget-object v7, p0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->res:Landroid/content/res/Resources;

    const v8, 0x7f0d0002

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v1, v9, v10

    invoke-virtual {v7, v8, v3, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3d
.end method

.method private ttsAlarmNumber(Ljava/util/Vector;)Ljava/lang/String;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/samsung/ScheduleEvent;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, alarm:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/samsung/ScheduleEvent;>;"
    const-string v0, ""

    .line 191
    .local v0, summary:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_23

    .line 192
    iget-object v1, p0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->res:Landroid/content/res/Resources;

    const v2, 0x7f0d0005

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_23
    return-object v0
.end method

.method private ttsCallDetails(Lcom/vlingo/client/util/LoggedCall;)Ljava/lang/String;
    .registers 14
    .parameter "call"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 246
    const/4 v2, 0x0

    .line 247
    .local v2, detailTxt:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/vlingo/client/util/LoggedCall;->getName()Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, name:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/vlingo/client/util/LoggedCall;->getDate()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 249
    .local v5, millis:Ljava/lang/Long;
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 250
    .local v0, callTime:Landroid/text/format/Time;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 251
    const-string v7, "%H %M"

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, callTimeTxt:Ljava/lang/String;
    const-string v7, "%H"

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, hrsTimeTxt:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 255
    .local v3, hrs:I
    if-eqz v6, :cond_3e

    .line 256
    iget-object v7, p0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->res:Landroid/content/res/Resources;

    const v8, 0x7f0d0001

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v10

    aput-object v1, v9, v11

    invoke-virtual {v7, v8, v3, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 261
    :goto_3d
    return-object v2

    .line 258
    :cond_3e
    iget-object v7, p0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->res:Landroid/content/res/Resources;

    const v8, 0x7f0d0002

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v1, v9, v10

    invoke-virtual {v7, v8, v3, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3d
.end method

.method private ttsCallNumber(Ljava/util/Vector;)Ljava/lang/String;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/LoggedCall;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, call:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/LoggedCall;>;"
    const-string v0, ""

    .line 232
    .local v0, summary:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_23

    .line 233
    iget-object v1, p0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->res:Landroid/content/res/Resources;

    const v2, 0x7f0d0004

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 235
    :cond_23
    return-object v0
.end method

.method private ttsEventSummary(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/SMSUtil$TextMessage;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/samsung/ScheduleEvent;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/LoggedCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, sms:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/SMSUtil$TextMessage;>;"
    .local p2, alarm:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/samsung/ScheduleEvent;>;"
    .local p3, call:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/LoggedCall;>;"
    iget-object v3, p0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->res:Landroid/content/res/Resources;

    const v4, 0x7f090245

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, eventSummaryTxt:Ljava/lang/String;
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, locale:Ljava/lang/String;
    const-string v3, "ko-kr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 123
    const-string v0, ""

    .line 126
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p3}, Lcom/vlingo/client/car/util/CheckPhoneEvents;->ttsCallNumber(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_49

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/vlingo/client/car/util/CheckPhoneEvents;->ttsSmsNumber(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_77

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/vlingo/client/car/util/CheckPhoneEvents;->ttsAlarmNumber(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarCancelable(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v2

    .line 136
    .local v2, toSpeak:Lcom/vlingo/client/core/tts/TTSDemand;
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isJKBuild()Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 137
    sget-object v3, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->HIGH_PRIORITY:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    invoke-virtual {v2, v3}, Lcom/vlingo/client/core/tts/TTSDemand;->setBehavior(Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;)V

    .line 139
    :cond_9b
    iget-object v3, p0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v3, v2}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 140
    return-void
.end method

.method private ttsOneEvent(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/SMSUtil$TextMessage;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/samsung/ScheduleEvent;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/LoggedCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, sms:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/SMSUtil$TextMessage;>;"
    .local p2, alarm:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/samsung/ScheduleEvent;>;"
    .local p3, call:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/LoggedCall;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 86
    iget-object v3, p0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->res:Landroid/content/res/Resources;

    const v4, 0x7f090245

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, eventSummaryTxt:Ljava/lang/String;
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, locale:Ljava/lang/String;
    const-string v3, "ko-kr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 91
    const-string v0, ""

    .line 93
    :cond_1d
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ne v6, v3, :cond_6e

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/vlingo/client/car/util/CheckPhoneEvents;->ttsSmsNumber(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/util/SMSUtil$TextMessage;

    invoke-direct {p0, v3}, Lcom/vlingo/client/car/util/CheckPhoneEvents;->ttsSmsDetails(Lcom/vlingo/client/util/SMSUtil$TextMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_59
    :goto_59
    invoke-static {v0}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarCancelable(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v2

    .line 104
    .local v2, toSpeak:Lcom/vlingo/client/core/tts/TTSDemand;
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isJKBuild()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 105
    sget-object v3, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->HIGH_PRIORITY:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    invoke-virtual {v2, v3}, Lcom/vlingo/client/core/tts/TTSDemand;->setBehavior(Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;)V

    .line 107
    :cond_68
    iget-object v3, p0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v3, v2}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 108
    return-void

    .line 96
    .end local v2           #toSpeak:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_6e
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v3

    if-ne v6, v3, :cond_ab

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/vlingo/client/car/util/CheckPhoneEvents;->ttsAlarmNumber(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/samsung/ScheduleEvent;

    invoke-direct {p0, v3}, Lcom/vlingo/client/car/util/CheckPhoneEvents;->ttsAlarmDetails(Lcom/vlingo/client/samsung/ScheduleEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_59

    .line 99
    :cond_ab
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ne v6, v3, :cond_59

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p3}, Lcom/vlingo/client/car/util/CheckPhoneEvents;->ttsCallNumber(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/util/LoggedCall;

    invoke-direct {p0, v3}, Lcom/vlingo/client/car/util/CheckPhoneEvents;->ttsCallDetails(Lcom/vlingo/client/util/LoggedCall;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_59
.end method

.method private ttsSmsDetails(Lcom/vlingo/client/util/SMSUtil$TextMessage;)Ljava/lang/String;
    .registers 14
    .parameter "sms"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, detailTxt:Ljava/lang/String;
    iget-object v6, p1, Lcom/vlingo/client/util/SMSUtil$TextMessage;->name:Ljava/lang/String;

    .line 167
    .local v6, name:Ljava/lang/String;
    iget-wide v7, p1, Lcom/vlingo/client/util/SMSUtil$TextMessage;->date:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 168
    .local v3, millis:Ljava/lang/Long;
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 169
    .local v4, msgTime:Landroid/text/format/Time;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 170
    const-string v7, "%H %M"

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, msgTimeTxt:Ljava/lang/String;
    const-string v7, "%H"

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, hrsTimeTxt:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 173
    .local v1, hrs:I
    if-eqz v6, :cond_3a

    .line 174
    iget-object v7, p0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->res:Landroid/content/res/Resources;

    const v8, 0x7f0d0001

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v10

    aput-object v5, v9, v11

    invoke-virtual {v7, v8, v1, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_39
    return-object v0

    .line 176
    :cond_3a
    iget-object v7, p0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->res:Landroid/content/res/Resources;

    const v8, 0x7f0d0002

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v5, v9, v10

    invoke-virtual {v7, v8, v1, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method private ttsSmsNumber(Ljava/util/Vector;)Ljava/lang/String;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/SMSUtil$TextMessage;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, sms:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/SMSUtil$TextMessage;>;"
    const-string v0, ""

    .line 151
    .local v0, summary:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_23

    .line 152
    iget-object v1, p0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->res:Landroid/content/res/Resources;

    const v2, 0x7f0d0003

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_23
    return-object v0
.end method


# virtual methods
.method public check()Z
    .registers 11

    .prologue
    const/16 v9, 0x32

    const/4 v7, 0x1

    .line 50
    const/4 v4, 0x0

    .line 51
    .local v4, numSms:I
    iget-object v8, p0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v8}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v9}, Lcom/vlingo/client/util/SMSUtil;->getLastNUnreadMessages(Landroid/content/Context;I)Ljava/util/Vector;

    move-result-object v5

    .line 52
    .local v5, sms:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/SMSUtil$TextMessage;>;"
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v4

    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, numFiredAlarms:I
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 56
    .local v0, firedAlarms:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/samsung/ScheduleEvent;>;"
    iget-object v8, p0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v8}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v0, v9}, Lcom/vlingo/client/samsung/ScheduleUtil;->getFiredCalendarAlerts(Landroid/content/Context;Ljava/util/Vector;I)I

    move-result v2

    .line 58
    const/4 v3, 0x0

    .line 59
    .local v3, numMissedCalls:I
    iget-object v8, p0, Lcom/vlingo/client/car/util/CheckPhoneEvents;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v8}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v9}, Lcom/vlingo/client/util/CallLogUtil;->getLastNMissedCalls(Landroid/content/Context;I)Ljava/util/Vector;

    move-result-object v1

    .line 60
    .local v1, missedCalls:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/LoggedCall;>;"
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    .line 62
    add-int v8, v4, v2

    add-int v6, v8, v3

    .line 64
    .local v6, totalEvents:I
    if-ne v6, v7, :cond_3b

    .line 65
    invoke-direct {p0, v5, v0, v1}, Lcom/vlingo/client/car/util/CheckPhoneEvents;->ttsOneEvent(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V

    .line 75
    :goto_3a
    return v7

    .line 67
    :cond_3b
    if-le v6, v7, :cond_41

    .line 68
    invoke-direct {p0, v5, v0, v1}, Lcom/vlingo/client/car/util/CheckPhoneEvents;->ttsEventSummary(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V

    goto :goto_3a

    .line 73
    :cond_41
    const/4 v7, 0x0

    goto :goto_3a
.end method
