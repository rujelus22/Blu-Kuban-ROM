.class Lcom/google/android/apps/books/render/WebViewRenderer$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/render/WebViewRenderer;-><init>(Landroid/view/ViewGroup;Landroid/content/ContentResolver;Landroid/accounts/Account;Lcom/google/android/apps/books/render/ReaderSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/WebViewRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/WebViewRenderer;)V
    .registers 2
    .parameter

    .prologue
    .line 167
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$3;,"Lcom/google/android/apps/books/render/WebViewRenderer.3;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRenderer$3;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 11
    .parameter "view"
    .parameter "url"

    .prologue
    .line 170
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$3;,"Lcom/google/android/apps/books/render/WebViewRenderer.3;"
    const-string v5, "WebViewRenderer"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 171
    const-string v5, "WebViewRenderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldInterceptRequest(url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_27
    :try_start_27
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRenderer$3;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-virtual {v5}, Lcom/google/android/apps/books/render/WebViewRenderer;->getFetchService()Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v2

    .line 176
    .local v2, fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRenderer$3;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-virtual {v5}, Lcom/google/android/apps/books/render/WebViewRenderer;->getMetadata()Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v4

    .line 178
    .local v4, metadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 179
    .local v0, contentUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I
    :try_end_48
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_48} :catch_72
    .catch Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException; {:try_start_27 .. :try_end_48} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_48} :catch_82
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_48} :catch_89

    move-result v3

    .line 180
    .local v3, match:I
    sparse-switch v3, :sswitch_data_96

    .line 206
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v2           #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    .end local v3           #match:I
    .end local v4           #metadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    :goto_4c
    const-string v5, "WebViewRenderer"

    const-string v6, "unable to build valid response, returning 404 not found"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    #calls: Lcom/google/android/apps/books/render/WebViewRenderer;->buildNotFoundResponse()Landroid/webkit/WebResourceResponse;
    invoke-static {}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$600()Landroid/webkit/WebResourceResponse;

    move-result-object v5

    :goto_57
    return-object v5

    .line 182
    .restart local v0       #contentUri:Landroid/net/Uri;
    .restart local v2       #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    .restart local v3       #match:I
    .restart local v4       #metadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    :sswitch_58
    :try_start_58
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRenderer$3;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    iget-object v6, p0, Lcom/google/android/apps/books/render/WebViewRenderer$3;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #getter for: Lcom/google/android/apps/books/render/WebViewRenderer;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$200(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/content/ContentResolver;

    move-result-object v6

    #calls: Lcom/google/android/apps/books/render/WebViewRenderer;->buildSectionContentResponse(Landroid/content/ContentResolver;Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;
    invoke-static {v5, v6, v2, v4, v0}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$300(Lcom/google/android/apps/books/render/WebViewRenderer;Landroid/content/ContentResolver;Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;

    move-result-object v5

    goto :goto_57

    .line 186
    :sswitch_65
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRenderer$3;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    iget-object v6, p0, Lcom/google/android/apps/books/render/WebViewRenderer$3;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #getter for: Lcom/google/android/apps/books/render/WebViewRenderer;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$200(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/content/ContentResolver;

    move-result-object v6

    #calls: Lcom/google/android/apps/books/render/WebViewRenderer;->buildResourceContentResponse(Landroid/content/ContentResolver;Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;
    invoke-static {v5, v6, v2, v4, v0}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$400(Lcom/google/android/apps/books/render/WebViewRenderer;Landroid/content/ContentResolver;Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;
    :try_end_70
    .catch Ljava/lang/IllegalAccessException; {:try_start_58 .. :try_end_70} :catch_72
    .catch Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException; {:try_start_58 .. :try_end_70} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_70} :catch_82
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_70} :catch_89

    move-result-object v5

    goto :goto_57

    .line 190
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v2           #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    .end local v3           #match:I
    .end local v4           #metadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    :catch_72
    move-exception v1

    .line 192
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v5, "WebViewRenderer"

    const-string v6, "shouldInterceptRequest was missing VolumeMetadata"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 193
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_7b
    move-exception v1

    .line 196
    .local v1, e:Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRenderer$3;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #calls: Lcom/google/android/apps/books/render/WebViewRenderer;->dispatchWebViewClientError(Ljava/lang/Exception;)V
    invoke-static {v5, v1}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$500(Lcom/google/android/apps/books/render/WebViewRenderer;Ljava/lang/Exception;)V

    goto :goto_4c

    .line 197
    .end local v1           #e:Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;
    :catch_82
    move-exception v1

    .line 198
    .local v1, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRenderer$3;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #calls: Lcom/google/android/apps/books/render/WebViewRenderer;->dispatchWebViewClientError(Ljava/lang/Exception;)V
    invoke-static {v5, v1}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$500(Lcom/google/android/apps/books/render/WebViewRenderer;Ljava/lang/Exception;)V

    goto :goto_4c

    .line 199
    .end local v1           #e:Ljava/lang/Exception;
    :catch_89
    move-exception v1

    .line 202
    .local v1, e:Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRenderer$3;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #calls: Lcom/google/android/apps/books/render/WebViewRenderer;->dispatchWebViewClientError(Ljava/lang/Exception;)V
    invoke-static {v5, v6}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$500(Lcom/google/android/apps/books/render/WebViewRenderer;Ljava/lang/Exception;)V

    goto :goto_4c

    .line 180
    nop

    :sswitch_data_96
    .sparse-switch
        0xca -> :sswitch_58
        0x12e -> :sswitch_65
    .end sparse-switch
.end method
