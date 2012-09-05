.class public Lcom/google/android/apps/books/net/BooksHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "BooksHttpClient.java"


# instance fields
.field private final mFilesDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;Ljava/io/File;)V
    .registers 4
    .parameter "conman"
    .parameter "params"
    .parameter "filesDir"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 37
    iput-object p3, p0, Lcom/google/android/apps/books/net/BooksHttpClient;->mFilesDir:Ljava/io/File;

    .line 38
    return-void
.end method


# virtual methods
.method protected createCookieStore()Lorg/apache/http/client/CookieStore;
    .registers 5

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/apps/books/net/BooksCookieStore;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/apps/books/net/BooksHttpClient;->mFilesDir:Ljava/io/File;

    const-string v3, "CookieStore"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/net/BooksCookieStore;-><init>(Ljava/io/File;)V

    return-object v0
.end method
