.class Lcom/vlingo/client/core/vlservice/response/VLResponseParser$XmlHandlerImpl;
.super Ljava/lang/Object;
.source "VLResponseParser.java"

# interfaces
.implements Lcom/vlingo/client/core/xml/XmlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/vlservice/response/VLResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XmlHandlerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;


# direct methods
.method constructor <init>(Lcom/vlingo/client/core/vlservice/response/VLResponseParser;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser$XmlHandlerImpl;->this$0:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginDocument()V
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser$XmlHandlerImpl;->this$0:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    iget-object v0, v0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->currentParser:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;

    if-eqz v0, :cond_d

    .line 143
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser$XmlHandlerImpl;->this$0:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    iget-object v0, v0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->currentParser:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;

    invoke-interface {v0}, Lcom/vlingo/client/core/xml/XmlHandler;->beginDocument()V

    .line 145
    :cond_d
    return-void
.end method

.method public beginElement(ILcom/vlingo/client/core/xml/XmlAttributes;[CI)V
    .registers 7
    .parameter "elementType"
    .parameter "attributes"
    .parameter "cData"
    .parameter "elementEndPosition"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser$XmlHandlerImpl;->this$0:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    iget-object v0, v0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->currentParser:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;

    if-nez v0, :cond_10

    .line 127
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser$XmlHandlerImpl;->this$0:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    iget-object v1, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser$XmlHandlerImpl;->this$0:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    #calls: Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->getParserForElement(I)Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;
    invoke-static {v1, p1}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->access$000(Lcom/vlingo/client/core/vlservice/response/VLResponseParser;I)Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->currentParser:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;

    .line 129
    :cond_10
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser$XmlHandlerImpl;->this$0:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    iget-object v0, v0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->currentParser:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;

    if-eqz v0, :cond_1d

    .line 131
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser$XmlHandlerImpl;->this$0:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    iget-object v0, v0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->currentParser:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/vlingo/client/core/xml/XmlHandler;->beginElement(ILcom/vlingo/client/core/xml/XmlAttributes;[CI)V

    .line 133
    :cond_1d
    return-void
.end method

.method public characters([C)V
    .registers 3
    .parameter "cData"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser$XmlHandlerImpl;->this$0:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    iget-object v0, v0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->currentParser:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;

    if-eqz v0, :cond_d

    .line 155
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser$XmlHandlerImpl;->this$0:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    iget-object v0, v0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->currentParser:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/xml/XmlHandler;->characters([C)V

    .line 157
    :cond_d
    return-void
.end method

.method public endDocument()V
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser$XmlHandlerImpl;->this$0:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    iget-object v0, v0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->currentParser:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;

    if-eqz v0, :cond_d

    .line 149
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser$XmlHandlerImpl;->this$0:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    iget-object v0, v0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->currentParser:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;

    invoke-interface {v0}, Lcom/vlingo/client/core/xml/XmlHandler;->endDocument()V

    .line 151
    :cond_d
    return-void
.end method

.method public endElement(II)V
    .registers 4
    .parameter "elementType"
    .parameter "elementStartPosition"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser$XmlHandlerImpl;->this$0:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    iget-object v0, v0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->currentParser:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;

    if-eqz v0, :cond_d

    .line 137
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser$XmlHandlerImpl;->this$0:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    iget-object v0, v0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->currentParser:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;

    invoke-interface {v0, p1, p2}, Lcom/vlingo/client/core/xml/XmlHandler;->endElement(II)V

    .line 139
    :cond_d
    return-void
.end method
