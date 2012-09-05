.class public Lcom/android/browser/homepages/RequestHandler;
.super Ljava/lang/Thread;
.source "RequestHandler.java"


# static fields
.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field mContext:Landroid/content/Context;

.field mOutput:Ljava/io/OutputStream;

.field mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 42
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/browser/homepages/RequestHandler;->sUriMatcher:Landroid/content/UriMatcher;

    .line 49
    sget-object v0, Lcom/android/browser/homepages/RequestHandler;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.browser.home"

    const-string v2, "/"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    sget-object v0, Lcom/android/browser/homepages/RequestHandler;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.browser.home"

    const-string v2, "res/*/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/io/OutputStream;)V
    .registers 5
    .parameter "context"
    .parameter "uri"
    .parameter "out"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/android/browser/homepages/RequestHandler;->mUri:Landroid/net/Uri;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/homepages/RequestHandler;->mContext:Landroid/content/Context;

    .line 56
    iput-object p3, p0, Lcom/android/browser/homepages/RequestHandler;->mOutput:Ljava/io/OutputStream;

    .line 57
    return-void
.end method


# virtual methods
.method cleanup()V
    .registers 4

    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/homepages/RequestHandler;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 178
    :goto_5
    return-void

    .line 175
    :catch_6
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "RequestHandler"

    const-string v2, "Failed to close pipe!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method doHandleRequest()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    sget-object v1, Lcom/android/browser/homepages/RequestHandler;->sUriMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Lcom/android/browser/homepages/RequestHandler;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 73
    .local v0, match:I
    packed-switch v0, :pswitch_data_18

    .line 81
    :goto_b
    return-void

    .line 75
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/browser/homepages/RequestHandler;->writeTemplatedIndex()V

    goto :goto_b

    .line 78
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/browser/homepages/RequestHandler;->getUriResourcePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/homepages/RequestHandler;->writeResource(Ljava/lang/String;)V

    goto :goto_b

    .line 73
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method

.method getUriResourcePath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 140
    const-string v2, "/?res/([\\w/]+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 141
    .local v1, pattern:Ljava/util/regex/Pattern;
    iget-object v2, p0, Lcom/android/browser/homepages/RequestHandler;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 142
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 143
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 145
    :goto_1b
    return-object v2

    :cond_1c
    iget-object v2, p0, Lcom/android/browser/homepages/RequestHandler;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b
.end method

.method public run()V
    .registers 5

    .prologue
    .line 61
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 63
    :try_start_3
    invoke-virtual {p0}, Lcom/android/browser/homepages/RequestHandler;->doHandleRequest()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_a

    .line 67
    invoke-virtual {p0}, Lcom/android/browser/homepages/RequestHandler;->cleanup()V

    .line 69
    :goto_9
    return-void

    .line 64
    :catch_a
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Exception;
    :try_start_b
    const-string v1, "RequestHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to handle request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/homepages/RequestHandler;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_29

    .line 67
    invoke-virtual {p0}, Lcom/android/browser/homepages/RequestHandler;->cleanup()V

    goto :goto_9

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_29
    move-exception v1

    invoke-virtual {p0}, Lcom/android/browser/homepages/RequestHandler;->cleanup()V

    throw v1
.end method

.method writeResource(Ljava/lang/String;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/browser/homepages/RequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 151
    const-class v1, Lcom/android/browser/R;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    .line 152
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 153
    if-eqz v1, :cond_2f

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 155
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 157
    :goto_1f
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_2c

    .line 158
    iget-object v3, p0, Lcom/android/browser/homepages/RequestHandler;->mOutput:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1f

    .line 160
    :cond_2c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 162
    :cond_2f
    return-void
.end method

.method writeTemplatedIndex()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/browser/homepages/RequestHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f07000e

    invoke-static {v0, v1}, Lcom/android/browser/homepages/Template;->getCachedTemplate(Landroid/content/Context;I)Lcom/android/browser/homepages/Template;

    move-result-object v7

    .line 85
    .local v7, t:Lcom/android/browser/homepages/Template;
    iget-object v0, p0, Lcom/android/browser/homepages/RequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "DISTINCT url"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "thumbnail"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "favicon"

    aput-object v4, v2, v3

    const-string v3, "((visits > 0 AND thumbnail IS NOT NULL)  OR bookmark = 1) AND url NOT LIKE \'content:%\'"

    const/4 v4, 0x0

    const-string v5, "visits DESC LIMIT 12"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 91
    .local v6, cursor:Landroid/database/Cursor;
    const-string v0, "tab_title"

    iget-object v1, p0, Lcom/android/browser/homepages/RequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/browser/homepages/Template;->assign(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "most_visited_title"

    iget-object v1, p0, Lcom/android/browser/homepages/RequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/browser/homepages/Template;->assign(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "most_visited"

    new-instance v1, Lcom/android/browser/homepages/RequestHandler$1;

    invoke-direct {v1, p0, v6}, Lcom/android/browser/homepages/RequestHandler$1;-><init>(Lcom/android/browser/homepages/RequestHandler;Landroid/database/Cursor;)V

    invoke-virtual {v7, v0, v1}, Lcom/android/browser/homepages/Template;->assignLoop(Ljava/lang/String;Lcom/android/browser/homepages/Template$ListEntityIterator;)V

    .line 134
    iget-object v0, p0, Lcom/android/browser/homepages/RequestHandler;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v7, v0}, Lcom/android/browser/homepages/Template;->write(Ljava/io/OutputStream;)V

    .line 136
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 137
    return-void
.end method
