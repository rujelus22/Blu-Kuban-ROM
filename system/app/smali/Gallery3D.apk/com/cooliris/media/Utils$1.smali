.class final Lcom/cooliris/media/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/Utils;->playVideo(Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$item:Lcom/cooliris/media/MediaItem;


# direct methods
.method constructor <init>(Lcom/cooliris/media/MediaItem;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/cooliris/media/Utils$1;->val$item:Lcom/cooliris/media/MediaItem;

    iput-object p2, p0, Lcom/cooliris/media/Utils$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 117
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/cooliris/media/Utils$1;->val$item:Lcom/cooliris/media/MediaItem;

    iget-object v3, v3, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 118
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/cooliris/media/Utils$1;->val$item:Lcom/cooliris/media/MediaItem;

    iget-object v2, v2, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/cooliris/media/Utils$1;->val$item:Lcom/cooliris/media/MediaItem;

    iget-object v3, v3, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v2, p0, Lcom/cooliris/media/Utils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_23
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_23} :catch_24

    .line 124
    .end local v1           #intent:Landroid/content/Intent;
    :goto_23
    return-void

    .line 120
    :catch_24
    move-exception v0

    .line 121
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/cooliris/media/Utils$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/cooliris/media/Utils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v4, 0x7f06004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_23
.end method
