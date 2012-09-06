.class public abstract Lcom/android/email/mail/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findSender(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/Sender;
    .registers 11
    .parameter "context"
    .parameter "resourceId"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v2, 0x0

    .line 75
    .local v2, sender:Lcom/android/email/mail/Sender;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 77
    .local v3, xml:Landroid/content/res/XmlResourceParser;
    invoke-virtual {p2, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    .line 79
    .local v1, sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    :cond_d
    :goto_d
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .local v4, xmlEventType:I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_43

    .line 80
    const/4 v6, 0x2

    if-ne v4, v6, :cond_d

    const-string v6, "sender"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 82
    const/4 v6, 0x0

    const-string v7, "scheme"

    invoke-interface {v3, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, xmlScheme:Ljava/lang/String;
    iget-object v6, v1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    if-eqz v6, :cond_d

    iget-object v6, v1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 86
    const/4 v6, 0x0

    const-string v7, "class"

    invoke-interface {v3, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, className:Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lcom/android/email/mail/Sender;->instantiateSender(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/Sender;
    :try_end_40
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_40} :catch_44
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_40} :catch_42

    move-result-object v2

    goto :goto_d

    .line 93
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v3           #xml:Landroid/content/res/XmlResourceParser;
    .end local v4           #xmlEventType:I
    .end local v5           #xmlScheme:Ljava/lang/String;
    :catch_42
    move-exception v6

    .line 96
    :cond_43
    :goto_43
    return-object v2

    .line 91
    :catch_44
    move-exception v6

    goto :goto_43
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/Sender;
    .registers 8
    .parameter "context"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 110
    const-class v3, Lcom/android/email/mail/Sender;

    monitor-enter v3

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 111
    .local v0, appContext:Landroid/content/Context;
    const v2, 0x7f05000c

    invoke-static {v0, v2, p1}, Lcom/android/email/mail/Sender;->findSender(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/Sender;

    move-result-object v1

    .line 112
    .local v1, sender:Lcom/android/email/mail/Sender;
    if-nez v1, :cond_17

    .line 113
    const v2, 0x7f05000b

    invoke-static {v0, v2, p1}, Lcom/android/email/mail/Sender;->findSender(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/Sender;

    move-result-object v1

    .line 115
    :cond_17
    if-nez v1, :cond_37

    .line 116
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find sender for account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_34

    .line 110
    .end local v0           #appContext:Landroid/content/Context;
    .end local v1           #sender:Lcom/android/email/mail/Sender;
    :catchall_34
    move-exception v2

    monitor-exit v3

    throw v2

    .line 118
    .restart local v0       #appContext:Landroid/content/Context;
    .restart local v1       #sender:Lcom/android/email/mail/Sender;
    :cond_37
    monitor-exit v3

    return-object v1
.end method

.method private static instantiateSender(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/Sender;
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 48
    .line 50
    :try_start_3
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 52
    const-string v1, "newInstance"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/android/emailcommon/provider/Account;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 54
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_51

    move-result-object v0

    .line 61
    instance-of v1, v0, Lcom/android/email/mail/Sender;

    if-nez v1, :cond_87

    .line 62
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " create incompatible object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :catch_51
    move-exception v0

    .line 56
    const-string v1, "Email"

    const-string v2, "exception %s invoking method %s#newInstance(Account, Context) for %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    aput-object p1, v3, v6

    iget-object v0, p2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not instantiate Sender for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_87
    check-cast v0, Lcom/android/email/mail/Sender;

    return-object v0
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public getSettingActivityClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    const-class v0, Lcom/android/email/activity/setup/AccountSetupOutgoing;

    return-object v0
.end method

.method public abstract open()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract sendMessage(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method
