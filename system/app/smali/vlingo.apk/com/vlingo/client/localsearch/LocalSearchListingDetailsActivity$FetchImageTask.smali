.class Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$FetchImageTask;
.super Landroid/os/AsyncTask;
.source "LocalSearchListingDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$FetchImageTask;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$FetchImageTask;-><init>(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .parameter "params"

    .prologue
    .line 403
    :try_start_0
    new-instance v3, Ljava/net/URL;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 404
    .local v3, url:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 405
    .local v1, is:Ljava/io/InputStream;
    const-string v4, "src"

    invoke-static {v1, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v2

    .line 410
    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #url:Ljava/net/URL;
    :goto_14
    return-object v2

    .line 407
    :catch_15
    move-exception v0

    .line 408
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v2, 0x0

    goto :goto_14
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 398
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$FetchImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "result"

    .prologue
    const/16 v1, 0x8

    .line 415
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$FetchImageTask;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    #getter for: Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->imageProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->access$1100(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 417
    if-eqz p1, :cond_20

    invoke-virtual {p0}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$FetchImageTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_20

    .line 418
    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$FetchImageTask;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    #getter for: Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->imageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->access$1200(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 422
    :goto_1f
    return-void

    .line 420
    :cond_20
    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$FetchImageTask;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    #getter for: Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->imageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->access$1200(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1f
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 398
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$FetchImageTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
