.class public Lcom/twitter/android/provider/TwitterProvider;
.super Landroid/content/ContentProvider;


# static fields
.field private static final a:Z

.field private static final b:Landroid/content/UriMatcher;

.field private static final c:Landroid/net/Uri;

.field private static final d:Landroid/net/Uri;

.field private static final e:Landroid/net/Uri;

.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/16 v8, 0x259

    const/16 v7, 0x258

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sput-boolean v4, Lcom/twitter/android/provider/TwitterProvider;->a:Z

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "users"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "users/id/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "user_groups"

    const/16 v3, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "user_groups_view/#"

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "user_groups_view/following/#"

    const/16 v3, 0x48

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "user_groups_view/followers/#"

    const/16 v3, 0x49

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "user_groups_view/blocked/#"

    const/16 v3, 0x4a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "user_groups_view/members/#"

    const/16 v3, 0x4b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "user_groups_view/subscribers/#"

    const/16 v3, 0x4c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "user_groups_view/people/#"

    const/16 v3, 0x4d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "user_groups_view/search"

    const/16 v3, 0x4e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "user_groups_view/slug/#"

    const/16 v3, 0x4f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "user_groups_view/contacts/#"

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "user_groups_view/activity_sources/#"

    const/16 v3, 0x51

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "user_groups_view/favorited/#"

    const/16 v3, 0x52

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "user_groups_view/retweeted/#"

    const/16 v3, 0x53

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "user_groups_view/activity_targets/#"

    const/16 v3, 0x54

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "user_groups_view/dm_contacts/#"

    const/16 v3, 0x55

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "user_groups_view/notifications/#"

    const/16 v3, 0x56

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "statuses"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "statuses/id/#"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups"

    const/16 v3, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups/#"

    const/16 v3, 0x6f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups_view"

    const/16 v3, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups_view/#"

    const/16 v3, 0x79

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups_view/id/#"

    const/16 v3, 0x7a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups_view/timeline/#"

    const/16 v3, 0x7b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups_view/favorites/#"

    const/16 v3, 0x7c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups_view/home/#"

    const/16 v3, 0x7d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups_view/replies/#"

    const/16 v3, 0x7e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups_view/mentions/#"

    const/16 v3, 0x80

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups_view/retweetedbyme/#"

    const/16 v3, 0x81

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups_view/retweetedtome/#"

    const/16 v3, 0x82

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups_view/retweetsofme/#"

    const/16 v3, 0x83

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups_view/list/#"

    const/16 v3, 0x84

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups_view/drafts/#"

    const/16 v3, 0x85

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups_view/mentions_and_rts/#"

    const/16 v3, 0x86

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups_view/conversation/#"

    const/16 v3, 0x88

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups_view/search_results/#"

    const/16 v3, 0x89

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups_view/discover_social_proof/#"

    const/16 v3, 0x8c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups_view/activity_targets/#"

    const/16 v3, 0x8a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups_view/activity_target_objects/#"

    const/16 v3, 0x8b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "status_groups_retweets_view/rt_timeline/#"

    const/16 v3, 0x87

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "messages"

    const/16 v3, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "messages/id/#"

    const/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "messages_sent_view/#"

    const/16 v3, 0xd5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "messages_received_view/#"

    const/16 v3, 0xd6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "messages_threaded/#"

    const/16 v3, 0xd7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "messages_conversation"

    const/16 v3, 0xd8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "lists"

    const/16 v3, 0xdc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "lists/id/#"

    const/16 v3, 0xdd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "lists_view"

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "lists_view/#"

    const/16 v3, 0x12d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "lists_view/id/#"

    const/16 v3, 0x12e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "search_queries"

    const/16 v3, 0x208

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "search_queries/#"

    const/16 v3, 0x209

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "search_suggest_query"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "search_suggest_query/*"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "search_suggest_shortcut"

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "search_suggest_shortcut/*"

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "activities"

    const/16 v3, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "stories"

    const/16 v3, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "slug_users_view"

    const/16 v3, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "user_recommendations_view"

    const/16 v3, 0x385

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "user_recommendations_view/similar_to/#"

    const/16 v3, 0x386

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const-string v2, "notifications"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "android.resource://com.twitter.android/drawable/ic_search_default"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/TwitterProvider;->c:Landroid/net/Uri;

    const-string v0, "android.resource://com.twitter.android/drawable/ic_search_user"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/TwitterProvider;->d:Landroid/net/Uri;

    const-string v0, "android.resource://com.twitter.android/drawable/ic_search_saved"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/TwitterProvider;->e:Landroid/net/Uri;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v5

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/provider/TwitterProvider;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;J)J
    .registers 12

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "status_groups_view"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "in_r_status_id"

    aput-object v0, v2, v6

    const-string v3, "g_status_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const-string v8, "1"

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_32

    :try_start_20
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_35

    move-result-wide v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_2e
    return-wide v0

    :cond_2f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_32
    const-wide/16 v0, 0x0

    goto :goto_2e

    :catchall_35
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/MatrixCursor;Ljava/lang/String;JZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;)J
    .registers 20

    if-eqz p5, :cond_30

    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    const-wide/16 v1, 0x1

    add-long/2addr v1, p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    sget-object v4, Lcom/twitter/android/provider/TwitterProvider;->d:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {v3, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string v4, "com.twitter.android.action.USER_SHOW"

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-wide p3, v1

    :cond_30
    const-string v2, "tokens_user_view"

    sget-object v3, Lcom/twitter/android/provider/bf;->a:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_ad

    move-wide v3, p3

    :goto_4a
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a7

    const/4 v1, 0x1

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ab

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v7

    const-wide/16 v1, 0x1

    add-long/2addr v1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    sget-object v3, Lcom/twitter/android/provider/TwitterProvider;->d:Landroid/net/Uri;

    invoke-virtual {v7, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {v7, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v3, 0x2

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_a1

    const-string v3, "com.twitter.android.action.USER_SHOW_TYPEAHEAD"

    invoke-virtual {v7, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :goto_8d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :goto_9f
    move-wide v3, v1

    goto :goto_4a

    :cond_a1
    const-string v3, "com.twitter.android.action.USER_SHOW_SEARCH_SUGGESTION"

    invoke-virtual {v7, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_8d

    :cond_a7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :goto_aa
    return-wide v3

    :cond_ab
    move-wide v1, v3

    goto :goto_9f

    :cond_ad
    move-wide v3, p3

    goto :goto_aa
.end method

.method private a(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "search_queries"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v1, "name LIKE "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    const-string v1, " AND query!=\'\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v1, " AND query NOT LIKE \'place:%\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/provider/TwitterProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/twitter/android/provider/bg;->b(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v12, v1, v2}, Lcom/twitter/android/provider/ae;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/be;->a:[Ljava/lang/String;

    const-string v3, "type IN (6,0,4)"

    const/4 v4, 0x0

    const-string v5, "name"

    const/4 v6, 0x0

    const-string v7, "type ASC, query_id DESC, time ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->f:[Ljava/lang/String;

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const-wide/16 v3, 0x1

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_214

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    sget-object v0, Lcom/twitter/android/util/k;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    const/4 v0, 0x0

    if-eqz v5, :cond_103

    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x40

    if-ne v6, v7, :cond_ad

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    const-string v7, "text LIKE ? AND username NOT NULL"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x25

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v9

    const-string v9, "graph_weight DESC, LOWER(username) ASC"

    invoke-static/range {v1 .. v10}, Lcom/twitter/android/provider/TwitterProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/MatrixCursor;Ljava/lang/String;JZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;)J

    move-result-wide v3

    const/4 v5, 0x0

    :cond_ad
    :goto_ad
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    const-wide/16 v6, 0x1

    add-long/2addr v6, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    sget-object v3, Lcom/twitter/android/provider/TwitterProvider;->c:Landroid/net/Uri;

    invoke-virtual {v8, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    sget v3, Lcom/twitter/android/eb;->search_for:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v11, v4, v9

    invoke-virtual {v12, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {v8, v11}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string v3, "com.twitter.android.action.SEARCH"

    invoke-virtual {v8, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    if-eqz v5, :cond_211

    if-eqz v0, :cond_10f

    const-wide/16 v4, 0x2

    const/4 v6, 0x0

    const-string v7, "name LIKE ?"

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v9, 0x25

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v0

    const-string v9, "graph_weight DESC, LOWER(name) ASC"

    move-object v3, v11

    invoke-static/range {v1 .. v10}, Lcom/twitter/android/provider/TwitterProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/MatrixCursor;Ljava/lang/String;JZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;)J

    move-result-wide v0

    :goto_100
    if-nez v13, :cond_16b

    :goto_102
    return-object v2

    :cond_103
    sget-object v0, Lcom/twitter/android/util/k;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    move v5, v0

    goto :goto_ad

    :cond_10f
    const-wide/16 v4, 0x2

    const/4 v6, 0x1

    const-string v7, "text LIKE ? AND username NOT NULL"

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v9, 0x25

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v0

    const-string v9, "graph_weight DESC, LOWER(username) ASC"

    move-object v3, v11

    invoke-static/range {v1 .. v10}, Lcom/twitter/android/provider/TwitterProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/MatrixCursor;Ljava/lang/String;JZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;)J

    move-result-wide v0

    goto :goto_100

    :pswitch_135
    :try_start_135
    sget-object v5, Lcom/twitter/android/provider/TwitterProvider;->c:Landroid/net/Uri;

    const-string v4, "com.twitter.android.action.SEARCH_USERS"

    move-object v6, v4

    move-object v7, v5

    move-object v5, v3

    :goto_13c
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v9

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {v9, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v0, 0x0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v0, 0x1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {v9, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {v9, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-wide v0, v3

    :cond_16b
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_207

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x2

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    sget-object v5, Lcom/twitter/android/provider/w;->a:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v5, "type"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    packed-switch v6, :pswitch_data_218

    :pswitch_18a
    sget-object v5, Lcom/twitter/android/provider/TwitterProvider;->c:Landroid/net/Uri;

    const/4 v7, 0x3

    invoke-interface {v13, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_1fe

    const/4 v7, 0x4

    invoke-interface {v13, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_1fe

    const-string v4, "com.twitter.android.action.SEARCH_NEARBY"

    const/4 v3, 0x3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    const/4 v3, 0x4

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    const/4 v3, 0x5

    invoke-interface {v13, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1e2

    sget v3, Lcom/twitter/android/eb;->near_coords:I

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v11, v14

    const/4 v14, 0x1

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v11, v14

    invoke-virtual {v12, v3, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1c4
    const-string v11, "latitude"

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v11, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v6, "longitude"

    invoke-static {v9, v10}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-object v6, v4

    move-object v7, v5

    move-object v5, v3

    goto/16 :goto_13c

    :pswitch_1db
    sget-object v5, Lcom/twitter/android/provider/TwitterProvider;->e:Landroid/net/Uri;

    move-object v6, v4

    move-object v7, v5

    move-object v5, v3

    goto/16 :goto_13c

    :cond_1e2
    const/4 v3, 0x5

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v3, Lcom/twitter/android/eb;->near_location:I

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    invoke-virtual {v12, v3, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v14, "location"

    invoke-virtual {v8, v14, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_1f8
    .catchall {:try_start_135 .. :try_end_1f8} :catchall_1f9

    goto :goto_1c4

    :catchall_1f9
    move-exception v0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1fe
    if-nez v6, :cond_20c

    :try_start_200
    const-string v4, "com.twitter.android.action.SEARCH_RECENT"
    :try_end_202
    .catchall {:try_start_200 .. :try_end_202} :catchall_1f9

    move-object v6, v4

    move-object v7, v5

    move-object v5, v3

    goto/16 :goto_13c

    :cond_207
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_102

    :cond_20c
    move-object v6, v4

    move-object v7, v5

    move-object v5, v3

    goto/16 :goto_13c

    :cond_211
    move-wide v0, v6

    goto/16 :goto_100

    :cond_214
    move-wide v0, v3

    goto/16 :goto_100

    nop

    :pswitch_data_218
    .packed-switch 0x4
        :pswitch_135
        :pswitch_18a
        :pswitch_1db
    .end packed-switch
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Delete not supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_5e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1e
    const-string v0, "vnd.android.cursor.dir/vnd.twitter.android.users"

    :goto_20
    return-object v0

    :sswitch_21
    const-string v0, "vnd.android.cursor.item/vnd.twitter.android.users"

    goto :goto_20

    :sswitch_24
    const-string v0, "vnd.android.cursor.dir/vnd.twitter.android.users.groups"

    goto :goto_20

    :sswitch_27
    const-string v0, "vnd.android.cursor.dir/vnd.twitter.android.statuses"

    goto :goto_20

    :sswitch_2a
    const-string v0, "vnd.android.cursor.item/vnd.twitter.android.statuses"

    goto :goto_20

    :sswitch_2d
    const-string v0, "vnd.android.cursor.item/vnd.twitter.android.statuses"

    goto :goto_20

    :sswitch_30
    const-string v0, "vnd.android.cursor.dir/vnd.twitter.android.statuses"

    goto :goto_20

    :sswitch_33
    const-string v0, "vnd.android.cursor.dir/vnd.twitter.android.statuses.groups"

    goto :goto_20

    :sswitch_36
    const-string v0, "vnd.android.cursor.item/vnd.twitter.android.statuses.groups"

    goto :goto_20

    :sswitch_39
    const-string v0, "vnd.android.cursor.item/vnd.twitter.android.messages"

    goto :goto_20

    :sswitch_3c
    const-string v0, "vnd.android.cursor.dir/vnd.twitter.android.messages"

    goto :goto_20

    :sswitch_3f
    const-string v0, "vnd.android.cursor.dir/vnd.twitter.android.lists"

    goto :goto_20

    :sswitch_42
    const-string v0, "vnd.android.cursor.item/vnd.twitter.android.lists"

    goto :goto_20

    :sswitch_45
    const-string v0, "vnd.android.cursor.dir/vnd.twitter.android.search.queries"

    goto :goto_20

    :sswitch_48
    const-string v0, "vnd.android.cursor.item/vnd.twitter.android.search.queries"

    goto :goto_20

    :sswitch_4b
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    goto :goto_20

    :sswitch_4e
    const-string v0, "vnd.android.cursor.item/vnd.android.search.suggest"

    goto :goto_20

    :sswitch_51
    const-string v0, "vnd.android.cursor.dir/vnd.twitter.android.activities"

    goto :goto_20

    :sswitch_54
    const-string v0, "vnd.android.cursor.dir/vnd.twitter.android.stories"

    goto :goto_20

    :sswitch_57
    const-string v0, "vnd.android.cursor.dir/vnd.twitter.android.search.queries"

    goto :goto_20

    :sswitch_5a
    const-string v0, "vnd.android.cursor.dir/vnd.twitter.android.notifications"

    goto :goto_20

    nop

    :sswitch_data_5e
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_21
        0x14 -> :sswitch_27
        0x15 -> :sswitch_2a
        0x3c -> :sswitch_24
        0x46 -> :sswitch_24
        0x48 -> :sswitch_24
        0x49 -> :sswitch_24
        0x4a -> :sswitch_24
        0x4b -> :sswitch_24
        0x4c -> :sswitch_24
        0x4d -> :sswitch_24
        0x4e -> :sswitch_24
        0x51 -> :sswitch_24
        0x52 -> :sswitch_24
        0x53 -> :sswitch_24
        0x54 -> :sswitch_24
        0x55 -> :sswitch_24
        0x56 -> :sswitch_24
        0x6e -> :sswitch_33
        0x6f -> :sswitch_36
        0x78 -> :sswitch_30
        0x79 -> :sswitch_2d
        0x7a -> :sswitch_2d
        0x7b -> :sswitch_30
        0x7c -> :sswitch_30
        0x7d -> :sswitch_30
        0x7e -> :sswitch_30
        0x80 -> :sswitch_30
        0x81 -> :sswitch_30
        0x82 -> :sswitch_30
        0x83 -> :sswitch_30
        0x84 -> :sswitch_30
        0x85 -> :sswitch_30
        0x86 -> :sswitch_30
        0x87 -> :sswitch_30
        0x88 -> :sswitch_30
        0x89 -> :sswitch_30
        0x8a -> :sswitch_30
        0x8b -> :sswitch_30
        0x8c -> :sswitch_30
        0xc8 -> :sswitch_39
        0xc9 -> :sswitch_3c
        0xd5 -> :sswitch_3c
        0xd6 -> :sswitch_3c
        0xd7 -> :sswitch_3c
        0xdc -> :sswitch_3f
        0xdd -> :sswitch_42
        0x12c -> :sswitch_3f
        0x12d -> :sswitch_42
        0x12e -> :sswitch_42
        0x208 -> :sswitch_45
        0x209 -> :sswitch_48
        0x258 -> :sswitch_4b
        0x259 -> :sswitch_4e
        0x2bc -> :sswitch_51
        0x320 -> :sswitch_54
        0x384 -> :sswitch_57
        0x3e8 -> :sswitch_5a
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Insert not supported "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 26

    const/16 v16, 0x0

    const-string v1, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "ownerId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/provider/TwitterProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/twitter/android/provider/ae;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    :goto_26
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    sget-boolean v3, Lcom/twitter/android/provider/TwitterProvider;->a:Z

    if-eqz v3, :cond_57

    const-string v3, "TwitterProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "QUERY uri: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    sget-object v3, Lcom/twitter/android/provider/TwitterProvider;->b:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    sparse-switch v3, :sswitch_data_ad6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown URL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_79
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/provider/TwitterProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/twitter/android/provider/ae;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    goto :goto_26

    :sswitch_8a
    const-string v4, "users"

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "user_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    :cond_a8
    const-string v3, "profile_created DESC"

    move-object v10, v12

    move-object/from16 v4, p2

    :goto_ad
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ac9

    move-object/from16 v18, p5

    :goto_b5
    sget-boolean v3, Lcom/twitter/android/provider/TwitterProvider;->a:Z

    if-eqz v3, :cond_da

    const-string v11, "TwitterProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v3, "QUERY: "

    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_da
    const/16 v17, 0x0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v4

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v19, v10

    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    sget-boolean v2, Lcom/twitter/android/provider/TwitterProvider;->a:Z

    if-eqz v2, :cond_105

    const-string v2, "TwitterProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QUERY results: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_105
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/provider/TwitterProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v1, v2, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :goto_112
    return-object v1

    :sswitch_113
    const-string v3, "user_groups"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v3, "type DESC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto :goto_ad

    :sswitch_126
    const-string v3, "user_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "_id ASC"

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_148
    const-string v3, "user_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "_id ASC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_178
    const-string v3, "user_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "_id ASC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_1a8
    const-string v3, "user_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v3, "type=2"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "_id ASC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_1c1
    const-string v3, "user_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v3, "type=4"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "_id ASC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_1da
    const-string v3, "user_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v3, "type=5"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "_id ASC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_1f3
    const-string v3, "user_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v3, "type=3"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "_id ASC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_20c
    const-string v3, "user_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type IN (1,0,15"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",-1)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "_id ASC"

    const-string v16, "user_id"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_244
    const-string v3, "user_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type=6"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "_id ASC"

    const-string v16, "user_id"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_276
    const-string v3, "user_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type=7"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "_id ASC"

    const-string v16, "user_id"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_2a8
    const-string v3, "user_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type=8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "_id ASC"

    const-string v16, "user_id"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_2da
    const-string v3, "user_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type=13"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "_id ASC"

    const-string v16, "user_id"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_30c
    const-string v3, "user_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND (friendship&8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR type=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "_id ASC"

    const-string v16, "user_id"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_356
    const-string v3, "user_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type=16"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "_id ASC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_386
    const-string v3, "user_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type=11"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "_id ASC"

    const-string v16, "user_id"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_3b8
    const-string v3, "user_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type=12"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "_id ASC"

    const-string v16, "user_id"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_3ea
    const-string v4, "statuses"

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v4, 0x15

    if-ne v3, v4, :cond_409

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "status_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    :cond_409
    const-string v3, "created DESC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_418
    const-string v4, "status_groups"

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_437

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    :cond_437
    const-string v3, "type DESC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_446
    const-string v3, "status_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v3, "updated_at DESC, _id ASC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_45a
    const-string v3, "status_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "updated_at DESC, _id ASC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_484
    const-string v3, "status_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ref_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v12, "1"

    const-string v3, "updated_at DESC, _id ASC"

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_4a8
    const-string v3, "status_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "updated_at DESC, _id ASC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_4d8
    if-nez p2, :cond_4dc

    sget-object p2, Lcom/twitter/android/provider/m;->c:[Ljava/lang/String;

    :cond_4dc
    const-string v3, "status_groups_retweets_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "updated_at DESC, _id ASC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_50c
    const-string v3, "status_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type=2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "updated_at DESC, _id ASC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_53c
    const-string v3, "status_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "newer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_579

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " AND updated_at>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    :cond_579
    const-string v3, "updated_at DESC, _id ASC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_588
    const-string v3, "status_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type=3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "updated_at DESC, _id ASC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_5b8
    const-string v3, "status_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type=5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "updated_at DESC, _id ASC"

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_5e0
    const-string v3, "status_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type=6"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "updated_at DESC, _id ASC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_610
    const-string v3, "status_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type=7"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "updated_at DESC, _id ASC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_640
    const-string v3, "status_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v3, "type=8"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "updated_at DESC, _id ASC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_659
    const-string v3, "status_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v3, "type=9"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "updated_at DESC, _id ASC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_672
    const-string v3, "status_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type=11"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "updated_at DESC, _id ASC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_6a2
    const-string v3, "status_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND (type=5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR (type=8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND retweet_count > 0))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "updated_at DESC, _id ASC"

    if-nez v12, :cond_acd

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_6de
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_6ef
    invoke-static {v2, v3, v4}, Lcom/twitter/android/provider/TwitterProvider;->a(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v10

    const-wide/16 v3, 0x0

    cmp-long v3, v10, v3

    if-lez v3, :cond_72b

    const-string v3, "status_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "g_status_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/4 v15, 0x0

    const-string v6, "g_status_id"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v14, v15, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    move-wide v3, v10

    goto :goto_6ef

    :cond_72b
    const-string v3, "status_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "g_status_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v3, "status_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "in_r_status_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND (type!=11)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    if-nez v12, :cond_ad2

    const-wide/16 v3, 0x190

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    :goto_77e
    const-string v6, "g_status_id"

    const/4 v7, 0x0

    const-string v8, "updated_at ASC, _id DESC"

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Landroid/database/Cursor;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v1, Landroid/database/MergeCursor;

    invoke-direct {v1, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/provider/TwitterProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Landroid/database/MergeCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_112

    :sswitch_7ad
    const-string v3, "status_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND (type=13"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "tag DESC, updated_at DESC, created DESC"

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_7db
    const-string v3, "status_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND (type=15"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "tag DESC, updated_at DESC, created DESC"

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_809
    const-string v3, "status_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type=12"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "updated_at DESC, _id ASC"

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_831
    const-string v3, "status_groups_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type=14"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "updated_at DESC, _id ASC"

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_859
    const-string v4, "lists"

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v4, 0xdd

    if-ne v3, v4, :cond_878

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "list_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    :cond_878
    const-string v3, "full_name ASC"

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_87f
    const-string v3, "lists_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v3, "full_name ASC"

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_88b
    const-string v3, "lists_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "full_name ASC"

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_8ad
    const-string v3, "lists_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "list_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "full_name ASC"

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_8cf
    const-string v3, "messages"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    if-nez v12, :cond_acd

    const-string v12, "1"

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_8f4
    const-string v3, "messages"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v3, "created DESC"

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_900
    const-string v3, "messages_sent_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type=0 AND sender_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "created DESC"

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_922
    const-string v3, "messages_received_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type=1 AND recipient_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "created DESC"

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_944
    const-string v3, "messages_threaded"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sender_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR recipient_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "created DESC"

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_970
    const-string v3, "messages_conversation"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v3, "created ASC"

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_97c
    const-string v3, "search_queries"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v3, "like"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9ac

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9ac

    const-string v4, "name LIKE "

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    :cond_9ac
    const-string v3, "name ASC"

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_9b3
    const-string v3, "search_queries"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v3, "name ASC"

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_9d5
    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_9e5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    :cond_9e5
    if-nez v1, :cond_9e9

    const-string v1, ""

    :cond_9e9
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/twitter/android/provider/TwitterProvider;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto/16 :goto_112

    :sswitch_9f1
    const/4 v1, 0x0

    goto/16 :goto_112

    :sswitch_9f4
    const-string v3, "activities"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v3, "max_position DESC"

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_a00
    const-string v3, "stories"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v3, "_id ASC "

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_a0c
    const-string v3, "slug_users_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v3, "query ASC "

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :sswitch_a18
    const-string v3, "user_recommendations_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v3, "type=9"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    new-instance v10, Lcom/twitter/android/provider/k;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a57

    const-string v8, "_id ASC"

    :goto_a2e
    const/4 v9, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a5a

    const/16 v1, 0x190

    :goto_a41
    invoke-direct {v10, v2, v1}, Lcom/twitter/android/provider/k;-><init>(Landroid/database/Cursor;I)V

    invoke-virtual {v10}, Lcom/twitter/android/provider/k;->a()V

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/provider/TwitterProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v10, v1, v0}, Lcom/twitter/android/provider/k;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v1, v10

    goto/16 :goto_112

    :cond_a57
    move-object/from16 v8, p5

    goto :goto_a2e

    :cond_a5a
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_a41

    :sswitch_a5f
    const-string v3, "user_recommendations_view"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owner_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND type=10"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    new-instance v10, Lcom/twitter/android/provider/k;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ab5

    const-string v8, "_id ASC"

    :goto_a8c
    const/4 v9, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ab8

    const/16 v1, 0x190

    :goto_a9f
    invoke-direct {v10, v2, v1}, Lcom/twitter/android/provider/k;-><init>(Landroid/database/Cursor;I)V

    invoke-virtual {v10}, Lcom/twitter/android/provider/k;->a()V

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/provider/TwitterProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v10, v1, v0}, Lcom/twitter/android/provider/k;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v1, v10

    goto/16 :goto_112

    :cond_ab5
    move-object/from16 v8, p5

    goto :goto_a8c

    :cond_ab8
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_a9f

    :sswitch_abd
    const-string v3, "notifications"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v3, "notif_id ASC"

    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :cond_ac9
    move-object/from16 v18, v3

    goto/16 :goto_b5

    :cond_acd
    move-object v10, v12

    move-object/from16 v4, p2

    goto/16 :goto_ad

    :cond_ad2
    move-object v9, v12

    goto/16 :goto_77e

    nop

    :sswitch_data_ad6
    .sparse-switch
        0x1 -> :sswitch_8a
        0x2 -> :sswitch_8a
        0x14 -> :sswitch_3ea
        0x15 -> :sswitch_3ea
        0x3c -> :sswitch_113
        0x46 -> :sswitch_126
        0x48 -> :sswitch_148
        0x49 -> :sswitch_178
        0x4a -> :sswitch_1a8
        0x4b -> :sswitch_1c1
        0x4c -> :sswitch_1da
        0x4d -> :sswitch_20c
        0x4e -> :sswitch_1f3
        0x4f -> :sswitch_244
        0x50 -> :sswitch_276
        0x51 -> :sswitch_2a8
        0x52 -> :sswitch_386
        0x53 -> :sswitch_3b8
        0x54 -> :sswitch_2da
        0x55 -> :sswitch_30c
        0x56 -> :sswitch_356
        0x6e -> :sswitch_418
        0x6f -> :sswitch_418
        0x78 -> :sswitch_446
        0x79 -> :sswitch_45a
        0x7a -> :sswitch_484
        0x7b -> :sswitch_4a8
        0x7c -> :sswitch_50c
        0x7d -> :sswitch_53c
        0x7e -> :sswitch_588
        0x80 -> :sswitch_5b8
        0x81 -> :sswitch_5e0
        0x82 -> :sswitch_610
        0x83 -> :sswitch_640
        0x84 -> :sswitch_659
        0x85 -> :sswitch_672
        0x86 -> :sswitch_6a2
        0x87 -> :sswitch_4d8
        0x88 -> :sswitch_6de
        0x89 -> :sswitch_7ad
        0x8a -> :sswitch_809
        0x8b -> :sswitch_831
        0x8c -> :sswitch_7db
        0xc8 -> :sswitch_8cf
        0xc9 -> :sswitch_8f4
        0xd5 -> :sswitch_900
        0xd6 -> :sswitch_922
        0xd7 -> :sswitch_944
        0xd8 -> :sswitch_970
        0xdc -> :sswitch_859
        0xdd -> :sswitch_859
        0x12c -> :sswitch_87f
        0x12d -> :sswitch_88b
        0x12e -> :sswitch_8ad
        0x208 -> :sswitch_97c
        0x209 -> :sswitch_9b3
        0x258 -> :sswitch_9d5
        0x259 -> :sswitch_9f1
        0x2bc -> :sswitch_9f4
        0x320 -> :sswitch_a00
        0x384 -> :sswitch_a0c
        0x385 -> :sswitch_a18
        0x386 -> :sswitch_a5f
        0x3e8 -> :sswitch_abd
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update not supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
