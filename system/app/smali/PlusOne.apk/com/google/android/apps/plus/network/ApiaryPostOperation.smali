.class public Lcom/google/android/apps/plus/network/ApiaryPostOperation;
.super Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation;
.source "ApiaryPostOperation.java"


# instance fields
.field private final mActivity:Lcom/google/android/apps/plus/network/ApiaryActivity;

.field private final mCircles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContent:Ljava/lang/String;

.field private final mExternalId:Ljava/lang/String;

.field private final mImageUri:Landroid/net/Uri;

.field private final mPeople:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpecial:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/network/ApiaryActivity;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .parameter "context"
    .parameter "activity"
    .parameter "content"
    .parameter "imageUri"
    .parameter "externalId"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/network/ApiaryActivity;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p6, circles:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p7, people:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p8, special:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object p2, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mActivity:Lcom/google/android/apps/plus/network/ApiaryActivity;

    .line 66
    iput-object p3, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mContent:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mImageUri:Landroid/net/Uri;

    .line 68
    iput-object p5, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mExternalId:Ljava/lang/String;

    .line 69
    iput-object p6, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mCircles:Ljava/util/List;

    .line 70
    iput-object p7, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mPeople:Ljava/util/List;

    .line 71
    iput-object p8, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mSpecial:Ljava/util/List;

    .line 72
    return-void
.end method

.method private insertExecute(Lcom/google/api/services/plus/Plus$Activities$Insert;Lcom/google/api/services/plus/model/Activity;)V
    .registers 15
    .parameter "insert"
    .parameter "activity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 150
    const-string v0, "people/{userId}/activities"

    .line 151
    .local v0, REST_PATH:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/api/services/plus/Plus$Activities$Insert;->getClient()Lcom/google/api/client/http/json/JsonHttpClient;

    move-result-object v1

    .line 153
    .local v1, client:Lcom/google/api/client/http/json/JsonHttpClient;
    new-instance v6, Lcom/google/api/client/http/GenericUrl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/api/client/http/json/JsonHttpClient;->getBaseUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "people/{userId}/activities"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1, v11}, Lcom/google/api/client/http/UriTemplate;->expand(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 155
    .local v6, url:Lcom/google/api/client/http/GenericUrl;
    invoke-virtual {v1}, Lcom/google/api/client/http/json/JsonHttpClient;->getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v7

    sget-object v8, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v6, v9}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v4

    .line 157
    .local v4, request:Lcom/google/api/client/http/HttpRequest;
    invoke-virtual {v1}, Lcom/google/api/client/http/json/JsonHttpClient;->getJsonHttpParser()Lcom/google/api/client/http/json/JsonHttpParser;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/api/client/http/HttpRequest;->addParser(Lcom/google/api/client/http/HttpParser;)V

    .line 159
    invoke-virtual {v1}, Lcom/google/api/client/http/json/JsonHttpClient;->getApplicationName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4b

    .line 160
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/api/client/http/json/JsonHttpClient;->getApplicationName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)V

    .line 163
    :cond_4b
    if-eqz p2, :cond_5c

    .line 164
    new-instance v7, Lcom/google/api/client/http/json/JsonHttpContent;

    invoke-virtual {v1}, Lcom/google/api/client/http/json/JsonHttpClient;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v8

    invoke-direct {v7, v8, p2}, Lcom/google/api/client/http/json/JsonHttpContent;-><init>(Lcom/google/api/client/json/JsonFactory;Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 165
    invoke-virtual {v4, v10}, Lcom/google/api/client/http/HttpRequest;->setEnableGZipContent(Z)Lcom/google/api/client/http/HttpRequest;

    .line 168
    :cond_5c
    iget-object v7, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mImageUri:Landroid/net/Uri;

    if-eqz v7, :cond_85

    .line 169
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpRequest;->getContent()Lcom/google/api/client/http/HttpContent;

    move-result-object v2

    .line 170
    .local v2, jsonContent:Lcom/google/api/client/http/HttpContent;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 171
    .local v5, stream:Ljava/io/InputStream;
    new-instance v3, Lcom/google/api/client/http/InputStreamContent;

    const-string v7, "image/*"

    invoke-direct {v3, v7, v5}, Lcom/google/api/client/http/InputStreamContent;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 172
    .local v3, moreContent:Lcom/google/api/client/http/HttpContent;
    new-instance v7, Lcom/google/api/client/http/MultipartRelatedContent;

    new-array v8, v11, [Lcom/google/api/client/http/HttpContent;

    aput-object v3, v8, v10

    invoke-direct {v7, v2, v8}, Lcom/google/api/client/http/MultipartRelatedContent;-><init>(Lcom/google/api/client/http/HttpContent;[Lcom/google/api/client/http/HttpContent;)V

    invoke-virtual {v7, v4}, Lcom/google/api/client/http/MultipartRelatedContent;->forRequest(Lcom/google/api/client/http/HttpRequest;)V

    .line 175
    .end local v2           #jsonContent:Lcom/google/api/client/http/HttpContent;
    .end local v3           #moreContent:Lcom/google/api/client/http/HttpContent;
    .end local v5           #stream:Ljava/io/InputStream;
    :cond_85
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    .line 178
    return-void
.end method


# virtual methods
.method public getScope()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    const-string v0, "oauth2:https://www.googleapis.com/auth/plus.stream.write"

    return-object v0
.end method

.method public performApiaryCalls(Lcom/google/api/services/plus/Plus;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V
    .registers 15
    .parameter "plus"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 84
    .local v1, activity:Lcom/google/api/services/plus/model/Activity;
    iget-object v10, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mActivity:Lcom/google/android/apps/plus/network/ApiaryActivity;

    if-eqz v10, :cond_b

    .line 85
    iget-object v10, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mActivity:Lcom/google/android/apps/plus/network/ApiaryActivity;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/network/ApiaryActivity;->getPlusActivity()Lcom/google/api/services/plus/model/Activity;

    move-result-object v1

    .line 88
    :cond_b
    if-nez v1, :cond_1a

    .line 89
    new-instance v1, Lcom/google/api/services/plus/model/Activity;

    .end local v1           #activity:Lcom/google/api/services/plus/model/Activity;
    invoke-direct {v1}, Lcom/google/api/services/plus/model/Activity;-><init>()V

    .line 90
    .restart local v1       #activity:Lcom/google/api/services/plus/model/Activity;
    new-instance v10, Lcom/google/api/services/plus/model/ActivityObject;

    invoke-direct {v10}, Lcom/google/api/services/plus/model/ActivityObject;-><init>()V

    invoke-virtual {v1, v10}, Lcom/google/api/services/plus/model/Activity;->setPlusObject(Lcom/google/api/services/plus/model/ActivityObject;)Lcom/google/api/services/plus/model/Activity;

    .line 93
    :cond_1a
    iget-object v10, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mExternalId:Ljava/lang/String;

    if-eqz v10, :cond_2d

    iget-object v10, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mExternalId:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2d

    .line 94
    iget-object v10, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mExternalId:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/google/api/services/plus/model/Activity;->setCrosspostSource(Ljava/lang/String;)Lcom/google/api/services/plus/model/Activity;

    .line 97
    :cond_2d
    invoke-virtual {v1}, Lcom/google/api/services/plus/model/Activity;->getPlusObject()Lcom/google/api/services/plus/model/ActivityObject;

    move-result-object v8

    .line 99
    .local v8, plusObject:Lcom/google/api/services/plus/model/ActivityObject;
    iget-object v10, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mContent:Ljava/lang/String;

    if-eqz v10, :cond_3a

    .line 100
    iget-object v10, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mContent:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/api/services/plus/model/ActivityObject;->setContent(Ljava/lang/String;)Lcom/google/api/services/plus/model/ActivityObject;

    .line 103
    :cond_3a
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 105
    .local v6, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plus/model/PlusAclentryResource;>;"
    iget-object v10, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mCircles:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_45
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_62

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    .local v2, circle:Ljava/lang/String;
    new-instance v3, Lcom/google/api/services/plus/model/PlusAclentryResource;

    invoke-direct {v3}, Lcom/google/api/services/plus/model/PlusAclentryResource;-><init>()V

    .line 107
    .local v3, entry:Lcom/google/api/services/plus/model/PlusAclentryResource;
    invoke-virtual {v3, v2}, Lcom/google/api/services/plus/model/PlusAclentryResource;->setId(Ljava/lang/String;)Lcom/google/api/services/plus/model/PlusAclentryResource;

    .line 108
    const-string v10, "circle"

    invoke-virtual {v3, v10}, Lcom/google/api/services/plus/model/PlusAclentryResource;->setType(Ljava/lang/String;)Lcom/google/api/services/plus/model/PlusAclentryResource;

    .line 109
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 111
    .end local v2           #circle:Ljava/lang/String;
    .end local v3           #entry:Lcom/google/api/services/plus/model/PlusAclentryResource;
    :cond_62
    iget-object v10, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mPeople:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 112
    .local v7, person:Ljava/lang/String;
    new-instance v3, Lcom/google/api/services/plus/model/PlusAclentryResource;

    invoke-direct {v3}, Lcom/google/api/services/plus/model/PlusAclentryResource;-><init>()V

    .line 113
    .restart local v3       #entry:Lcom/google/api/services/plus/model/PlusAclentryResource;
    invoke-virtual {v3, v7}, Lcom/google/api/services/plus/model/PlusAclentryResource;->setId(Ljava/lang/String;)Lcom/google/api/services/plus/model/PlusAclentryResource;

    .line 114
    const-string v10, "person"

    invoke-virtual {v3, v10}, Lcom/google/api/services/plus/model/PlusAclentryResource;->setType(Ljava/lang/String;)Lcom/google/api/services/plus/model/PlusAclentryResource;

    .line 115
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    .line 117
    .end local v3           #entry:Lcom/google/api/services/plus/model/PlusAclentryResource;
    .end local v7           #person:Ljava/lang/String;
    :cond_85
    iget-object v10, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mSpecial:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8b
    :goto_8b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 118
    .local v9, special:Ljava/lang/String;
    new-instance v3, Lcom/google/api/services/plus/model/PlusAclentryResource;

    invoke-direct {v3}, Lcom/google/api/services/plus/model/PlusAclentryResource;-><init>()V

    .line 119
    .restart local v3       #entry:Lcom/google/api/services/plus/model/PlusAclentryResource;
    const-string v10, "myCircles"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ad

    .line 120
    const-string v10, "myCircles"

    invoke-virtual {v3, v10}, Lcom/google/api/services/plus/model/PlusAclentryResource;->setType(Ljava/lang/String;)Lcom/google/api/services/plus/model/PlusAclentryResource;

    .line 121
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    .line 122
    :cond_ad
    const-string v10, "extendedCircles"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_be

    .line 123
    const-string v10, "extendedCircles"

    invoke-virtual {v3, v10}, Lcom/google/api/services/plus/model/PlusAclentryResource;->setType(Ljava/lang/String;)Lcom/google/api/services/plus/model/PlusAclentryResource;

    .line 124
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    .line 125
    :cond_be
    const-string v10, "domain"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_cf

    .line 126
    const-string v10, "domain"

    invoke-virtual {v3, v10}, Lcom/google/api/services/plus/model/PlusAclentryResource;->setType(Ljava/lang/String;)Lcom/google/api/services/plus/model/PlusAclentryResource;

    .line 127
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    .line 128
    :cond_cf
    const-string v10, "public"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8b

    .line 129
    const-string v10, "public"

    invoke-virtual {v3, v10}, Lcom/google/api/services/plus/model/PlusAclentryResource;->setType(Ljava/lang/String;)Lcom/google/api/services/plus/model/PlusAclentryResource;

    .line 130
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    .line 134
    .end local v3           #entry:Lcom/google/api/services/plus/model/PlusAclentryResource;
    .end local v9           #special:Ljava/lang/String;
    :cond_e0
    new-instance v0, Lcom/google/api/services/plus/model/Acl;

    invoke-direct {v0}, Lcom/google/api/services/plus/model/Acl;-><init>()V

    .line 135
    .local v0, access:Lcom/google/api/services/plus/model/Acl;
    invoke-virtual {v0, v6}, Lcom/google/api/services/plus/model/Acl;->setItems(Ljava/util/List;)Lcom/google/api/services/plus/model/Acl;

    .line 136
    invoke-virtual {v1, v0}, Lcom/google/api/services/plus/model/Activity;->setAccess(Lcom/google/api/services/plus/model/Acl;)Lcom/google/api/services/plus/model/Activity;

    .line 138
    invoke-virtual {p1}, Lcom/google/api/services/plus/Plus;->activities()Lcom/google/api/services/plus/Plus$Activities;

    move-result-object v10

    const-string v11, "me"

    invoke-virtual {v10, v11, v1}, Lcom/google/api/services/plus/Plus$Activities;->insert(Ljava/lang/String;Lcom/google/api/services/plus/model/Activity;)Lcom/google/api/services/plus/Plus$Activities$Insert;

    move-result-object v5

    .line 139
    .local v5, insert:Lcom/google/api/services/plus/Plus$Activities$Insert;
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/google/api/services/plus/Plus$Activities$Insert;->setPreview(Ljava/lang/Boolean;)Lcom/google/api/services/plus/Plus$Activities$Insert;

    .line 143
    invoke-direct {p0, v5, v1}, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->insertExecute(Lcom/google/api/services/plus/Plus$Activities$Insert;Lcom/google/api/services/plus/model/Activity;)V

    .line 144
    return-void
.end method
