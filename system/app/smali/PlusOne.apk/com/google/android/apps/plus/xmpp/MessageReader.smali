.class public Lcom/google/android/apps/plus/xmpp/MessageReader;
.super Ljava/lang/Object;
.source "MessageReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/xmpp/MessageReader$Event;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAuthenticationRequired:Z

.field private mBindAvailable:Z

.field private mEventData:Ljava/lang/String;

.field private final mInputStream:Lcom/google/android/apps/plus/xmpp/LogInputStream;

.field private final mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mTlsRequired:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-string v0, "MessageReader"

    sput-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 7
    .parameter "stream"
    .parameter "inDebugMode"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 48
    if-eqz p2, :cond_1f

    .line 49
    new-instance v1, Lcom/google/android/apps/plus/xmpp/LogInputStream;

    invoke-direct {v1, p1}, Lcom/google/android/apps/plus/xmpp/LogInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mInputStream:Lcom/google/android/apps/plus/xmpp/LogInputStream;

    .line 50
    iget-object v1, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v2, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mInputStream:Lcom/google/android/apps/plus/xmpp/LogInputStream;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 58
    :goto_1e
    return-void

    .line 52
    :cond_1f
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mInputStream:Lcom/google/android/apps/plus/xmpp/LogInputStream;

    .line 53
    iget-object v1, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_28
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_28} :catch_29

    goto :goto_1e

    .line 55
    :catch_29
    move-exception v0

    .line 56
    .local v0, exception:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create XML parser"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private onEndTag(Ljava/lang/String;)Lcom/google/android/apps/plus/xmpp/MessageReader$Event;
    .registers 5
    .parameter "name"

    .prologue
    const/4 v2, 0x4

    .line 149
    const-string v0, "push:data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 150
    invoke-direct {p0}, Lcom/google/android/apps/plus/xmpp/MessageReader;->updateEventData()V

    .line 151
    sget-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->DATA_RECEIVED:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    .line 184
    :goto_e
    return-object v0

    .line 154
    :cond_f
    const-string v0, "stream:features"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 155
    sget-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 156
    sget-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader;->TAG:Ljava/lang/String;

    const-string v1, "Processing stream features"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_26
    iget-boolean v0, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mTlsRequired:Z

    if-eqz v0, :cond_3c

    .line 159
    sget-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 160
    sget-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader;->TAG:Ljava/lang/String;

    const-string v1, "TLS required"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_39
    sget-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->TLS_REQUIRED:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    goto :goto_e

    .line 164
    :cond_3c
    iget-boolean v0, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mAuthenticationRequired:Z

    if-eqz v0, :cond_52

    .line 165
    sget-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 166
    sget-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader;->TAG:Ljava/lang/String;

    const-string v1, "Authentication required"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_4f
    sget-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->AUTHENTICATION_REQUIRED:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    goto :goto_e

    .line 170
    :cond_52
    iget-boolean v0, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mBindAvailable:Z

    if-eqz v0, :cond_68

    .line 171
    sget-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 172
    sget-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader;->TAG:Ljava/lang/String;

    const-string v1, "Stream is ready"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_65
    sget-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->STREAM_READY:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    goto :goto_e

    .line 176
    :cond_68
    sget-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->UNEXPECTED_FEATURES:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    goto :goto_e

    .line 179
    :cond_6b
    const-string v0, "jid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 180
    invoke-direct {p0}, Lcom/google/android/apps/plus/xmpp/MessageReader;->updateEventData()V

    .line 181
    sget-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->JID_AVAILABLE:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    goto :goto_e

    .line 184
    :cond_79
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private onStartTag(Ljava/lang/String;)Lcom/google/android/apps/plus/xmpp/MessageReader$Event;
    .registers 6
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    const-string v1, "push:data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "jid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 108
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 111
    :cond_1a
    const-string v1, "stream"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 145
    :cond_22
    :goto_22
    return-object v0

    .line 115
    :cond_23
    const-string v1, "starttls"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 116
    iput-boolean v3, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mTlsRequired:Z

    .line 119
    :cond_2d
    const-string v1, "stream:features"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 120
    iput-boolean v2, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mTlsRequired:Z

    .line 121
    iput-boolean v2, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mAuthenticationRequired:Z

    .line 122
    iput-boolean v2, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mBindAvailable:Z

    .line 125
    :cond_3b
    const-string v1, "bind"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 126
    iput-boolean v3, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mBindAvailable:Z

    .line 129
    :cond_45
    const-string v1, "mechanisms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 130
    iput-boolean v3, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mAuthenticationRequired:Z

    .line 133
    :cond_4f
    const-string v1, "proceed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 134
    sget-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->PROCEED_WITH_TLS:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    goto :goto_22

    .line 137
    :cond_5a
    const-string v1, "success"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 138
    sget-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->AUTHENTICATION_SUCCEEDED:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    goto :goto_22

    .line 141
    :cond_65
    const-string v1, "failure"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 142
    sget-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->AUTHENTICATION_FAILED:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    goto :goto_22
.end method

.method private updateEventData()V
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mEventData:Ljava/lang/String;

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 190
    return-void
.end method


# virtual methods
.method public getEventData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mEventData:Ljava/lang/String;

    return-object v0
.end method

.method public read()Lcom/google/android/apps/plus/xmpp/MessageReader$Event;
    .registers 8

    .prologue
    const/4 v6, 0x5

    .line 70
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_88

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, event:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;
    iget-object v4, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 73
    .local v3, parserEvent:I
    packed-switch v3, :pswitch_data_8c

    .line 87
    :cond_14
    :goto_14
    if-eqz v0, :cond_1

    .line 102
    .end local v0           #event:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;
    .end local v3           #parserEvent:I
    :goto_16
    return-object v0

    .line 75
    .restart local v0       #event:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;
    .restart local v3       #parserEvent:I
    :pswitch_17
    iget-object v4, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/xmpp/MessageReader;->onStartTag(Ljava/lang/String;)Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    move-result-object v0

    .line 76
    goto :goto_14

    .line 78
    :pswitch_22
    iget-object v4, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/xmpp/MessageReader;->onEndTag(Ljava/lang/String;)Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    move-result-object v0

    .line 79
    goto :goto_14

    .line 81
    :pswitch_2d
    iget-object v4, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mStringBuilder:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_14

    .line 82
    iget-object v4, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_3d

    goto :goto_14

    .line 92
    .end local v0           #event:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;
    .end local v3           #parserEvent:I
    :catch_3d
    move-exception v1

    .line 93
    .local v1, exception:Ljava/lang/Exception;
    sget-object v4, Lcom/google/android/apps/plus/xmpp/MessageReader;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 94
    sget-object v4, Lcom/google/android/apps/plus/xmpp/MessageReader;->TAG:Ljava/lang/String;

    const-string v5, "XML parser exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :cond_4d
    iget-object v4, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mInputStream:Lcom/google/android/apps/plus/xmpp/LogInputStream;

    if-eqz v4, :cond_85

    .line 97
    iget-object v4, p0, Lcom/google/android/apps/plus/xmpp/MessageReader;->mInputStream:Lcom/google/android/apps/plus/xmpp/LogInputStream;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/xmpp/LogInputStream;->getLog()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, log:Ljava/lang/String;
    sget-object v4, Lcom/google/android/apps/plus/xmpp/MessageReader;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 99
    sget-object v4, Lcom/google/android/apps/plus/xmpp/MessageReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XML Data ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v2           #log:Ljava/lang/String;
    :cond_85
    sget-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->END_OF_STREAM:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    goto :goto_16

    .line 91
    .end local v1           #exception:Ljava/lang/Exception;
    :cond_88
    :try_start_88
    sget-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->END_OF_STREAM:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8a} :catch_3d

    goto :goto_16

    .line 73
    nop

    :pswitch_data_8c
    .packed-switch 0x2
        :pswitch_17
        :pswitch_22
        :pswitch_2d
    .end packed-switch
.end method
