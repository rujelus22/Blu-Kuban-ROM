.class final Lcom/twitter/android/provider/c;
.super Landroid/content/UriMatcher;


# direct methods
.method constructor <init>(I)V
    .registers 5

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/content/UriMatcher;-><init>(I)V

    const-string v0, "com.twitter.android.provider.GlobalDatabaseProvider"

    const-string v1, "user_values"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/c;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.GlobalDatabaseProvider"

    const-string v1, "user_values/#"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/c;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.GlobalDatabaseProvider"

    const-string v1, "activity_states"

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/c;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.GlobalDatabaseProvider"

    const-string v1, "activity_states/*"

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/c;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.GlobalDatabaseProvider"

    const-string v1, "account_settings"

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/c;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.GlobalDatabaseProvider"

    const-string v1, "account_settings/*"

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/c;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
