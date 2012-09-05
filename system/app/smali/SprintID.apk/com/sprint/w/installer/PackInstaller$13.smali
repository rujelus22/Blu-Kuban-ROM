.class Lcom/sprint/w/installer/PackInstaller$13;
.super Ljava/lang/Thread;
.source "PackInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackInstaller;->downloadServicePack(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackInstaller;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackInstaller;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 928
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$13;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iput-object p3, p0, Lcom/sprint/w/installer/PackInstaller$13;->val$url:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 931
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    iget-object v11, p0, Lcom/sprint/w/installer/PackInstaller$13;->val$url:Ljava/lang/String;

    invoke-direct {v4, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 932
    .local v4, get:Lorg/apache/http/client/methods/HttpGet;
    const/4 v5, 0x0

    .line 934
    .local v5, is:Ljava/io/InputStream;
    :try_start_8
    iget-object v11, p0, Lcom/sprint/w/installer/PackInstaller$13;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v11, v11, Lcom/sprint/w/installer/PackInstaller;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v11, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 935
    .local v10, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_60

    .line 936
    const-string v11, "content-length"

    invoke-interface {v10, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v8

    .line 937
    .local v8, lenh:Lorg/apache/http/Header;
    const/4 v7, 0x0

    .line 938
    .local v7, len:I
    if-eqz v8, :cond_4e

    .line 939
    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 940
    invoke-static {}, Lcom/sprint/w/installer/PackInstaller;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SP size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 942
    iget-object v11, p0, Lcom/sprint/w/installer/PackInstaller$13;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v11, v11, Lcom/sprint/w/installer/PackInstaller;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v11, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 944
    :cond_4e
    iget-object v11, p0, Lcom/sprint/w/installer/PackInstaller$13;->this$0:Lcom/sprint/w/installer/PackInstaller;

    #calls: Lcom/sprint/w/installer/PackInstaller;->findDownloadTarget(I)Z
    invoke-static {v11, v7}, Lcom/sprint/w/installer/PackInstaller;->access$700(Lcom/sprint/w/installer/PackInstaller;I)Z

    move-result v11

    if-nez v11, :cond_61

    .line 945
    iget-object v11, p0, Lcom/sprint/w/installer/PackInstaller$13;->this$0:Lcom/sprint/w/installer/PackInstaller;

    new-instance v12, Lcom/sprint/w/installer/PackInstaller$13$1;

    invoke-direct {v12, p0}, Lcom/sprint/w/installer/PackInstaller$13$1;-><init>(Lcom/sprint/w/installer/PackInstaller$13;)V

    invoke-virtual {v11, v12}, Lcom/sprint/w/installer/PackInstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 993
    .end local v7           #len:I
    .end local v8           #lenh:Lorg/apache/http/Header;
    .end local v10           #resp:Lorg/apache/http/HttpResponse;
    :cond_60
    :goto_60
    return-void

    .line 952
    .restart local v7       #len:I
    .restart local v8       #lenh:Lorg/apache/http/Header;
    .restart local v10       #resp:Lorg/apache/http/HttpResponse;
    :cond_61
    iget-object v11, p0, Lcom/sprint/w/installer/PackInstaller$13;->this$0:Lcom/sprint/w/installer/PackInstaller;

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_70} :catch_ca

    .end local v5           #is:Ljava/io/InputStream;
    .local v6, is:Ljava/io/InputStream;
    :try_start_70
    iput-object v6, v11, Lcom/sprint/w/installer/PackInstaller;->mInputStream:Ljava/io/InputStream;

    .line 953
    iget-object v11, p0, Lcom/sprint/w/installer/PackInstaller$13;->this$0:Lcom/sprint/w/installer/PackInstaller;

    #calls: Lcom/sprint/w/installer/PackInstaller;->getTargetOutputStream()Ljava/io/FileOutputStream;
    invoke-static {v11}, Lcom/sprint/w/installer/PackInstaller;->access$800(Lcom/sprint/w/installer/PackInstaller;)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 954
    .local v3, fos:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 955
    .local v0, bos:Ljava/io/BufferedOutputStream;
    const v11, 0xc800

    new-array v1, v11, [B

    .line 957
    .local v1, buffer:[B
    :goto_82
    const/4 v11, -0x1

    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, r:I
    if-eq v11, v9, :cond_b1

    .line 958
    const/4 v11, 0x0

    invoke-virtual {v0, v1, v11, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 959
    iget-object v11, p0, Lcom/sprint/w/installer/PackInstaller$13;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v11, v11, Lcom/sprint/w/installer/PackInstaller;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v11, v9}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_94} :catch_95

    goto :goto_82

    .line 971
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v1           #buffer:[B
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v9           #r:I
    :catch_95
    move-exception v2

    move-object v5, v6

    .line 972
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #len:I
    .end local v8           #lenh:Lorg/apache/http/Header;
    .end local v10           #resp:Lorg/apache/http/HttpResponse;
    .local v2, e:Ljava/lang/Exception;
    .restart local v5       #is:Ljava/io/InputStream;
    :goto_97
    invoke-static {}, Lcom/sprint/w/installer/PackInstaller;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v11

    const-string v12, "Error while downloading a pack"

    invoke-virtual {v11, v12, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 974
    :try_start_a0
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a3} :catch_c6

    .line 978
    :goto_a3
    :try_start_a3
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_c8

    .line 981
    :goto_a6
    iget-object v11, p0, Lcom/sprint/w/installer/PackInstaller$13;->this$0:Lcom/sprint/w/installer/PackInstaller;

    new-instance v12, Lcom/sprint/w/installer/PackInstaller$13$3;

    invoke-direct {v12, p0}, Lcom/sprint/w/installer/PackInstaller$13$3;-><init>(Lcom/sprint/w/installer/PackInstaller$13;)V

    invoke-virtual {v11, v12}, Lcom/sprint/w/installer/PackInstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_60

    .line 961
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #buffer:[B
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v7       #len:I
    .restart local v8       #lenh:Lorg/apache/http/Header;
    .restart local v9       #r:I
    .restart local v10       #resp:Lorg/apache/http/HttpResponse;
    :cond_b1
    :try_start_b1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 962
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 963
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 964
    iget-object v11, p0, Lcom/sprint/w/installer/PackInstaller$13;->this$0:Lcom/sprint/w/installer/PackInstaller;

    new-instance v12, Lcom/sprint/w/installer/PackInstaller$13$2;

    invoke-direct {v12, p0}, Lcom/sprint/w/installer/PackInstaller$13$2;-><init>(Lcom/sprint/w/installer/PackInstaller$13;)V

    invoke-virtual {v11, v12}, Lcom/sprint/w/installer/PackInstaller;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_c4} :catch_95

    move-object v5, v6

    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_60

    .line 975
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v1           #buffer:[B
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v7           #len:I
    .end local v8           #lenh:Lorg/apache/http/Header;
    .end local v9           #r:I
    .end local v10           #resp:Lorg/apache/http/HttpResponse;
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_c6
    move-exception v11

    goto :goto_a3

    .line 979
    :catch_c8
    move-exception v11

    goto :goto_a6

    .line 971
    .end local v2           #e:Ljava/lang/Exception;
    :catch_ca
    move-exception v2

    goto :goto_97
.end method
