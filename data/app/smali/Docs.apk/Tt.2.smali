.class public LTt;
.super Ljava/lang/Object;
.source "AccountMetadataUpdater.java"


# instance fields
.field a:LIL;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LLk;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LSw;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LXh;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LSw;Ljava/lang/String;)LSp;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 158
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 159
    invoke-virtual {p0, v0}, LSw;->a(Ljava/io/InputStream;)LSv;

    move-result-object v1

    .line 161
    :try_start_d
    invoke-virtual {v1}, LSv;->b()Lase;

    move-result-object v0

    check-cast v0, LSp;
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 163
    invoke-virtual {v1}, LSv;->a()V

    return-object v0

    :catchall_17
    move-exception v0

    invoke-virtual {v1}, LSv;->a()V

    throw v0
.end method

.method private b(Ljava/lang/String;)LSp;
    .registers 3
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, LTt;->a:LSw;

    invoke-static {v0, p1}, LTt;->a(LSw;Ljava/lang/String;)LSp;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)LSp;
    .registers 5
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, LTt;->a:Llu;

    invoke-interface {v0, p1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 130
    :try_start_6
    invoke-virtual {v0}, LkG;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, LTt;->a(Ljava/lang/String;II)LSp;
    :try_end_10
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_10} :catch_12
    .catch Lasn; {:try_start_6 .. :try_end_10} :catch_1c
    .catch Landroid/accounts/AuthenticatorException; {:try_start_6 .. :try_end_10} :catch_25
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_10} :catch_2e
    .catch LJi; {:try_start_6 .. :try_end_10} :catch_37

    move-result-object v0

    .line 143
    :goto_11
    return-object v0

    .line 131
    :catch_12
    move-exception v0

    .line 132
    const-string v1, "AccountMetadataUpdater"

    const-string v2, "Error updating account capability"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    :goto_1a
    const/4 v0, 0x0

    goto :goto_11

    .line 133
    :catch_1c
    move-exception v0

    .line 134
    const-string v1, "AccountMetadataUpdater"

    const-string v2, "Error updating account capability"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 135
    :catch_25
    move-exception v0

    .line 136
    const-string v1, "AccountMetadataUpdater"

    const-string v2, "Error updating account capability"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 137
    :catch_2e
    move-exception v0

    .line 138
    const-string v1, "AccountMetadataUpdater"

    const-string v2, "Error updating account capability"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 139
    :catch_37
    move-exception v0

    .line 140
    const-string v1, "AccountMetadataUpdater"

    const-string v2, "Error updating account capability"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.method public a(Ljava/lang/String;II)LSp;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    if-lez p3, :cond_a0

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, LafQ;->a(Z)V

    .line 74
    const-string v0, "https://docs.google.com/feeds/metadata/default"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 77
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "include-installed-apps"

    const-string v4, "true"

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "remaining-changestamps-first"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "remaining-changestamps-limit"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 85
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 86
    const-string v0, "GData-Version"

    const-string v2, "3.0"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :try_start_40
    iget-object v0, p0, LTt;->a:LIL;

    invoke-interface {v0, p1, v1}, LIL;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_bd

    .line 91
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-direct {p0, v0}, LTt;->b(Ljava/lang/String;)LSp;

    move-result-object v1

    .line 93
    iget-object v2, p0, LTt;->a:Llu;

    invoke-interface {v2}, Llu;->a()V
    :try_end_63
    .catchall {:try_start_40 .. :try_end_63} :catchall_b1

    .line 95
    :try_start_63
    iget-object v2, p0, LTt;->a:Llu;

    invoke-interface {v2, p1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v2

    .line 96
    iget-object v3, p0, LTt;->a:Llu;

    invoke-interface {v3, v2}, Llu;->a(LkG;)LkH;

    move-result-object v2

    .line 97
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v0, v3}, LkH;->a(Ljava/lang/String;Ljava/util/Date;)V

    .line 98
    invoke-virtual {v2}, LkH;->c()V

    .line 99
    iget-object v0, p0, LTt;->a:Llu;

    invoke-interface {v0}, Llu;->c()V
    :try_end_7f
    .catchall {:try_start_63 .. :try_end_7f} :catchall_a3

    .line 101
    :try_start_7f
    iget-object v0, p0, LTt;->a:Llu;

    invoke-interface {v0}, Llu;->b()V

    .line 102
    const-string v0, "AccountMetadataUpdater"

    const-string v2, "capability updated"

    invoke-static {v0, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, LTt;->a:LXh;

    invoke-interface {v0, p1}, LXh;->a(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, LTt;->a:LLk;

    invoke-virtual {v0, p1}, LLk;->a(Ljava/lang/String;)Z
    :try_end_95
    .catchall {:try_start_7f .. :try_end_95} :catchall_b1

    .line 112
    iget-object v0, p0, LTt;->a:LIL;

    invoke-interface {v0}, LIL;->a()V

    .line 113
    iget-object v0, p0, LTt;->a:LIL;

    invoke-interface {v0}, LIL;->b()V

    return-object v1

    .line 72
    :cond_a0
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 101
    :catchall_a3
    move-exception v0

    :try_start_a4
    iget-object v1, p0, LTt;->a:Llu;

    invoke-interface {v1}, Llu;->b()V

    .line 102
    const-string v1, "AccountMetadataUpdater"

    const-string v2, "capability updated"

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
    :try_end_b1
    .catchall {:try_start_a4 .. :try_end_b1} :catchall_b1

    .line 112
    :catchall_b1
    move-exception v0

    iget-object v1, p0, LTt;->a:LIL;

    invoke-interface {v1}, LIL;->a()V

    .line 113
    iget-object v1, p0, LTt;->a:LIL;

    invoke-interface {v1}, LIL;->b()V

    throw v0

    .line 109
    :cond_bd
    :try_start_bd
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server returned error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_da
    .catchall {:try_start_bd .. :try_end_da} :catchall_b1
.end method
