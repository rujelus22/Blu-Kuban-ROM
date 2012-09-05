.class Lcom/android/browser/homepages/RequestHandler$1;
.super Lcom/android/browser/homepages/Template$CursorListEntityWrapper;
.source "RequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/homepages/RequestHandler;->writeTemplatedIndex()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/homepages/RequestHandler;


# direct methods
.method constructor <init>(Lcom/android/browser/homepages/RequestHandler;Landroid/database/Cursor;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/browser/homepages/RequestHandler$1;->this$0:Lcom/android/browser/homepages/RequestHandler;

    invoke-direct {p0, p2}, Lcom/android/browser/homepages/Template$CursorListEntityWrapper;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public writeValue(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 11
    .parameter "stream"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/android/browser/homepages/RequestHandler$1;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 98
    .local v0, cursor:Landroid/database/Cursor;
    const-string v4, "url"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 99
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 132
    :cond_18
    :goto_18
    return-void

    .line 100
    :cond_19
    const-string v4, "title"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 101
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_18

    .line 102
    :cond_2e
    const-string v4, "thumbnail"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 103
    const-string v4, "data:image/png;base64,"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 104
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 105
    .local v3, thumb:[B
    if-nez v3, :cond_6e

    .line 106
    const-string v4, "RequestHandler"

    const-string v5, "thumbnail == null "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v4, p0, Lcom/android/browser/homepages/RequestHandler$1;->this$0:Lcom/android/browser/homepages/RequestHandler;

    iget-object v4, v4, Lcom/android/browser/homepages/RequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 108
    .local v2, res:Landroid/content/res/Resources;
    const v4, 0x7f020019

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 109
    .local v1, inStream:Ljava/io/InputStream;
    const v4, 0xc800

    new-array v3, v4, [B

    .line 110
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_6e

    .line 111
    const-string v4, "RequestHandler"

    const-string v5, "writeTemplatedIndex  s: size error  "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v1           #inStream:Ljava/io/InputStream;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_6e
    invoke-static {v3, v7}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_18

    .line 115
    .end local v3           #thumb:[B
    :cond_76
    const-string v4, "favicon"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 117
    const-string v4, "data:image/png;base64,"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 118
    const-string v4, "Browser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeTemplatedIndex : s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 120
    .restart local v3       #thumb:[B
    if-nez v3, :cond_c9

    .line 122
    iget-object v4, p0, Lcom/android/browser/homepages/RequestHandler$1;->this$0:Lcom/android/browser/homepages/RequestHandler;

    iget-object v4, v4, Lcom/android/browser/homepages/RequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 123
    .restart local v2       #res:Landroid/content/res/Resources;
    const v4, 0x7f020017

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 124
    .restart local v1       #inStream:Ljava/io/InputStream;
    const/16 v4, 0x7d0

    new-array v3, v4, [B

    .line 125
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_c6

    .line 126
    const-string v4, "RequestHandler"

    const-string v5, "writeTemplatedIndex  s: size error  "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_c6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 130
    .end local v1           #inStream:Ljava/io/InputStream;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_c9
    invoke-static {v3, v7}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_18
.end method
