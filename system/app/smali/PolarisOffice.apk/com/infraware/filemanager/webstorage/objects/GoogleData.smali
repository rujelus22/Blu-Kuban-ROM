.class public Lcom/infraware/filemanager/webstorage/objects/GoogleData;
.super Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
.source "GoogleData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/filemanager/webstorage/objects/GoogleData$TempRootEntry;
    }
.end annotation


# static fields
.field private static DOWNLOAD_PATH_DOC:Ljava/lang/String;

.field private static DOWNLOAD_PATH_PPT:Ljava/lang/String;

.field private static GOOGLE_EXCEPTION_CLASS:Ljava/lang/String;

.field public static final NAMESPACE_DICTIONARY:Lcom/google/api/client/xml/XmlNamespaceDictionary;


# instance fields
.field private docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

.field private folderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

.field private xlsTransport:Lcom/google/api/client/googleapis/GoogleTransport;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 66
    new-instance v1, Lcom/google/api/client/xml/XmlNamespaceDictionary;

    invoke-direct {v1}, Lcom/google/api/client/xml/XmlNamespaceDictionary;-><init>()V

    sput-object v1, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->NAMESPACE_DICTIONARY:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 68
    sget-object v1, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->NAMESPACE_DICTIONARY:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    iget-object v0, v1, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceAliasToUriMap:Ljava/util/HashMap;

    .line 69
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, ""

    const-string v2, "http://www.w3.org/2005/Atom"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "app"

    const-string v2, "http://www.w3.org/2007/app"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "atom"

    const-string v2, "http://www.w3.org/2005/Atom"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "docs"

    const-string v2, "http://schemas.google.com/docs/2007"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "gd"

    const-string v2, "http://schemas.google.com/g/2005"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "gs"

    const-string v2, "http://schemas.google.com/spreadsheets/2006"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "gsx"

    const-string v2, "http://schemas.google.com/spreadsheets/2006/extended"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "https://docs.google.com/feeds/download/documents/Export?id="

    sput-object v1, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->DOWNLOAD_PATH_DOC:Ljava/lang/String;

    .line 83
    const-string v1, "https://docs.google.com/feeds/download/presentations/Export?docId="

    sput-object v1, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->DOWNLOAD_PATH_PPT:Ljava/lang/String;

    .line 85
    const-string v1, "com.google.api.client.http.HttpResponseException"

    sput-object v1, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->GOOGLE_EXCEPTION_CLASS:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;-><init>()V

    .line 79
    new-instance v0, Lcom/google/api/client/googleapis/GoogleTransport;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/GoogleTransport;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    .line 80
    new-instance v0, Lcom/google/api/client/googleapis/GoogleTransport;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/GoogleTransport;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->xlsTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->folderMap:Ljava/util/HashMap;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 90
    return-void
.end method

.method private arrangFolderTree(Ljava/util/List;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, folderEntries:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v1, folderNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_14

    .line 175
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_31

    .line 186
    return-void

    .line 168
    :cond_14
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;

    .line 169
    .local v0, entry:Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
    new-instance v5, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-direct {v5}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;-><init>()V

    .line 170
    .local v5, treeNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v5, v0}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->setUserObject(Ljava/lang/Object;)V

    .line 171
    iget-object v6, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->folderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->getSelfLink()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 177
    .end local v0           #entry:Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
    .end local v5           #treeNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    :cond_31
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 178
    .restart local v5       #treeNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v5}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;

    .line 179
    .restart local v0       #entry:Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->getParentLink()Ljava/lang/String;

    move-result-object v3

    .local v3, parentLink:Ljava/lang/String;
    if-nez v3, :cond_4b

    .line 180
    iget-object v6, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-virtual {v6, v5}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    .line 175
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 182
    :cond_4b
    iget-object v6, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->folderMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 183
    .local v4, parentNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v4, v5}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    goto :goto_48
.end method

.method public static cutExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "fileName"

    .prologue
    .line 507
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 508
    .local v1, index:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_11

    .line 517
    .end local p0
    :cond_10
    :goto_10
    return-object p0

    .line 511
    .restart local p0
    :cond_11
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, extension:Ljava/lang/String;
    const-string v2, ".doc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_45

    const-string v2, ".docx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_45

    .line 513
    const-string v2, ".xls"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_45

    const-string v2, ".xlsx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_45

    .line 514
    const-string v2, ".ppt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_45

    const-string v2, ".pptx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_10

    .line 515
    :cond_45
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_10
.end method

.method private static getMimetypeFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "filename"

    .prologue
    .line 497
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 498
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 497
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, extension:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, mimeType:Ljava/lang/String;
    if-nez v1, :cond_1c

    .line 501
    const-string v1, "unknown"

    .line 502
    :cond_1c
    return-object v1
.end method

.method private removeEntry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "resourceId"
    .parameter "etag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation

    .prologue
    .line 340
    const-string v3, ""

    .line 341
    .local v3, urlPostFix:Ljava/lang/String;
    if-eqz p1, :cond_17

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 347
    :cond_17
    if-nez p2, :cond_1b

    .line 348
    const-string p2, "*"

    .line 350
    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->RELATIVE_URL:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;->fromRelativePath(Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;

    move-result-object v2

    .line 351
    .local v2, url:Lcom/google/api/client/googleapis/GoogleUrl;
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/GoogleTransport;->buildDeleteRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v1

    .line 352
    .local v1, request:Lcom/google/api/client/http/HttpRequest;
    iget-object v4, v1, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    const-string v5, "GData-Version"

    const-string v6, "3.0"

    invoke-virtual {v4, v5, v6}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v4, v1, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    iput-object p2, v4, Lcom/google/api/client/http/HttpHeaders;->ifMatch:Ljava/lang/String;

    .line 354
    iput-object v2, v1, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 357
    :try_start_47
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 361
    return-void

    .line 358
    :catch_4b
    move-exception v0

    .line 359
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v4, v0}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private retreiveDocumentEntries()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    sget-object v4, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->RELATIVE_URL:Ljava/lang/String;

    invoke-static {v4}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;->fromRelativePath(Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;

    move-result-object v3

    .line 192
    .local v3, url:Lcom/google/api/client/googleapis/GoogleUrl;
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/GoogleTransport;->buildGetRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v2

    .line 193
    .local v2, request:Lcom/google/api/client/http/HttpRequest;
    iget-object v4, v2, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    const-string v5, "GData-Version"

    const-string v6, "3.0"

    invoke-virtual {v4, v5, v6}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iput-object v3, v2, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 196
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v4

    const-class v5, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;

    invoke-virtual {v4, v5}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;

    .line 197
    .local v1, feed:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v0, documentsEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;>;"
    iget-object v4, v1, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->documents:Ljava/util/List;

    if-eqz v4, :cond_31

    .line 199
    iget-object v4, v1, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->documents:Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 201
    :cond_31
    :goto_31
    invoke-virtual {v1}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->getNextLink()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_38

    .line 210
    return-object v0

    .line 203
    :cond_38
    new-instance v3, Lcom/google/api/client/googleapis/GoogleUrl;

    .end local v3           #url:Lcom/google/api/client/googleapis/GoogleUrl;
    invoke-virtual {v1}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->getNextLink()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/api/client/googleapis/GoogleUrl;-><init>(Ljava/lang/String;)V

    .line 205
    .restart local v3       #url:Lcom/google/api/client/googleapis/GoogleUrl;
    iput-object v3, v2, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 206
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v4

    const-class v5, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;

    invoke-virtual {v4, v5}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #feed:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;
    check-cast v1, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;

    .line 207
    .restart local v1       #feed:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;
    iget-object v4, v1, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->documents:Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_31
.end method

.method private retreiveFolderEntries()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    sget-object v4, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;->RELATIVE_URL:Ljava/lang/String;

    invoke-static {v4}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;->fromRelativePath(Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;

    move-result-object v3

    .line 139
    .local v3, url:Lcom/google/api/client/googleapis/GoogleUrl;
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/GoogleTransport;->buildGetRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v2

    .line 140
    .local v2, request:Lcom/google/api/client/http/HttpRequest;
    iget-object v4, v2, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    const-string v5, "GData-Version"

    const-string v6, "3.0"

    invoke-virtual {v4, v5, v6}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iput-object v3, v2, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 143
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v4

    const-class v5, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;

    invoke-virtual {v4, v5}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;

    .line 144
    .local v0, feed:Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v1, folderEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;>;"
    iget-object v4, v0, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;->folders:Ljava/util/List;

    if-eqz v4, :cond_31

    .line 146
    iget-object v4, v0, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;->folders:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 148
    :cond_31
    :goto_31
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;->getNextLink()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_38

    .line 155
    return-object v1

    .line 150
    :cond_38
    iget-object v4, v2, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;->getNextLink()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/api/client/http/GenericUrl;->path:Ljava/lang/String;

    .line 151
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v4

    const-class v5, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;

    invoke-virtual {v4, v5}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #feed:Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;
    check-cast v0, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;

    .line 152
    .restart local v0       #feed:Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;
    iget-object v4, v0, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;->folders:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_31
.end method


# virtual methods
.method public createFolder(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)V
    .registers 22
    .parameter "node"
    .parameter "newFolderName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation

    .prologue
    .line 279
    const-string v15, ""

    .line 280
    .local v15, urlPostFix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_3c

    .line 282
    invoke-virtual/range {p1 .. p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 283
    .local v4, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v4}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->isFolder()Z

    move-result v16

    if-nez v16, :cond_1b

    .line 334
    .end local v4           #entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    :goto_1a
    return-void

    .line 286
    .restart local v4       #entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    :cond_1b
    check-cast v4, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;

    .end local v4           #entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-virtual {v4}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->getEntryId()Ljava/lang/String;

    move-result-object v12

    .line 287
    .local v12, resourceId:Ljava/lang/String;
    if-eqz v12, :cond_3c

    .line 288
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "/"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/contents"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 291
    .end local v12           #resourceId:Ljava/lang/String;
    :cond_3c
    new-instance v9, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;

    invoke-direct {v9}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;-><init>()V

    .line 292
    .local v9, newEntry:Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->setEntryTitle(Ljava/lang/String;)V

    .line 293
    const-string v16, "folder"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->addCategories(Ljava/lang/String;)V

    .line 295
    new-instance v2, Lcom/google/api/client/xml/atom/AtomContent;

    invoke-direct {v2}, Lcom/google/api/client/xml/atom/AtomContent;-><init>()V

    .line 296
    .local v2, content:Lcom/google/api/client/xml/atom/AtomContent;
    sget-object v16, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->NAMESPACE_DICTIONARY:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/google/api/client/xml/atom/AtomContent;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 297
    iput-object v9, v2, Lcom/google/api/client/xml/atom/AtomContent;->entry:Ljava/lang/Object;

    .line 299
    new-instance v16, Ljava/lang/StringBuilder;

    sget-object v17, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->RELATIVE_URL:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;->fromRelativePath(Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;

    move-result-object v14

    .line 300
    .local v14, url:Lcom/google/api/client/googleapis/GoogleUrl;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/api/client/googleapis/GoogleTransport;->buildPostRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v11

    .line 301
    .local v11, request:Lcom/google/api/client/http/HttpRequest;
    iget-object v0, v11, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v16, v0

    const-string v17, "GData-Version"

    const-string v18, "3.0"

    invoke-virtual/range {v16 .. v18}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iput-object v14, v11, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 303
    iput-object v2, v11, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 305
    const/4 v13, 0x0

    .line 307
    .local v13, response:Lcom/google/api/client/http/HttpResponse;
    :try_start_8d
    invoke-virtual {v11}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_e9

    move-result-object v13

    .line 312
    const/4 v5, 0x0

    .line 314
    .local v5, feed:Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;
    :try_start_92
    const-class v16, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #feed:Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;
    check-cast v5, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_9c} :catch_f2

    .line 319
    .restart local v5       #feed:Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;
    invoke-virtual {v5}, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;->getSelfLink()Ljava/lang/String;

    move-result-object v7

    .line 320
    .local v7, folderId:Ljava/lang/String;
    const-string v16, "folder%3A"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 321
    .local v8, index:I
    if-ltz v8, :cond_ae

    .line 322
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 324
    :cond_ae
    new-instance v6, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;

    invoke-direct {v6}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;-><init>()V

    .line 325
    .local v6, folderEntry:Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->setEntryId(Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->setEntryTitle(Ljava/lang/String;)V

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->setCreatedLong(J)V

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->setUpdatedLong(J)V

    .line 329
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->setSize(J)V

    .line 331
    new-instance v10, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-direct {v10}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;-><init>()V

    .line 332
    .local v10, newNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v10, v6}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->setUserObject(Ljava/lang/Object;)V

    .line 333
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    goto/16 :goto_1a

    .line 308
    .end local v5           #feed:Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;
    .end local v6           #folderEntry:Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
    .end local v7           #folderId:Ljava/lang/String;
    .end local v8           #index:I
    .end local v10           #newNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    :catch_e9
    move-exception v3

    .line 309
    .local v3, e:Ljava/io/IOException;
    new-instance v16, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v16

    .line 315
    .end local v3           #e:Ljava/io/IOException;
    :catch_f2
    move-exception v3

    .line 316
    .restart local v3       #e:Ljava/io/IOException;
    goto/16 :goto_1a
.end method

.method public decodeTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "title"

    .prologue
    .line 272
    return-object p1
.end method

.method public downloadFile(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)Ljava/lang/String;
    .registers 24
    .parameter "node"
    .parameter "newFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation

    .prologue
    .line 791
    invoke-virtual/range {p1 .. p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;

    .line 793
    .local v4, entry:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;
    invoke-virtual {v4}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    move-result-object v18

    sget-object v19, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->SPREADSHEET:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d4

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->xlsTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    move-object/from16 v16, v0

    .line 798
    .local v16, transport:Lcom/google/api/client/http/HttpTransport;
    :goto_18
    const/4 v11, 0x0

    .line 799
    .local v11, requestUrl:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    move-result-object v18

    sget-object v19, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DOCUMENT:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f5

    .line 801
    invoke-virtual {v4}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->getEntryId()Ljava/lang/String;

    move-result-object v12

    .line 802
    .local v12, resourceId:Ljava/lang/String;
    const/16 v18, 0x0

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const-string v19, "document:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_dc

    .line 803
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->DOWNLOAD_PATH_DOC:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->getEntryId()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x9

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 812
    .end local v12           #resourceId:Ljava/lang/String;
    :goto_5a
    invoke-virtual {v4}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->getExportFormat()Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    move-result-object v5

    .line 813
    .local v5, exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;
    if-eqz v5, :cond_79

    .line 814
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "&exportFormat="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 816
    :cond_79
    new-instance v17, Lcom/google/api/client/googleapis/GoogleUrl;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Lcom/google/api/client/googleapis/GoogleUrl;-><init>(Ljava/lang/String;)V

    .line 817
    .local v17, url:Lcom/google/api/client/googleapis/GoogleUrl;
    invoke-virtual/range {v16 .. v16}, Lcom/google/api/client/http/HttpTransport;->buildGetRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v10

    .line 818
    .local v10, request:Lcom/google/api/client/http/HttpRequest;
    iget-object v0, v10, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v18, v0

    const-string v19, "GData-Version"

    const-string v20, "3.0"

    invoke-virtual/range {v18 .. v20}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 821
    const/4 v13, 0x0

    .line 822
    .local v13, response:Lcom/google/api/client/http/HttpResponse;
    const/4 v6, 0x0

    .line 823
    .local v6, fos:Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 825
    .local v8, is:Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 827
    .local v14, tmpFile:Ljava/io/File;
    :try_start_97
    invoke-virtual {v10}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v13

    .line 828
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_97 .. :try_end_a2} :catchall_133
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_a2} :catch_16a

    .line 829
    .end local v14           #tmpFile:Ljava/io/File;
    .local v15, tmpFile:Ljava/io/File;
    :try_start_a2
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 831
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_aa
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_163
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_aa} :catch_16c

    .line 832
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local v7, fos:Ljava/io/FileOutputStream;
    :try_start_aa
    invoke-virtual {v13}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 834
    const/16 v18, 0x1000

    move/from16 v0, v18

    new-array v2, v0, [B

    .line 835
    .local v2, buffer:[B
    const/4 v9, 0x0

    .line 837
    .local v9, readed:I
    :goto_b5
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_120

    .line 840
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 841
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_c5
    .catchall {:try_start_aa .. :try_end_c5} :catchall_166
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_c5} :catch_128

    .line 845
    if-eqz v7, :cond_ca

    .line 847
    :try_start_c7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_151

    .line 852
    :cond_ca
    if-eqz v8, :cond_cf

    .line 854
    :try_start_cc
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_15a

    .line 861
    :cond_cf
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    return-object v18

    .line 796
    .end local v2           #buffer:[B
    .end local v5           #exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #readed:I
    .end local v10           #request:Lcom/google/api/client/http/HttpRequest;
    .end local v11           #requestUrl:Ljava/lang/String;
    .end local v13           #response:Lcom/google/api/client/http/HttpResponse;
    .end local v15           #tmpFile:Ljava/io/File;
    .end local v16           #transport:Lcom/google/api/client/http/HttpTransport;
    .end local v17           #url:Lcom/google/api/client/googleapis/GoogleUrl;
    :cond_d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    move-object/from16 v16, v0

    .restart local v16       #transport:Lcom/google/api/client/http/HttpTransport;
    goto/16 :goto_18

    .line 805
    .restart local v11       #requestUrl:Ljava/lang/String;
    .restart local v12       #resourceId:Ljava/lang/String;
    :cond_dc
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->DOWNLOAD_PATH_DOC:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->getEntryId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_5a

    .line 807
    .end local v12           #resourceId:Ljava/lang/String;
    :cond_f5
    invoke-virtual {v4}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    move-result-object v18

    sget-object v19, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PRESENTATION:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11a

    .line 808
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->DOWNLOAD_PATH_PPT:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->getEntryId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_5a

    .line 810
    :cond_11a
    invoke-virtual {v4}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->getContentSrc()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_5a

    .line 838
    .restart local v2       #buffer:[B
    .restart local v5       #exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #readed:I
    .restart local v10       #request:Lcom/google/api/client/http/HttpRequest;
    .restart local v13       #response:Lcom/google/api/client/http/HttpResponse;
    .restart local v15       #tmpFile:Ljava/io/File;
    .restart local v17       #url:Lcom/google/api/client/googleapis/GoogleUrl;
    :cond_120
    const/16 v18, 0x0

    :try_start_122
    move/from16 v0, v18

    invoke-virtual {v7, v2, v0, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_127
    .catchall {:try_start_122 .. :try_end_127} :catchall_166
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_127} :catch_128

    goto :goto_b5

    .line 842
    .end local v2           #buffer:[B
    .end local v9           #readed:I
    :catch_128
    move-exception v3

    move-object v14, v15

    .end local v15           #tmpFile:Ljava/io/File;
    .restart local v14       #tmpFile:Ljava/io/File;
    move-object v6, v7

    .line 843
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .local v3, e:Ljava/io/IOException;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :goto_12b
    :try_start_12b
    new-instance v18, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v18
    :try_end_133
    .catchall {:try_start_12b .. :try_end_133} :catchall_133

    .line 844
    .end local v3           #e:Ljava/io/IOException;
    :catchall_133
    move-exception v18

    .line 845
    :goto_134
    if-eqz v6, :cond_139

    .line 847
    :try_start_136
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_139} :catch_13f

    .line 852
    :cond_139
    if-eqz v8, :cond_13e

    .line 854
    :try_start_13b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_13e} :catch_148

    .line 859
    :cond_13e
    throw v18

    .line 848
    :catch_13f
    move-exception v3

    .line 849
    .restart local v3       #e:Ljava/io/IOException;
    new-instance v18, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 855
    .end local v3           #e:Ljava/io/IOException;
    :catch_148
    move-exception v3

    .line 856
    .restart local v3       #e:Ljava/io/IOException;
    new-instance v18, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 848
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .end local v14           #tmpFile:Ljava/io/File;
    .restart local v2       #buffer:[B
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #readed:I
    .restart local v15       #tmpFile:Ljava/io/File;
    :catch_151
    move-exception v3

    .line 849
    .restart local v3       #e:Ljava/io/IOException;
    new-instance v18, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 855
    .end local v3           #e:Ljava/io/IOException;
    :catch_15a
    move-exception v3

    .line 856
    .restart local v3       #e:Ljava/io/IOException;
    new-instance v18, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 844
    .end local v2           #buffer:[B
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v9           #readed:I
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catchall_163
    move-exception v18

    move-object v14, v15

    .end local v15           #tmpFile:Ljava/io/File;
    .restart local v14       #tmpFile:Ljava/io/File;
    goto :goto_134

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .end local v14           #tmpFile:Ljava/io/File;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v15       #tmpFile:Ljava/io/File;
    :catchall_166
    move-exception v18

    move-object v14, v15

    .end local v15           #tmpFile:Ljava/io/File;
    .restart local v14       #tmpFile:Ljava/io/File;
    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto :goto_134

    .line 842
    :catch_16a
    move-exception v3

    goto :goto_12b

    .end local v14           #tmpFile:Ljava/io/File;
    .restart local v15       #tmpFile:Ljava/io/File;
    :catch_16c
    move-exception v3

    move-object v14, v15

    .end local v15           #tmpFile:Ljava/io/File;
    .restart local v14       #tmpFile:Ljava/io/File;
    goto :goto_12b
.end method

.method public encodeTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "title"

    .prologue
    .line 267
    return-object p1
.end method

.method public getEntryTree()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "userId"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    const-string v5, "private-docsnavi-0.1"

    iput-object v5, v4, Lcom/google/api/client/googleapis/GoogleTransport;->applicationName:Ljava/lang/String;

    .line 97
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->xlsTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    const-string v5, "private-docsnavi-0.1"

    iput-object v5, v4, Lcom/google/api/client/googleapis/GoogleTransport;->applicationName:Ljava/lang/String;

    .line 99
    sget-object v4, Lcom/google/api/client/apache/ApacheHttpTransport;->INSTANCE:Lcom/google/api/client/apache/ApacheHttpTransport;

    invoke-static {v4}, Lcom/google/api/client/http/HttpTransport;->setLowLevelHttpTransport(Lcom/google/api/client/http/LowLevelHttpTransport;)V

    .line 101
    new-instance v0, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;-><init>()V

    .line 103
    .local v0, auth:Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;
    iput-object p1, v0, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;->username:Ljava/lang/String;

    .line 104
    iput-object p2, v0, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;->password:Ljava/lang/String;

    .line 107
    new-instance v1, Lcom/google/api/client/xml/atom/AtomParser;

    invoke-direct {v1}, Lcom/google/api/client/xml/atom/AtomParser;-><init>()V

    .line 108
    .local v1, docParser:Lcom/google/api/client/xml/atom/AtomParser;
    sget-object v4, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->NAMESPACE_DICTIONARY:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    iput-object v4, v1, Lcom/google/api/client/xml/atom/AtomParser;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 109
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    invoke-virtual {v4, v1}, Lcom/google/api/client/googleapis/GoogleTransport;->addParser(Lcom/google/api/client/http/HttpParser;)V

    .line 112
    :try_start_28
    const-string v4, "writely"

    iput-object v4, v0, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;->authTokenType:Ljava/lang/String;

    .line 113
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;->authenticate()Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$Response;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    invoke-virtual {v4, v5}, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$Response;->setAuthorizationHeader(Lcom/google/api/client/googleapis/GoogleTransport;)V
    :try_end_35
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_28 .. :try_end_35} :catch_51
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_35} :catch_5a

    .line 121
    new-instance v3, Lcom/google/api/client/xml/atom/AtomParser;

    invoke-direct {v3}, Lcom/google/api/client/xml/atom/AtomParser;-><init>()V

    .line 122
    .local v3, xlsParser:Lcom/google/api/client/xml/atom/AtomParser;
    sget-object v4, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->NAMESPACE_DICTIONARY:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    iput-object v4, v3, Lcom/google/api/client/xml/atom/AtomParser;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 123
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    invoke-virtual {v4, v3}, Lcom/google/api/client/googleapis/GoogleTransport;->addParser(Lcom/google/api/client/http/HttpParser;)V

    .line 126
    :try_start_43
    const-string v4, "wise"

    iput-object v4, v0, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;->authTokenType:Ljava/lang/String;

    .line 127
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;->authenticate()Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$Response;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->xlsTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    invoke-virtual {v4, v5}, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$Response;->setAuthorizationHeader(Lcom/google/api/client/googleapis/GoogleTransport;)V
    :try_end_50
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_43 .. :try_end_50} :catch_61
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_50} :catch_6a

    .line 133
    return-void

    .line 114
    .end local v3           #xlsParser:Lcom/google/api/client/xml/atom/AtomParser;
    :catch_51
    move-exception v2

    .line 115
    .local v2, e:Lcom/google/api/client/http/HttpResponseException;
    new-instance v4, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    const-string v5, "bad network state"

    invoke-direct {v4, v5, v2}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 116
    .end local v2           #e:Lcom/google/api/client/http/HttpResponseException;
    :catch_5a
    move-exception v2

    .line 117
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v4, v2}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 128
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #xlsParser:Lcom/google/api/client/xml/atom/AtomParser;
    :catch_61
    move-exception v2

    .line 129
    .local v2, e:Lcom/google/api/client/http/HttpResponseException;
    new-instance v4, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    const-string v5, "bad network state"

    invoke-direct {v4, v5, v2}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 130
    .end local v2           #e:Lcom/google/api/client/http/HttpResponseException;
    :catch_6a
    move-exception v2

    .line 131
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v4, v2}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public moveEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    .registers 23
    .parameter "srcNode"
    .parameter "dstNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 493
    :cond_c
    :goto_c
    return-void

    .line 433
    :cond_d
    const-string v16, ""

    .line 435
    .local v16, urlPostFix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_a2

    .line 437
    invoke-virtual/range {p2 .. p2}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 438
    .local v5, dstEntry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v5}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->isFolder()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 441
    check-cast v5, Lcom/infraware/filemanager/webstorage/objects/google/Entry;

    .end local v5           #dstEntry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-virtual {v5}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->getEntryId()Ljava/lang/String;

    move-result-object v6

    .line 442
    .local v6, dstResourceId:Ljava/lang/String;
    if-eqz v6, :cond_48

    .line 443
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "/"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/contents"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 445
    :cond_48
    new-instance v10, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;

    invoke-direct {v10}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;-><init>()V

    .line 446
    .local v10, newEntry:Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
    invoke-virtual/range {p1 .. p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    check-cast v17, Lcom/infraware/filemanager/webstorage/objects/google/Entry;

    invoke-virtual/range {v17 .. v17}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->getId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->setId(Ljava/lang/String;)V

    .line 448
    new-instance v2, Lcom/google/api/client/xml/atom/AtomContent;

    invoke-direct {v2}, Lcom/google/api/client/xml/atom/AtomContent;-><init>()V

    .line 449
    .local v2, content:Lcom/google/api/client/xml/atom/AtomContent;
    sget-object v17, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->NAMESPACE_DICTIONARY:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/google/api/client/xml/atom/AtomContent;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 450
    iput-object v10, v2, Lcom/google/api/client/xml/atom/AtomContent;->entry:Ljava/lang/Object;

    .line 452
    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->RELATIVE_URL:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;->fromRelativePath(Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;

    move-result-object v9

    .line 453
    .local v9, moveUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/api/client/googleapis/GoogleTransport;->buildPostRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v8

    .line 454
    .local v8, moveRequest:Lcom/google/api/client/http/HttpRequest;
    iget-object v0, v8, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v17, v0

    const-string v18, "GData-Version"

    const-string v19, "3.0"

    invoke-virtual/range {v17 .. v19}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iput-object v9, v8, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 456
    iput-object v2, v8, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 459
    :try_start_9f
    invoke-virtual {v8}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_155

    .line 466
    .end local v2           #content:Lcom/google/api/client/xml/atom/AtomContent;
    .end local v6           #dstResourceId:Ljava/lang/String;
    .end local v8           #moveRequest:Lcom/google/api/client/http/HttpRequest;
    .end local v9           #moveUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    .end local v10           #newEntry:Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
    :cond_a2
    invoke-virtual/range {p1 .. p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getParent()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v12

    .line 467
    .local v12, parentNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v12, v0, :cond_13d

    .line 469
    invoke-virtual {v12}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 470
    .local v11, parentEntry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v11}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v13

    .line 471
    .local v13, parentResourceId:Ljava/lang/String;
    if-eqz v13, :cond_d5

    .line 472
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "/"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/contents"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 474
    :cond_d5
    invoke-virtual/range {p1 .. p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 475
    .local v14, srcEntry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v14}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v15

    .line 476
    .local v15, srcResourceId:Ljava/lang/String;
    if-eqz v15, :cond_fc

    .line 477
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v15}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 479
    :cond_fc
    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->RELATIVE_URL:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;->fromRelativePath(Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;

    move-result-object v4

    .line 480
    .local v4, deleteUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/api/client/googleapis/GoogleTransport;->buildDeleteRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v3

    .line 481
    .local v3, deleteRequest:Lcom/google/api/client/http/HttpRequest;
    iget-object v0, v3, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v17, v0

    const-string v18, "GData-Version"

    const-string v19, "3.0"

    invoke-virtual/range {v17 .. v19}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v0, v3, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v17, v0

    const-string v18, "*"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/api/client/http/HttpHeaders;->ifMatch:Ljava/lang/String;

    .line 483
    iput-object v4, v3, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 486
    :try_start_13a
    invoke-virtual {v3}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;
    :try_end_13d
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_13d} :catch_15e

    .line 491
    .end local v3           #deleteRequest:Lcom/google/api/client/http/HttpRequest;
    .end local v4           #deleteUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    .end local v11           #parentEntry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    .end local v13           #parentResourceId:Ljava/lang/String;
    .end local v14           #srcEntry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    .end local v15           #srcResourceId:Ljava/lang/String;
    :cond_13d
    invoke-virtual/range {p1 .. p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getParent()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getChildArray()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 492
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    goto/16 :goto_c

    .line 460
    .end local v12           #parentNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    .restart local v2       #content:Lcom/google/api/client/xml/atom/AtomContent;
    .restart local v6       #dstResourceId:Ljava/lang/String;
    .restart local v8       #moveRequest:Lcom/google/api/client/http/HttpRequest;
    .restart local v9       #moveUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    .restart local v10       #newEntry:Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
    :catch_155
    move-exception v7

    .line 461
    .local v7, e:Ljava/io/IOException;
    new-instance v17, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 487
    .end local v2           #content:Lcom/google/api/client/xml/atom/AtomContent;
    .end local v6           #dstResourceId:Ljava/lang/String;
    .end local v7           #e:Ljava/io/IOException;
    .end local v8           #moveRequest:Lcom/google/api/client/http/HttpRequest;
    .end local v9           #moveUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    .end local v10           #newEntry:Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
    .restart local v3       #deleteRequest:Lcom/google/api/client/http/HttpRequest;
    .restart local v4       #deleteUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    .restart local v11       #parentEntry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    .restart local v12       #parentNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    .restart local v13       #parentResourceId:Ljava/lang/String;
    .restart local v14       #srcEntry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    .restart local v15       #srcResourceId:Ljava/lang/String;
    :catch_15e
    move-exception v7

    .line 488
    .restart local v7       #e:Ljava/io/IOException;
    new-instance v17, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v17
.end method

.method public refreshEntryTree()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 217
    iget-object v10, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->folderMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 218
    new-instance v10, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;-><init>(Z)V

    iput-object v10, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 219
    iget-object v10, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    new-instance v11, Lcom/infraware/filemanager/webstorage/objects/GoogleData$TempRootEntry;

    invoke-direct {v11, p0, v12}, Lcom/infraware/filemanager/webstorage/objects/GoogleData$TempRootEntry;-><init>(Lcom/infraware/filemanager/webstorage/objects/GoogleData;Lcom/infraware/filemanager/webstorage/objects/GoogleData$TempRootEntry;)V

    invoke-virtual {v10, v11}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->setUserObject(Ljava/lang/Object;)V

    .line 221
    const/4 v3, 0x0

    .line 222
    .local v3, folderEntries:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;>;"
    const/4 v0, 0x0

    .line 224
    .local v0, documentsEntries:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;>;"
    :try_start_1a
    invoke-direct {p0}, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->retreiveFolderEntries()Ljava/util/List;

    move-result-object v3

    .line 225
    invoke-direct {p0, v3}, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->arrangFolderTree(Ljava/util/List;)V

    .line 226
    invoke-direct {p0}, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->retreiveDocumentEntries()Ljava/util/ArrayList;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_24} :catch_2d

    move-result-object v0

    .line 238
    const/4 v5, 0x0

    .local v5, i:I
    :goto_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lt v5, v10, :cond_36

    .line 258
    return-void

    .line 227
    .end local v5           #i:I
    :catch_2d
    move-exception v2

    .line 228
    .local v2, e:Ljava/io/IOException;
    iput-object v12, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 229
    new-instance v10, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v10, v2}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 240
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #i:I
    :cond_36
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;

    .line 241
    .local v1, documentsEntry:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;
    invoke-virtual {v1}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->getParentLinkList()Ljava/util/ArrayList;

    move-result-object v8

    .line 242
    .local v8, parentLinkList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-direct {v9}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;-><init>()V

    .line 243
    .local v9, treeNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v9, v1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->setUserObject(Ljava/lang/Object;)V

    .line 244
    if-eqz v8, :cond_68

    .line 246
    const/4 v6, 0x0

    .local v6, j:I
    :goto_4b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lt v6, v10, :cond_54

    .line 238
    .end local v6           #j:I
    :goto_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 248
    .restart local v6       #j:I
    :cond_54
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 249
    .local v7, parentLink:Ljava/lang/String;
    iget-object v10, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->folderMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 250
    .local v4, folderNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v4, v9}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    .line 246
    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    .line 255
    .end local v4           #folderNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    .end local v6           #j:I
    .end local v7           #parentLink:Ljava/lang/String;
    :cond_68
    iget-object v10, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-virtual {v10, v9}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    goto :goto_51
.end method

.method public removeEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    .registers 6
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation

    .prologue
    .line 367
    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    if-ne p1, v3, :cond_5

    .line 377
    :goto_4
    return-void

    .line 370
    :cond_5
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 371
    .local v0, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v0}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, resourceId:Ljava/lang/String;
    check-cast v0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;

    .end local v0           #entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->getEtag()Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, etag:Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->removeEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getParent()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getChildArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public renameEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)V
    .registers 15
    .parameter "node"
    .parameter "newEntryName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 383
    const-string v8, ""

    .line 384
    .local v8, urlPostFix:Ljava/lang/String;
    iget-object v9, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    if-ne p1, v9, :cond_7

    .line 424
    :goto_6
    return-void

    .line 387
    :cond_7
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/filemanager/webstorage/objects/google/Entry;

    .line 388
    .local v2, entry:Lcom/infraware/filemanager/webstorage/objects/google/Entry;
    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->getEntryId()Ljava/lang/String;

    move-result-object v6

    .line 389
    .local v6, resourceId:Ljava/lang/String;
    if-eqz v6, :cond_26

    .line 390
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 392
    :cond_26
    const/4 v4, 0x0

    .line 394
    .local v4, newEntry:Lcom/infraware/filemanager/webstorage/objects/google/Entry;
    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->isFolder()Z

    move-result v9

    if-eqz v9, :cond_89

    .line 395
    new-instance v4, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;

    .end local v4           #newEntry:Lcom/infraware/filemanager/webstorage/objects/google/Entry;
    invoke-direct {v4}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;-><init>()V

    .line 399
    .restart local v4       #newEntry:Lcom/infraware/filemanager/webstorage/objects/google/Entry;
    :goto_32
    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    move-result-object v9

    invoke-virtual {v9}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->addCategories(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v4, p2}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->setEntryTitle(Ljava/lang/String;)V

    .line 402
    new-instance v0, Lcom/google/api/client/xml/atom/AtomContent;

    invoke-direct {v0}, Lcom/google/api/client/xml/atom/AtomContent;-><init>()V

    .line 403
    .local v0, content:Lcom/google/api/client/xml/atom/AtomContent;
    sget-object v9, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->NAMESPACE_DICTIONARY:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    iput-object v9, v0, Lcom/google/api/client/xml/atom/AtomContent;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 404
    iput-object v4, v0, Lcom/google/api/client/xml/atom/AtomContent;->entry:Ljava/lang/Object;

    .line 406
    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->getEtag()Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, etag:Ljava/lang/String;
    if-nez v3, :cond_53

    .line 408
    const-string v3, "*"

    .line 410
    :cond_53
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->RELATIVE_URL:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;->fromRelativePath(Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;

    move-result-object v7

    .line 411
    .local v7, url:Lcom/google/api/client/googleapis/GoogleUrl;
    iget-object v9, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    invoke-virtual {v9}, Lcom/google/api/client/googleapis/GoogleTransport;->buildPutRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v5

    .line 412
    .local v5, request:Lcom/google/api/client/http/HttpRequest;
    iget-object v9, v5, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    const-string v10, "GData-Version"

    const-string v11, "3.0"

    invoke-virtual {v9, v10, v11}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v9, v5, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    iput-object v3, v9, Lcom/google/api/client/http/HttpHeaders;->ifMatch:Ljava/lang/String;

    .line 414
    iput-object v7, v5, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 415
    iput-object v0, v5, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 418
    :try_start_81
    invoke-virtual {v5}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_8f

    .line 423
    invoke-virtual {v2, p2}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->setEntryTitle(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 397
    .end local v0           #content:Lcom/google/api/client/xml/atom/AtomContent;
    .end local v3           #etag:Ljava/lang/String;
    .end local v5           #request:Lcom/google/api/client/http/HttpRequest;
    .end local v7           #url:Lcom/google/api/client/googleapis/GoogleUrl;
    :cond_89
    new-instance v4, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;

    .end local v4           #newEntry:Lcom/infraware/filemanager/webstorage/objects/google/Entry;
    invoke-direct {v4}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;-><init>()V

    .restart local v4       #newEntry:Lcom/infraware/filemanager/webstorage/objects/google/Entry;
    goto :goto_32

    .line 419
    .restart local v0       #content:Lcom/google/api/client/xml/atom/AtomContent;
    .restart local v3       #etag:Ljava/lang/String;
    .restart local v5       #request:Lcom/google/api/client/http/HttpRequest;
    .restart local v7       #url:Lcom/google/api/client/googleapis/GoogleUrl;
    :catch_8f
    move-exception v1

    .line 420
    .local v1, e:Ljava/io/IOException;
    new-instance v9, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v9, v1}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method public uploadFile(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/io/File;)Z
    .registers 47
    .parameter "node"
    .parameter "uploadFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation

    .prologue
    .line 600
    invoke-virtual/range {p1 .. p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 601
    .local v11, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v11}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v30

    .line 603
    .local v30, targetId:Ljava/lang/String;
    const-string v35, ""

    .line 604
    .local v35, urlPostFix:Ljava/lang/String;
    if-eqz v30, :cond_27

    .line 605
    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "/"

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v30 .. v30}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "/contents"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 612
    :cond_27
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    .line 613
    .local v14, fileName:Ljava/lang/String;
    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "upload/create-session/default/private/full"

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;->fromRelativePath(Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;

    move-result-object v34

    .line 615
    .local v34, url:Lcom/google/api/client/googleapis/GoogleUrl;
    new-instance v4, Lcom/google/api/client/http/InputStreamContent;

    invoke-direct {v4}, Lcom/google/api/client/http/InputStreamContent;-><init>()V

    .line 616
    .local v4, content:Lcom/google/api/client/http/InputStreamContent;
    new-instance v37, Ljava/io/ByteArrayInputStream;

    const/16 v38, 0x0

    move/from16 v0, v38

    new-array v0, v0, [B

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v37

    iput-object v0, v4, Lcom/google/api/client/http/InputStreamContent;->inputStream:Ljava/io/InputStream;

    .line 618
    invoke-static {v14}, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->getMimetypeFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 620
    .local v5, contentType:Ljava/lang/String;
    iput-object v5, v4, Lcom/google/api/client/http/InputStreamContent;->type:Ljava/lang/String;

    .line 621
    const-wide/16 v37, 0x0

    move-wide/from16 v0, v37

    iput-wide v0, v4, Lcom/google/api/client/http/InputStreamContent;->length:J

    .line 623
    invoke-static {v14}, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->cutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/google/api/client/googleapis/GoogleTransport;->buildPostRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v19

    .line 626
    .local v19, initRequest:Lcom/google/api/client/http/HttpRequest;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v37, v0

    const-string v38, "GData-Version"

    const-string v39, "3.0"

    invoke-virtual/range {v37 .. v39}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    move-object/from16 v0, v34

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 628
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-static {v0, v14}, Lcom/google/api/client/googleapis/GoogleHeaders;->setSlug(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/String;)V

    .line 629
    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 630
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v37, v0

    const-string v38, "X-Upload-Content-Type"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v5}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v37, v0

    const-string v38, "X-Upload-Content-Length"

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v39

    invoke-static/range {v39 .. v40}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const/16 v20, 0x0

    .line 635
    .local v20, initResponse:Lcom/google/api/client/http/HttpResponse;
    :try_start_b8
    invoke-virtual/range {v19 .. v19}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_cd

    move-result-object v20

    .line 640
    move-object/from16 v0, v20

    iget v0, v0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    move/from16 v37, v0

    const/16 v38, 0xc8

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_d6

    .line 641
    const/16 v37, 0x0

    .line 783
    :goto_cc
    return v37

    .line 636
    :catch_cd
    move-exception v10

    .line 637
    .local v10, e:Ljava/io/IOException;
    new-instance v37, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    move-object/from16 v0, v37

    invoke-direct {v0, v10}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v37

    .line 643
    .end local v10           #e:Ljava/io/IOException;
    :cond_d6
    const/16 v21, 0x0

    .line 645
    .local v21, inputStream:Ljava/io/InputStream;
    :try_start_d8
    new-instance v21, Ljava/io/FileInputStream;

    .end local v21           #inputStream:Ljava/io/InputStream;
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e1
    .catch Ljava/io/FileNotFoundException; {:try_start_d8 .. :try_end_e1} :catch_117

    .line 650
    .restart local v21       #inputStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    check-cast v3, [B

    .line 651
    .local v3, buffer:[B
    const/16 v31, 0x0

    check-cast v31, [B

    .line 652
    .local v31, tmpbuf:[B
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v32

    .line 654
    .local v32, total:J
    const-wide/16 v17, 0x0

    .local v17, index:J
    const-wide/16 v6, 0x0

    .line 655
    .local v6, count:J
    const/16 v26, 0x0

    .local v26, readBytes:I
    const/16 v36, 0x0

    .line 657
    .local v36, writeBytes:I
    const/4 v12, 0x0

    .line 658
    .local v12, exception:Lcom/google/api/client/http/HttpResponseException;
    new-instance v29, Lcom/google/api/client/googleapis/GoogleUrl;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v37, v0

    const-string v38, "Location"

    invoke-virtual/range {v37 .. v38}, Lcom/google/api/client/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/google/api/client/googleapis/GoogleUrl;-><init>(Ljava/lang/String;)V

    .line 660
    .local v29, sendUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    const/16 v27, 0x0

    .line 661
    .local v27, response:Lcom/google/api/client/http/HttpResponse;
    :goto_110
    cmp-long v37, v32, v17

    if-gtz v37, :cond_120

    .line 783
    const/16 v37, 0x1

    goto :goto_cc

    .line 646
    .end local v3           #buffer:[B
    .end local v6           #count:J
    .end local v12           #exception:Lcom/google/api/client/http/HttpResponseException;
    .end local v17           #index:J
    .end local v21           #inputStream:Ljava/io/InputStream;
    .end local v26           #readBytes:I
    .end local v27           #response:Lcom/google/api/client/http/HttpResponse;
    .end local v29           #sendUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    .end local v31           #tmpbuf:[B
    .end local v32           #total:J
    .end local v36           #writeBytes:I
    :catch_117
    move-exception v10

    .line 647
    .local v10, e:Ljava/io/FileNotFoundException;
    new-instance v37, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    move-object/from16 v0, v37

    invoke-direct {v0, v10}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v37

    .line 663
    .end local v10           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #buffer:[B
    .restart local v6       #count:J
    .restart local v12       #exception:Lcom/google/api/client/http/HttpResponseException;
    .restart local v17       #index:J
    .restart local v21       #inputStream:Ljava/io/InputStream;
    .restart local v26       #readBytes:I
    .restart local v27       #response:Lcom/google/api/client/http/HttpResponse;
    .restart local v29       #sendUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    .restart local v31       #tmpbuf:[B
    .restart local v32       #total:J
    .restart local v36       #writeBytes:I
    :cond_120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/google/api/client/googleapis/GoogleTransport;->buildPutRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v28

    .line 664
    .local v28, sendRequest:Lcom/google/api/client/http/HttpRequest;
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 667
    const/high16 v37, 0x4

    :try_start_132
    move/from16 v0, v37

    new-array v3, v0, [B

    .line 669
    move/from16 v15, v36

    .local v15, i:I
    :goto_138
    move/from16 v0, v26

    if-lt v15, v0, :cond_243

    .line 672
    sub-int v26, v26, v36

    .line 673
    const/high16 v37, 0x4

    sub-int v37, v37, v26

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v37

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v37

    move/from16 v0, v37

    int-to-long v6, v0

    .line 674
    const-wide/16 v37, -0x1

    cmp-long v37, v6, v37

    if-eqz v37, :cond_164

    .line 676
    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v37, v0

    add-long v37, v37, v6

    move-wide/from16 v0, v37

    long-to-int v0, v0

    move/from16 v26, v0

    .line 677
    move/from16 v0, v26

    int-to-long v6, v0

    .line 680
    :cond_164
    iput-object v5, v4, Lcom/google/api/client/http/InputStreamContent;->type:Ljava/lang/String;

    .line 681
    iput-wide v6, v4, Lcom/google/api/client/http/InputStreamContent;->length:J

    .line 682
    new-instance v37, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v37

    iput-object v0, v4, Lcom/google/api/client/http/InputStreamContent;->inputStream:Ljava/io/InputStream;

    .line 684
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v37, v0

    const-string v38, "Content-Range"

    new-instance v39, Ljava/lang/StringBuilder;

    const-string v40, "bytes "

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "-"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    add-long v40, v17, v6

    const-wide/16 v42, 0x1

    sub-long v40, v40, v42

    invoke-static/range {v40 .. v41}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "/"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    move-object/from16 v0, v28

    iput-object v4, v0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 686
    invoke-virtual/range {v28 .. v28}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;
    :try_end_1ba
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_1ba} :catch_24d

    move-result-object v27

    .line 694
    .end local v15           #i:I
    :goto_1bb
    if-nez v12, :cond_270

    .line 696
    const/4 v13, 0x0

    .line 698
    .local v13, feed:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;
    :try_start_1be
    const-class v37, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #feed:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;
    check-cast v13, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;
    :try_end_1ca
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_1ca} :catch_26b

    .line 703
    .restart local v13       #feed:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;
    invoke-virtual {v13}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->getSelfLink()Ljava/lang/String;

    move-result-object v8

    .line 704
    .local v8, documentId:Ljava/lang/String;
    const-string v37, "document%3A"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 705
    .local v16, idIndex:I
    if-gez v16, :cond_1e0

    .line 706
    const-string v37, "spreadsheet%3A"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 707
    :cond_1e0
    if-gez v16, :cond_1ea

    .line 708
    const-string v37, "presentation%3A"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 710
    :cond_1ea
    if-lez v16, :cond_1f2

    .line 711
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 713
    :cond_1f2
    new-instance v9, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;

    invoke-direct {v9}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;-><init>()V

    .line 714
    .local v9, documentsEntry:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;
    invoke-static {v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->setEntryId(Ljava/lang/String;)V

    .line 715
    invoke-virtual {v9, v14}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->setEntryTitle(Ljava/lang/String;)V

    .line 716
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v37

    move-wide/from16 v0, v37

    invoke-virtual {v9, v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->setCreatedLong(J)V

    .line 717
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v37

    move-wide/from16 v0, v37

    invoke-virtual {v9, v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->setUpdatedLong(J)V

    .line 718
    const-wide/16 v37, 0x0

    move-wide/from16 v0, v37

    invoke-virtual {v9, v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->setSize(J)V

    .line 719
    invoke-virtual {v13}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->getContent()Lcom/infraware/filemanager/webstorage/objects/google/Content;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->setContent(Lcom/infraware/filemanager/webstorage/objects/google/Content;)V

    .line 720
    invoke-virtual {v13}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->getCategories()Ljava/util/List;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->setCategories(Ljava/util/List;)V

    .line 722
    new-instance v22, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-direct/range {v22 .. v22}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;-><init>()V

    .line 723
    .local v22, newNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->setUserObject(Ljava/lang/Object;)V

    .line 724
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    .line 726
    const/16 v37, 0x1

    goto/16 :goto_cc

    .line 670
    .end local v8           #documentId:Ljava/lang/String;
    .end local v9           #documentsEntry:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;
    .end local v13           #feed:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;
    .end local v16           #idIndex:I
    .end local v22           #newNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    .restart local v15       #i:I
    :cond_243
    sub-int v37, v15, v36

    :try_start_245
    aget-byte v38, v31, v15

    aput-byte v38, v3, v37
    :try_end_249
    .catch Ljava/io/IOException; {:try_start_245 .. :try_end_249} :catch_24d

    .line 669
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_138

    .line 687
    .end local v15           #i:I
    :catch_24d
    move-exception v10

    .line 688
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v37

    sget-object v38, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->GOOGLE_EXCEPTION_CLASS:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v37

    if-eqz v37, :cond_266

    .line 689
    new-instance v37, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    move-object/from16 v0, v37

    invoke-direct {v0, v10}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v37

    :cond_266
    move-object v12, v10

    .line 691
    check-cast v12, Lcom/google/api/client/http/HttpResponseException;

    goto/16 :goto_1bb

    .line 699
    .end local v10           #e:Ljava/io/IOException;
    :catch_26b
    move-exception v10

    .line 700
    .restart local v10       #e:Ljava/io/IOException;
    const/16 v37, 0x1

    goto/16 :goto_cc

    .line 731
    .end local v10           #e:Ljava/io/IOException;
    :cond_270
    iget-object v0, v12, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/HttpResponse;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    move/from16 v37, v0

    const/16 v38, 0x1f7

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_2d8

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/google/api/client/googleapis/GoogleTransport;->buildPutRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v23

    .line 734
    .local v23, queryRequest:Lcom/google/api/client/http/HttpRequest;
    move-object/from16 v0, v29

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 736
    new-instance v37, Ljava/io/ByteArrayInputStream;

    const/16 v38, 0x0

    move/from16 v0, v38

    new-array v0, v0, [B

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v37

    iput-object v0, v4, Lcom/google/api/client/http/InputStreamContent;->inputStream:Ljava/io/InputStream;

    .line 737
    const-string v37, "text/html"

    move-object/from16 v0, v37

    iput-object v0, v4, Lcom/google/api/client/http/InputStreamContent;->type:Ljava/lang/String;

    .line 738
    const-wide/16 v37, 0x0

    move-wide/from16 v0, v37

    iput-wide v0, v4, Lcom/google/api/client/http/InputStreamContent;->length:J

    .line 740
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v37, v0

    const-string v38, "Content-Range"

    new-instance v39, Ljava/lang/StringBuilder;

    const-string v40, "bytes * /"

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 744
    :try_start_2d1
    invoke-virtual/range {v23 .. v23}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/google/api/client/http/HttpResponse;->ignore()V
    :try_end_2d8
    .catch Ljava/io/IOException; {:try_start_2d1 .. :try_end_2d8} :catch_392

    .line 756
    .end local v23           #queryRequest:Lcom/google/api/client/http/HttpRequest;
    :cond_2d8
    iget-object v0, v12, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/HttpResponse;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    move/from16 v37, v0

    const/16 v38, 0x134

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_3c8

    .line 758
    iget-object v0, v12, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/HttpResponse;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v37, v0

    const-string v38, "Location"

    invoke-virtual/range {v37 .. v38}, Lcom/google/api/client/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    if-eqz v37, :cond_319

    .line 759
    new-instance v29, Lcom/google/api/client/googleapis/GoogleUrl;

    .end local v29           #sendUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    iget-object v0, v12, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/HttpResponse;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v37, v0

    const-string v38, "Location"

    invoke-virtual/range {v37 .. v38}, Lcom/google/api/client/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/google/api/client/googleapis/GoogleUrl;-><init>(Ljava/lang/String;)V

    .line 761
    .restart local v29       #sendUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    :cond_319
    iget-object v0, v12, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/HttpResponse;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v37, v0

    const-string v38, "Range"

    invoke-virtual/range {v37 .. v38}, Lcom/google/api/client/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    if-eqz v37, :cond_389

    .line 763
    iget-object v0, v12, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/HttpResponse;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v37, v0

    const-string v38, "Range"

    invoke-virtual/range {v37 .. v38}, Lcom/google/api/client/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    .line 764
    .local v24, range:Ljava/lang/String;
    const-string v37, "bytes="

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_355

    .line 765
    const/16 v37, 0x6

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 767
    :cond_355
    const/16 v37, 0x2d

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v25

    .line 768
    .local v25, rangeIndex:I
    const/16 v37, -0x1

    move/from16 v0, v25

    move/from16 v1, v37

    if-eq v0, v1, :cond_371

    .line 769
    add-int/lit8 v37, v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 771
    :cond_371
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v37

    add-int/lit8 v37, v37, 0x1

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v38, v0

    sub-int v36, v37, v38

    .line 772
    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v37, v0

    add-long v17, v17, v37

    .line 775
    .end local v24           #range:Ljava/lang/String;
    .end local v25           #rangeIndex:I
    :cond_389
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v31

    .end local v31           #tmpbuf:[B
    check-cast v31, [B

    .line 780
    .restart local v31       #tmpbuf:[B
    const/4 v12, 0x0

    goto/16 :goto_110

    .line 745
    .restart local v23       #queryRequest:Lcom/google/api/client/http/HttpRequest;
    :catch_392
    move-exception v10

    .line 746
    .restart local v10       #e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v37

    sget-object v38, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->GOOGLE_EXCEPTION_CLASS:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v37

    if-eqz v37, :cond_3ab

    .line 747
    new-instance v37, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    move-object/from16 v0, v37

    invoke-direct {v0, v10}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v37

    :cond_3ab
    move-object v12, v10

    .line 749
    check-cast v12, Lcom/google/api/client/http/HttpResponseException;

    .line 750
    iget-object v0, v12, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/HttpResponse;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    move/from16 v37, v0

    const/16 v38, 0x134

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_2d8

    .line 751
    new-instance v37, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    move-object/from16 v0, v37

    invoke-direct {v0, v10}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v37

    .line 778
    .end local v10           #e:Ljava/io/IOException;
    .end local v23           #queryRequest:Lcom/google/api/client/http/HttpRequest;
    :cond_3c8
    new-instance v37, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    move-object/from16 v0, v37

    invoke-direct {v0, v12}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v37
.end method
