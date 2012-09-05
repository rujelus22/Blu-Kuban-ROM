.class public Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;
.super Lcom/vlingo/client/userlogging/events/Event;
.source "SuggestionPickedEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;
    }
.end annotation


# instance fields
.field private actionBlob:Ljava/lang/String;

.field private pickMethod:Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;

.field private rank:I

.field private textCompletion:Ljava/lang/String;

.field private textTyped:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 36
    const-string v0, "user-activity"

    const-string v1, "suggestion-picked"

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/userlogging/events/Event;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->rank:I

    .line 31
    sget-object v0, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;->None:Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;

    iput-object v0, p0, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->pickMethod:Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;

    .line 37
    return-void
.end method

.method public static logSuggestionPicked(Ljava/lang/String;Ljava/lang/String;ILcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;Ljava/lang/String;)V
    .registers 7
    .parameter "typedText"
    .parameter "completionText"
    .parameter "rank"
    .parameter "method"
    .parameter "actionBlob"

    .prologue
    .line 14
    new-instance v0, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;

    invoke-direct {v0}, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;-><init>()V

    .line 15
    .local v0, e:Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;
    invoke-virtual {v0, p0, p1}, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p4}, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->setActionBlob(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p3}, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->setPickMethod(Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;)V

    .line 18
    invoke-virtual {v0, p2}, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->setRank(I)V

    .line 19
    invoke-static {}, Lcom/vlingo/client/userlogging/EventLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/EventLoggingEngine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vlingo/client/userlogging/EventLoggingEngine;->logEvent(Lcom/vlingo/client/userlogging/events/Event;)V

    .line 20
    return-void
.end method


# virtual methods
.method public generatePayloadXML(Ljava/lang/StringBuffer;)V
    .registers 4
    .parameter "sb"

    .prologue
    .line 57
    const-string v0, "<suggestion typed=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    iget-object v0, p0, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->textTyped:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vlingo/client/core/util/XmlUtils;->xmlEncode(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 59
    const-string v0, "\" completion=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    iget-object v0, p0, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->textCompletion:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vlingo/client/core/util/XmlUtils;->xmlEncode(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 61
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    iget v0, p0, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->rank:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2d

    .line 63
    const-string v0, " rank=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    iget v0, p0, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->rank:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 65
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :cond_2d
    iget-object v0, p0, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->pickMethod:Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;

    sget-object v1, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;->None:Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;

    if-eq v0, v1, :cond_46

    .line 68
    const-string v0, " pick-method=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    iget-object v0, p0, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->pickMethod:Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;

    invoke-virtual {v0}, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    :cond_46
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    iget-object v0, p0, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->actionBlob:Ljava/lang/String;

    if-eqz v0, :cond_54

    .line 76
    iget-object v0, p0, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->actionBlob:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vlingo/client/core/util/XmlUtils;->xmlEncode(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 79
    :cond_54
    const-string v0, "</suggestion>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    return-void
.end method

.method public setActionBlob(Ljava/lang/String;)V
    .registers 2
    .parameter "actionBlob"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->actionBlob:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setPickMethod(Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;)V
    .registers 2
    .parameter "method"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->pickMethod:Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;

    .line 50
    return-void
.end method

.method public setRank(I)V
    .registers 2
    .parameter "rank"

    .prologue
    .line 45
    iput p1, p0, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->rank:I

    .line 46
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "typed"
    .parameter "completion"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->textTyped:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->textCompletion:Ljava/lang/String;

    .line 42
    return-void
.end method
