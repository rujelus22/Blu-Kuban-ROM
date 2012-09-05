.class public Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
.super Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;
.source "SRRecognitionResponse.java"


# instance fields
.field private guttid:Ljava/lang/String;

.field private results:Lcom/vlingo/client/core/recognizer/results/TaggedResults;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->results:Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    .line 26
    return-void
.end method


# virtual methods
.method public getGUttId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->guttid:Ljava/lang/String;

    return-object v0
.end method

.method public getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->results:Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    return-object v0
.end method

.method public hasResults()Z
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->results:Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->results:Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public removeShowMessageAction()Lcom/vlingo/client/core/vlservice/response/Action;
    .registers 5

    .prologue
    .line 33
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    if-eqz v2, :cond_21

    .line 34
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-virtual {v2}, Lcom/vlingo/client/core/vlservice/response/ActionList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 35
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-virtual {v2, v1}, Lcom/vlingo/client/core/vlservice/response/ActionList;->elementAt(I)Lcom/vlingo/client/core/vlservice/response/Action;

    move-result-object v0

    .line 36
    .local v0, action:Lcom/vlingo/client/core/vlservice/response/Action;
    const-string v2, "ShowMessage"

    iget-object v3, v0, Lcom/vlingo/client/core/vlservice/response/Action;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 41
    .end local v0           #action:Lcom/vlingo/client/core/vlservice/response/Action;
    .end local v1           #i:I
    :goto_1d
    return-object v0

    .line 34
    .restart local v0       #action:Lcom/vlingo/client/core/vlservice/response/Action;
    .restart local v1       #i:I
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 41
    .end local v0           #action:Lcom/vlingo/client/core/vlservice/response/Action;
    .end local v1           #i:I
    :cond_21
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public setGUttId(Ljava/lang/String;)V
    .registers 2
    .parameter "guttid"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->guttid:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setTaggedResults(Lcom/vlingo/client/core/recognizer/results/TaggedResults;)V
    .registers 2
    .parameter "results"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->results:Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v0, buff:Ljava/lang/StringBuffer;
    invoke-super {p0}, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->results:Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    if-eqz v1, :cond_23

    .line 65
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->results:Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    :goto_19
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 67
    :cond_23
    const-string v1, "<no results>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_19
.end method
