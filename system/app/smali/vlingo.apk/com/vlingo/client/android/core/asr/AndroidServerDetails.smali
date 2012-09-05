.class public Lcom/vlingo/client/android/core/asr/AndroidServerDetails;
.super Ljava/lang/Object;
.source "AndroidServerDetails.java"

# interfaces
.implements Lcom/vlingo/client/core/recognizer/SRServerDetails;


# static fields
.field public static final DEFAULT_ASR_SERVER_HOST:Ljava/lang/String; = "samsungvuiasr.vlingo.com"

.field public static final DEFAULT_EVENTLOG_SERVER_HOST:Ljava/lang/String; = "samsungvuieventlog.vlingo.com"

.field public static final DEFAULT_GENERIC_LOCALSEARCH_SERVER_HOST:Ljava/lang/String; = "www.google.com"

.field public static final DEFAULT_LOCALSEARCH_SERVER_HOST:Ljava/lang/String; = "samsungvuilocalsearch.vlingo.com"

.field private static final DEFAULT_PORT:I = 0x50

.field public static final DEFAULT_SUGGEST_SERVER_HOST:Ljava/lang/String; = "samsungvuisuggest.vlingo.com"

.field public static final DEFAULT_TTS_URL:Ljava/lang/String; = "http://samsungvuitts.vlingo.com/tts/tts2"

.field private static final PATH_ACTIVITY_LOG:Ljava/lang/String; = "/voicepad/activitylog"

.field private static final PATH_ANSWERS:Ljava/lang/String; = "/localsearch/content"

.field private static final PATH_CANCEL:Ljava/lang/String; = "/voicepad/srcancel"

.field private static final PATH_EVENT_LOG:Ljava/lang/String; = "/eventlog/log"

.field private static final PATH_GENERIC_LOCALSEARCH:Ljava/lang/String; = "/m?cx=partner-pub-5324388728707269:o6qccq-17aj&"

.field private static final PATH_HELLO:Ljava/lang/String; = "/voicepad/hello"

.field private static final PATH_LMTT:Ljava/lang/String; = "/voicepad/lmtt"

.field private static final PATH_LOCALSEARCH:Ljava/lang/String; = "/localsearch/localsearch"

.field private static final PATH_SR:Ljava/lang/String; = "/voicepad/sr"

.field private static final PATH_STATS:Ljava/lang/String; = "/voicepad/stats"

.field private static final PATH_SUGGEST:Ljava/lang/String; = "/voicepad/suggest"

.field private static final PATH_TAF:Ljava/lang/String; = "/voicepad/tellafriend"

.field private static s_EventLogServer:Ljava/lang/String;

.field private static s_GenericLocalSearchServer:Ljava/lang/String;

.field private static s_GenericLocalSearchURL:Lcom/vlingo/client/core/http/URL;

.field private static s_LMTTURL:Lcom/vlingo/client/core/http/URL;

.field private static s_LocalSearchServer:Ljava/lang/String;

.field private static s_Server:Ljava/lang/String;

.field private static s_SuggestServer:Ljava/lang/String;

.field private static s_answersURL:Lcom/vlingo/client/core/http/URL;

.field private static s_cancelURL:Lcom/vlingo/client/core/http/URL;

.field private static s_eventLoggingURL:Lcom/vlingo/client/core/http/URL;

.field private static s_helloURL:Lcom/vlingo/client/core/http/URL;

.field private static s_localSearchURL:Lcom/vlingo/client/core/http/URL;

.field private static s_srURL:Lcom/vlingo/client/core/http/URL;

.field private static s_statsURL:Lcom/vlingo/client/core/http/URL;

.field private static s_suggestionURL:Lcom/vlingo/client/core/http/URL;

.field private static s_tafURL:Lcom/vlingo/client/core/http/URL;

.field private static s_userLoggingURL:Lcom/vlingo/client/core/http/URL;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x50

    .line 30
    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_Server:Ljava/lang/String;

    .line 31
    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_SuggestServer:Ljava/lang/String;

    .line 32
    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_LocalSearchServer:Ljava/lang/String;

    .line 33
    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_EventLogServer:Ljava/lang/String;

    .line 34
    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_GenericLocalSearchServer:Ljava/lang/String;

    .line 55
    const-string v0, "SERVER_NAME"

    const-string v1, "samsungvuiasr.vlingo.com"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_Server:Ljava/lang/String;

    .line 56
    const-string v0, "SUGGEST_HOST_NAME"

    const-string v1, "samsungvuisuggest.vlingo.com"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_SuggestServer:Ljava/lang/String;

    .line 57
    const-string v0, "LOCALSEARCH_HOST_NAME"

    const-string v1, "samsungvuilocalsearch.vlingo.com"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_LocalSearchServer:Ljava/lang/String;

    .line 58
    const-string v0, "GENERIC_LOCALSEARCH_HOST_NAME"

    const-string v1, "www.google.com"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_GenericLocalSearchServer:Ljava/lang/String;

    .line 59
    const-string v0, "EVENTLOG_HOST_NAME"

    const-string v1, "samsungvuieventlog.vlingo.com"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_EventLogServer:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_Server:Ljava/lang/String;

    const-string v2, "/voicepad/sr"

    invoke-direct {v0, v1, v3, v2}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_srURL:Lcom/vlingo/client/core/http/URL;

    .line 63
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_Server:Ljava/lang/String;

    const-string v2, "/voicepad/srcancel"

    invoke-direct {v0, v1, v3, v2}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_cancelURL:Lcom/vlingo/client/core/http/URL;

    .line 64
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_Server:Ljava/lang/String;

    const-string v2, "/voicepad/stats"

    invoke-direct {v0, v1, v3, v2}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_statsURL:Lcom/vlingo/client/core/http/URL;

    .line 65
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_Server:Ljava/lang/String;

    const-string v2, "/voicepad/lmtt"

    invoke-direct {v0, v1, v3, v2}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_LMTTURL:Lcom/vlingo/client/core/http/URL;

    .line 66
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_Server:Ljava/lang/String;

    const-string v2, "/voicepad/activitylog"

    invoke-direct {v0, v1, v3, v2}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_userLoggingURL:Lcom/vlingo/client/core/http/URL;

    .line 67
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_Server:Ljava/lang/String;

    const-string v2, "/voicepad/hello"

    invoke-direct {v0, v1, v3, v2}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_helloURL:Lcom/vlingo/client/core/http/URL;

    .line 68
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_Server:Ljava/lang/String;

    const-string v2, "/voicepad/tellafriend"

    invoke-direct {v0, v1, v3, v2}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_tafURL:Lcom/vlingo/client/core/http/URL;

    .line 70
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_SuggestServer:Ljava/lang/String;

    const-string v2, "/voicepad/suggest"

    invoke-direct {v0, v1, v3, v2}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_suggestionURL:Lcom/vlingo/client/core/http/URL;

    .line 72
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_LocalSearchServer:Ljava/lang/String;

    const-string v2, "/localsearch/localsearch"

    invoke-direct {v0, v1, v3, v2}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_localSearchURL:Lcom/vlingo/client/core/http/URL;

    .line 73
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_GenericLocalSearchServer:Ljava/lang/String;

    const-string v2, "/m?cx=partner-pub-5324388728707269:o6qccq-17aj&"

    invoke-direct {v0, v1, v3, v2}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_GenericLocalSearchURL:Lcom/vlingo/client/core/http/URL;

    .line 74
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_LocalSearchServer:Ljava/lang/String;

    const-string v2, "/localsearch/content"

    invoke-direct {v0, v1, v3, v2}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_answersURL:Lcom/vlingo/client/core/http/URL;

    .line 76
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_EventLogServer:Ljava/lang/String;

    const-string v2, "/eventlog/log"

    invoke-direct {v0, v1, v3, v2}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_eventLoggingURL:Lcom/vlingo/client/core/http/URL;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnswersURL()Lcom/vlingo/client/core/http/URL;
    .registers 1

    .prologue
    .line 123
    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_answersURL:Lcom/vlingo/client/core/http/URL;

    return-object v0
.end method

.method public static getEventLogServerName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 175
    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_EventLogServer:Ljava/lang/String;

    return-object v0
.end method

.method public static getEventLoggingURL()Lcom/vlingo/client/core/http/URL;
    .registers 1

    .prologue
    .line 119
    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_eventLoggingURL:Lcom/vlingo/client/core/http/URL;

    return-object v0
.end method

.method public static getGenericLocalSearchURL()Lcom/vlingo/client/core/http/URL;
    .registers 1

    .prologue
    .line 107
    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_GenericLocalSearchURL:Lcom/vlingo/client/core/http/URL;

    return-object v0
.end method

.method public static getHelloURL()Lcom/vlingo/client/core/http/URL;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_helloURL:Lcom/vlingo/client/core/http/URL;

    return-object v0
.end method

.method public static getLMTTURL()Lcom/vlingo/client/core/http/URL;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_LMTTURL:Lcom/vlingo/client/core/http/URL;

    return-object v0
.end method

.method public static getLocalSearchServerName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 171
    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_LocalSearchServer:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocalSearchURL()Lcom/vlingo/client/core/http/URL;
    .registers 1

    .prologue
    .line 103
    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_localSearchURL:Lcom/vlingo/client/core/http/URL;

    return-object v0
.end method

.method public static getServerName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 163
    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_Server:Ljava/lang/String;

    return-object v0
.end method

.method public static getSuggestServerName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 167
    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_SuggestServer:Ljava/lang/String;

    return-object v0
.end method

.method public static getSuggestURL()Lcom/vlingo/client/core/http/URL;
    .registers 1

    .prologue
    .line 111
    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_suggestionURL:Lcom/vlingo/client/core/http/URL;

    return-object v0
.end method

.method public static getTAFURL()Lcom/vlingo/client/core/http/URL;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_tafURL:Lcom/vlingo/client/core/http/URL;

    return-object v0
.end method

.method public static getUserLoggingURL()Lcom/vlingo/client/core/http/URL;
    .registers 1

    .prologue
    .line 115
    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_userLoggingURL:Lcom/vlingo/client/core/http/URL;

    return-object v0
.end method

.method public static setEventLogServerName(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 135
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 136
    :cond_8
    const-string p0, "samsungvuieventlog.vlingo.com"

    .line 137
    :cond_a
    sput-object p0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_EventLogServer:Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_EventLogServer:Ljava/lang/String;

    const/16 v2, 0x50

    const-string v3, "/eventlog/log"

    invoke-direct {v0, v1, v2, v3}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_eventLoggingURL:Lcom/vlingo/client/core/http/URL;

    .line 139
    return-void
.end method

.method public static setLocalSearchServerName(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    const/16 v3, 0x50

    .line 127
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 128
    :cond_a
    const-string p0, "samsungvuilocalsearch.vlingo.com"

    .line 129
    :cond_c
    sput-object p0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_LocalSearchServer:Ljava/lang/String;

    .line 130
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_LocalSearchServer:Ljava/lang/String;

    const-string v2, "/localsearch/localsearch"

    invoke-direct {v0, v1, v3, v2}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_localSearchURL:Lcom/vlingo/client/core/http/URL;

    .line 131
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_LocalSearchServer:Ljava/lang/String;

    const-string v2, "/localsearch/content"

    invoke-direct {v0, v1, v3, v2}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_answersURL:Lcom/vlingo/client/core/http/URL;

    .line 132
    return-void
.end method

.method public static setServerName(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    const/16 v3, 0x50

    .line 149
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 150
    :cond_a
    const-string p0, "samsungvuiasr.vlingo.com"

    .line 151
    :cond_c
    sput-object p0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_Server:Ljava/lang/String;

    .line 153
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_Server:Ljava/lang/String;

    const-string v2, "/voicepad/sr"

    invoke-direct {v0, v1, v3, v2}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_srURL:Lcom/vlingo/client/core/http/URL;

    .line 154
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_Server:Ljava/lang/String;

    const-string v2, "/voicepad/srcancel"

    invoke-direct {v0, v1, v3, v2}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_cancelURL:Lcom/vlingo/client/core/http/URL;

    .line 155
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_Server:Ljava/lang/String;

    const-string v2, "/voicepad/stats"

    invoke-direct {v0, v1, v3, v2}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_statsURL:Lcom/vlingo/client/core/http/URL;

    .line 156
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_Server:Ljava/lang/String;

    const-string v2, "/voicepad/lmtt"

    invoke-direct {v0, v1, v3, v2}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_LMTTURL:Lcom/vlingo/client/core/http/URL;

    .line 157
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_Server:Ljava/lang/String;

    const-string v2, "/voicepad/activitylog"

    invoke-direct {v0, v1, v3, v2}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_userLoggingURL:Lcom/vlingo/client/core/http/URL;

    .line 158
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_Server:Ljava/lang/String;

    const-string v2, "/voicepad/hello"

    invoke-direct {v0, v1, v3, v2}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_helloURL:Lcom/vlingo/client/core/http/URL;

    .line 159
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_Server:Ljava/lang/String;

    const-string v2, "/voicepad/tellafriend"

    invoke-direct {v0, v1, v3, v2}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_tafURL:Lcom/vlingo/client/core/http/URL;

    .line 160
    return-void
.end method

.method public static setSuggestServerName(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 142
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 143
    :cond_8
    const-string p0, "samsungvuisuggest.vlingo.com"

    .line 144
    :cond_a
    sput-object p0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_SuggestServer:Ljava/lang/String;

    .line 145
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    sget-object v1, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_SuggestServer:Ljava/lang/String;

    const/16 v2, 0x50

    const-string v3, "/voicepad/suggest"

    invoke-direct {v0, v1, v2, v3}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_suggestionURL:Lcom/vlingo/client/core/http/URL;

    .line 146
    return-void
.end method


# virtual methods
.method public getASRCancelURL()Lcom/vlingo/client/core/http/URL;
    .registers 2

    .prologue
    .line 83
    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_cancelURL:Lcom/vlingo/client/core/http/URL;

    return-object v0
.end method

.method public getASRURL()Lcom/vlingo/client/core/http/URL;
    .registers 2

    .prologue
    .line 87
    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_srURL:Lcom/vlingo/client/core/http/URL;

    return-object v0
.end method

.method public getStatsURL()Lcom/vlingo/client/core/http/URL;
    .registers 2

    .prologue
    .line 91
    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->s_statsURL:Lcom/vlingo/client/core/http/URL;

    return-object v0
.end method
