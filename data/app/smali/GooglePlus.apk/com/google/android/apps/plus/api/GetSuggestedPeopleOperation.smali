.class public Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;
.super Lcom/google/android/apps/plus/api/ContactsOperation;
.source "GetSuggestedPeopleOperation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 37
    const-string v2, "POST"

    invoke-static {v5}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->createContactsRequestUrl(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/ContactsOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected createPostData()Lorg/apache/http/HttpEntity;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->appendIntegrationParameters(Ljava/lang/StringBuilder;)V

    .line 48
    const-string v1, "&query=ps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    new-instance v1, Lcom/google/android/apps/plus/network/StreamBuilder;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/network/StreamBuilder;-><init>(Ljava/lang/StringBuilder;)V

    return-object v1
.end method

.method public bridge synthetic onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/api/ContactsOperation;->onHttpCookie(Lorg/apache/http/cookie/Cookie;)V

    return-void
.end method

.method protected onHttpHandleContentFromStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 8
    .parameter "inputStream"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v0

    .line 61
    .local v0, response:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->onStartResultProcessing()V

    .line 63
    sget-object v1, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->CELEBRITY:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    .line 64
    .local v1, type:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->hasSuggestionType()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->getSuggestionType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->hasType()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 65
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->getSuggestionType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->getType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    move-result-object v1

    .line 67
    :cond_21
    iget-object v2, p0, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->getSuggestionList()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertSuggestedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;)V

    .line 69
    return-void
.end method
