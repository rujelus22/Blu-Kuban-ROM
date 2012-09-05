.class public abstract Lcom/google/wireless/gdata2/client/QueryParams;
.super Ljava/lang/Object;
.source "QueryParams.java"


# instance fields
.field private entryId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method


# virtual methods
.method public abstract generateQueryUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getEntryId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/wireless/gdata2/client/QueryParams;->entryId:Ljava/lang/String;

    return-object v0
.end method

.method public setMaxResults(I)V
    .registers 4
    .parameter "maxResults"

    .prologue
    .line 204
    const-string v0, "max-results"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public abstract setParamValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setStartIndex(I)V
    .registers 4
    .parameter "startIndex"

    .prologue
    .line 260
    const-string v0, "start-index"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public setUpdatedMin(Ljava/lang/String;)V
    .registers 3
    .parameter "updatedMin"

    .prologue
    .line 288
    const-string v0, "updated-min"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method
