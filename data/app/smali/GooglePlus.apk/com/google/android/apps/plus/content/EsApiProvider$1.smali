.class Lcom/google/android/apps/plus/content/EsApiProvider$1;
.super Ljava/lang/Object;
.source "EsApiProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/content/EsApiProvider;->getPlusOnes(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/content/EsApiProvider;

.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$info:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

.field final synthetic val$skip:Z

.field final synthetic val$urls:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/content/EsApiProvider;Z[Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/google/android/apps/plus/content/EsApiProvider$1;->this$0:Lcom/google/android/apps/plus/content/EsApiProvider;

    iput-boolean p2, p0, Lcom/google/android/apps/plus/content/EsApiProvider$1;->val$skip:Z

    iput-object p3, p0, Lcom/google/android/apps/plus/content/EsApiProvider$1;->val$urls:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/plus/content/EsApiProvider$1;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iput-object p5, p0, Lcom/google/android/apps/plus/content/EsApiProvider$1;->val$info:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 496
    iget-object v1, p0, Lcom/google/android/apps/plus/content/EsApiProvider$1;->this$0:Lcom/google/android/apps/plus/content/EsApiProvider;

    iget-boolean v2, p0, Lcom/google/android/apps/plus/content/EsApiProvider$1;->val$skip:Z

    invoke-static {}, Lcom/google/android/apps/plus/content/EsApiProvider;->access$000()Landroid/support/v4/util/LruCache;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/content/EsApiProvider$1;->val$urls:[Ljava/lang/String;

    #calls: Lcom/google/android/apps/plus/content/EsApiProvider;->getUncachedUrls(ZLandroid/support/v4/util/LruCache;[Ljava/lang/String;)Ljava/util/List;
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsApiProvider;->access$100(Lcom/google/android/apps/plus/content/EsApiProvider;ZLandroid/support/v4/util/LruCache;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 497
    .local v0, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1d

    .line 499
    iget-object v1, p0, Lcom/google/android/apps/plus/content/EsApiProvider$1;->this$0:Lcom/google/android/apps/plus/content/EsApiProvider;

    iget-object v2, p0, Lcom/google/android/apps/plus/content/EsApiProvider$1;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/content/EsApiProvider$1;->val$info:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    #calls: Lcom/google/android/apps/plus/content/EsApiProvider;->updatePreviewEntries(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Ljava/util/List;)Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/apps/plus/content/EsApiProvider;->access$200(Lcom/google/android/apps/plus/content/EsApiProvider;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Ljava/util/List;)Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;

    .line 502
    :cond_1d
    return-void
.end method
