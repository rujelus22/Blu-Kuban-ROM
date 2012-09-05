.class public Lcom/google/android/apps/plus/api/GetFaviconOperation;
.super Lcom/google/android/apps/plus/network/HttpOperation;
.source "GetFaviconOperation.java"


# instance fields
.field private final mDomain:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "domain"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 42
    const-string v2, "GET"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.google.com/s2/u/0/favicons?domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x3a98

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const-string v8, "webupdates"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/network/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Ljava/lang/String;)V

    .line 45
    iput-object p3, p0, Lcom/google/android/apps/plus/api/GetFaviconOperation;->mDomain:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method protected onHttpHandleContentFromStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 7
    .parameter "inputStream"
    .parameter "contentType"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/GetFaviconOperation;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 55
    .local v0, imageBytes:[B
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/GetFaviconOperation;->onStartResultProcessing()V

    .line 57
    iget-object v1, p0, Lcom/google/android/apps/plus/api/GetFaviconOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/GetFaviconOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/GetFaviconOperation;->mDomain:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertFavicon(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[B)V

    .line 58
    return-void
.end method
