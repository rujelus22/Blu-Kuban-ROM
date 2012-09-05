.class Lcom/vlingo/client/social/SocialAccountActivity$23;
.super Ljava/lang/Object;
.source "SocialAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/social/SocialAccountActivity;->fetchThumbnail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/social/SocialAccountActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/social/SocialAccountActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/vlingo/client/social/SocialAccountActivity$23;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 574
    iget-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity$23;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v4}, Lcom/vlingo/client/social/SocialAccountActivity;->isFoursquare()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 575
    const-string v4, "foursquare_picture_url"

    invoke-static {v4, v5}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 580
    .local v3, url:Ljava/lang/String;
    :try_start_f
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 581
    .local v2, picURL:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 582
    .local v1, image:Landroid/graphics/Bitmap;
    const-string v4, "foursquare_picture"

    invoke-static {v4, v1}, Lcom/vlingo/client/settings/Settings;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_21} :catch_2c

    .line 624
    .end local v1           #image:Landroid/graphics/Bitmap;
    .end local v2           #picURL:Ljava/net/URL;
    .end local v3           #url:Ljava/lang/String;
    :cond_21
    :goto_21
    iget-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity$23;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    new-instance v5, Lcom/vlingo/client/social/SocialAccountActivity$23$1;

    invoke-direct {v5, p0}, Lcom/vlingo/client/social/SocialAccountActivity$23$1;-><init>(Lcom/vlingo/client/social/SocialAccountActivity$23;)V

    invoke-virtual {v4, v5}, Lcom/vlingo/client/social/SocialAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 634
    return-void

    .line 583
    .restart local v3       #url:Ljava/lang/String;
    :catch_2c
    move-exception v0

    .line 584
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21

    .line 589
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #url:Ljava/lang/String;
    :cond_31
    iget-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity$23;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v4}, Lcom/vlingo/client/social/SocialAccountActivity;->isTwitter()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 590
    const-string v4, "twitter_picture_url"

    invoke-static {v4, v5}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 595
    .restart local v3       #url:Ljava/lang/String;
    :try_start_3f
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 596
    .restart local v2       #picURL:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 597
    .restart local v1       #image:Landroid/graphics/Bitmap;
    const-string v4, "twitter_picture"

    invoke-static {v4, v1}, Lcom/vlingo/client/settings/Settings;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_51} :catch_52

    goto :goto_21

    .line 598
    .end local v1           #image:Landroid/graphics/Bitmap;
    .end local v2           #picURL:Ljava/net/URL;
    :catch_52
    move-exception v0

    .line 599
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21

    .line 604
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #url:Ljava/lang/String;
    :cond_57
    iget-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity$23;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v4}, Lcom/vlingo/client/social/SocialAccountActivity;->isFacebook()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 608
    const-string v4, "facebook_picture_url"

    invoke-static {v4, v5}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 613
    .restart local v3       #url:Ljava/lang/String;
    :try_start_65
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 614
    .restart local v2       #picURL:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 615
    .restart local v1       #image:Landroid/graphics/Bitmap;
    const-string v4, "facebook_picture"

    invoke-static {v4, v1}, Lcom/vlingo/client/settings/Settings;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_77} :catch_78

    goto :goto_21

    .line 616
    .end local v1           #image:Landroid/graphics/Bitmap;
    .end local v2           #picURL:Ljava/net/URL;
    :catch_78
    move-exception v0

    .line 617
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method
