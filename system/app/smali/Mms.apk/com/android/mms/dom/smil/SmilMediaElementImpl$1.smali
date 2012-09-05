.class Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;
.super Lcom/android/mms/dom/smil/ElementTimeImpl;
.source "SmilMediaElementImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/dom/smil/SmilMediaElementImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilMediaElementImpl;Lorg/w3c/dom/smil/SMILElement;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-direct {p0, p2}, Lcom/android/mms/dom/smil/ElementTimeImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    return-void
.end method

.method private createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;
    .registers 6
    .parameter "eventType"

    .prologue
    const/4 v3, 0x0

    .line 48
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v2}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    .line 49
    .local v0, doc:Lorg/w3c/dom/events/DocumentEvent;
    const-string v2, "Event"

    invoke-interface {v0, v2}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v1

    .line 50
    .local v1, event:Lorg/w3c/dom/events/Event;
    invoke-interface {v1, p1, v3, v3}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZ)V

    .line 57
    return-object v1
.end method

.method private createEvent(Ljava/lang/String;I)Lorg/w3c/dom/events/Event;
    .registers 7
    .parameter "eventType"
    .parameter "seekTo"

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v2}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    .line 62
    .local v0, doc:Lorg/w3c/dom/events/DocumentEvent;
    const-string v2, "Event"

    invoke-interface {v0, v2}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v1

    check-cast v1, Lcom/android/mms/dom/events/EventImpl;

    .line 63
    .local v1, event:Lcom/android/mms/dom/events/EventImpl;
    invoke-virtual {v1, p1, v3, v3, p2}, Lcom/android/mms/dom/events/EventImpl;->initEvent(Ljava/lang/String;ZZI)V

    .line 70
    return-object v1
.end method


# virtual methods
.method public beginElement()Z
    .registers 3

    .prologue
    .line 74
    const-string v1, "SmilMediaStart"

    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 75
    .local v0, startEvent:Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 76
    const/4 v1, 0x1

    return v1
.end method

.method public endElement()Z
    .registers 3

    .prologue
    .line 80
    const-string v1, "SmilMediaEnd"

    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 81
    .local v0, endEvent:Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 82
    const/4 v1, 0x1

    return v1
.end method

.method public getDur()F
    .registers 5

    .prologue
    .line 102
    invoke-super {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getDur()F

    move-result v0

    .line 103
    .local v0, dur:F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_21

    .line 105
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v2}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, tag:Ljava/lang/String;
    const-string v2, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "audio"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 109
    :cond_1f
    const/high16 v0, -0x4080

    .line 117
    .end local v1           #tag:Ljava/lang/String;
    :cond_21
    :goto_21
    return v0

    .line 110
    .restart local v1       #tag:Ljava/lang/String;
    :cond_22
    const-string v2, "text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "img"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 112
    :cond_32
    const/4 v0, 0x0

    goto :goto_21

    .line 114
    :cond_34
    const-string v2, "Mms:smil"

    const-string v3, "Unknown media type"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method getParentElementTime()Lorg/w3c/dom/smil/ElementTime;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILElement;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilParElementImpl;

    iget-object v0, v0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    return-object v0
.end method

.method public pauseElement()V
    .registers 3

    .prologue
    .line 91
    const-string v1, "SmilMediaPause"

    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 92
    .local v0, pauseEvent:Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 93
    return-void
.end method

.method public resumeElement()V
    .registers 3

    .prologue
    .line 86
    const-string v1, "SmilMediaStart"

    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 87
    .local v0, resumeEvent:Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 88
    return-void
.end method

.method public seekElement(F)V
    .registers 5
    .parameter "seekTo"

    .prologue
    .line 96
    const-string v1, "SmilMediaSeek"

    float-to-int v2, p1

    invoke-direct {p0, v1, v2}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;I)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 97
    .local v0, seekEvent:Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 98
    return-void
.end method
