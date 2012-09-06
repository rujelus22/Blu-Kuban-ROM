.class Lcom/google/android/apps/plus/service/SubscribedFeeds;
.super Ljava/lang/Object;
.source "SubscribedFeeds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/service/SubscribedFeeds$Feeds;
    }
.end annotation


# direct methods
.method public static addFeed(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 8
    .parameter "resolver"
    .parameter "feed"
    .parameter "account"
    .parameter "authority"
    .parameter "service"

    .prologue
    .line 156
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 157
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "feed"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "_sync_account"

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "_sync_account_type"

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "authority"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "service"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object v1, Lcom/google/android/apps/plus/service/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static deleteFeeds(Landroid/content/ContentResolver;Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 9
    .parameter "resolver"
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v0, where:Ljava/lang/StringBuilder;
    const-string v1, "_sync_account=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, " AND _sync_account_type=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, " AND authority=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    sget-object v1, Lcom/google/android/apps/plus/service/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
