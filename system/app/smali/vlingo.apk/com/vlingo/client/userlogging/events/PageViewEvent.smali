.class public Lcom/vlingo/client/userlogging/events/PageViewEvent;
.super Lcom/vlingo/client/userlogging/events/Event;
.source "PageViewEvent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "pageId"

    .prologue
    .line 18
    const-string v0, "user-activity"

    const-string v1, "landing-page-viewed"

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/userlogging/events/Event;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<page id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/userlogging/events/PageViewEvent;->setPayload(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static logPageViewEvent(Ljava/lang/String;)V
    .registers 3
    .parameter "pageId"

    .prologue
    .line 14
    invoke-static {}, Lcom/vlingo/client/userlogging/EventLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/EventLoggingEngine;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/userlogging/events/PageViewEvent;

    invoke-direct {v1, p0}, Lcom/vlingo/client/userlogging/events/PageViewEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/userlogging/EventLoggingEngine;->logEvent(Lcom/vlingo/client/userlogging/events/Event;)V

    .line 15
    return-void
.end method
