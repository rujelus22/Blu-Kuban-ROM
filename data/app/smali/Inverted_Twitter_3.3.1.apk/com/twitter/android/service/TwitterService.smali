.class public Lcom/twitter/android/service/TwitterService;
.super Landroid/app/Service;


# static fields
.field private static final b:Z

.field private static final c:[Ljava/lang/String;

.field private static final d:Ljava/util/HashMap;


# instance fields
.field final a:Landroid/os/Handler;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:Ljava/util/LinkedHashMap;

.field private g:Lcom/twitter/android/network/o;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/twitter/android/service/TwitterService;->b:Z

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "impression"

    aput-object v1, v0, v2

    const-string v1, "url_click"

    aput-object v1, v0, v3

    const-string v1, "profile_image_click"

    aput-object v1, v0, v4

    const-string v1, "screen_name_click"

    aput-object v1, v0, v5

    const-string v1, "hashtag_click"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "user_mention_click"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "view_details"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "contributed_by_name_click"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "click"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "dismiss"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "footer_profile"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "card_url_click"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/service/TwitterService;->c:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x4e

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "ACTION_RESTART_CONNECTION_MANAGER"

    const/16 v2, 0x49

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "REFRESH"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "MARK_TWEETS"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "MARK_MESSAGES"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "CLEAN"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "LOGOUT"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "USER_TIMELINE"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "CREATE_FAV"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "DESTROY_FAV"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "GET_FAVS"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "RATE_LIMIT"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "GET_LISTS"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "GET_USERS"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "GET_BLOCKING"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "FOLLOW"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "UNFOLLOW"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "GET_MESSAGES"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "GET_SENT_MESSAGES"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "GET_UNREAD"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "NEW_DM"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "DESTROY_DM"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "SHORTEN_URL"

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "GET_FRIENDSHIP"

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "GET_USER"

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "TWEET"

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "RETWEET"

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "DESTROY_STATUS"

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "CREATE_BLOCK"

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "REPORT_SPAM"

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "DESTROY_BLOCK"

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "CREATE_LIST"

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "EDIT_LIST"

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "DELETE_LIST"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "GET_LIST_TWEETS"

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "GET_LIST_USERS"

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "ADD_LIST_USER"

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "REMOVE_LIST_USER"

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "IS_LIST_USER"

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "GET_TRENDS"

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "SEARCH_TWEETS"

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "SEARCH_USERS"

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "UPDATE_PROFILE"

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "REVERSE_GEO"

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "VERIFY"

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "LOGIN"

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "LOG"

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "HOME"

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "SAVE_DRAFT"

    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "DEL_DRAFT"

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "SEND_ALL_DRAFTS"

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "GET_SAVED_SEARCHES"

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "GET_SLUG"

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "GET_SLUG_USERS"

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "GET_LIST"

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "LOOKUP"

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "SIGNUP"

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "FOLLOW_ALL"

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "CONFIG"

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "UPDATE_SETTINGS"

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "GET_SETTINGS"

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "DELETE_DMS"

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "DECIDER"

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "SAVE_SEARCH"

    const/16 v2, 0x3e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "DELETE_SEARCH"

    const/16 v2, 0x3f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "ACTIVITY"

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "FETCH_STORIES"

    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "RELATED_RESULTS"

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "GET_USER_RECOMMENDATIONS"

    const/16 v2, 0x43

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "EMAIL_AVAILABLE"

    const/16 v2, 0x44

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "USERNAME_AVAILABLE"

    const/16 v2, 0x45

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "ACTIVITY_SUMMARY"

    const/16 v2, 0x46

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "ACTION_MARK_STORIES"

    const/16 v2, 0x47

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "DISMISS"

    const/16 v2, 0x48

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "ADD_USER_SUGGESTION"

    const/16 v2, 0x4a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "TYPEAHEAD"

    const/16 v2, 0x4b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "UPDATE_FRIENDSHIP"

    const/16 v2, 0x4c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "CLEAR_NOTIFICATIONS"

    const/16 v2, 0x4d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    const-string v1, "ACTION_CHECK_FOR_UPDATE"

    const/16 v2, 0x3e7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/twitter/android/service/i;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/service/i;-><init>(Lcom/twitter/android/service/TwitterService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/twitter/android/service/TwitterService;->a:Landroid/os/Handler;

    return-void
.end method

.method private a(JLcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 19

    const-string v1, "status_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "impression_id"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x1

    move-object/from16 v1, p3

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/provider/ae;->a(JJZ)V

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v6, "favorites"

    aput-object v6, v2, v3

    const/4 v3, 0x1

    const-string v6, "create"

    aput-object v6, v2, v3

    const/4 v3, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "send_error_codes"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_50

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "impression_id"

    invoke-direct {v2, v3, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "include_entities"

    const-string v6, "true"

    invoke-direct {v2, v3, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "include_cards"

    const-string v6, "true"

    invoke-direct {v2, v3, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v6

    iget-object v7, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p4

    invoke-static/range {v6 .. v11}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v12

    invoke-virtual {v12}, Lcom/twitter/android/network/c;->b()Z

    move-result v1

    if-eqz v1, :cond_b5

    :try_start_87
    invoke-static {v11}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/api/r;->d(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/aa;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/twitter/android/api/aa;->l:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p3

    move-wide v3, p1

    invoke-virtual/range {v1 .. v11}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_a7} :catch_a8

    :cond_a7
    :goto_a7
    return-object v12

    :catch_a8
    move-exception v1

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v2, :cond_a7

    const-string v2, "TwitterService"

    const-string v3, "Problem processing response."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a7

    :cond_b5
    const/4 v2, 0x1

    :try_start_b6
    invoke-static {v11}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/api/r;->y(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_ea

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ea

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v6, "count"

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_db} :catch_ec

    const/16 v6, 0x8b

    if-ne v1, v6, :cond_c4

    const/4 v1, 0x0

    :goto_e0
    if-eqz v1, :cond_a7

    const/4 v6, 0x0

    move-object/from16 v1, p3

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/provider/ae;->a(JJZ)V

    goto :goto_a7

    :cond_ea
    move v1, v2

    goto :goto_e0

    :catch_ec
    move-exception v1

    sget-boolean v3, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v3, :cond_f8

    const-string v3, "TwitterService"

    const-string v6, "Problem processing response."

    invoke-static {v3, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f8
    move v1, v2

    goto :goto_e0
.end method

.method private a(Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "account"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "rate_limit_status"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->b()Z

    move-result v1

    if-eqz v1, :cond_40

    :try_start_33
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    const-string v2, "rate_limit"

    invoke-static {v1}, Lcom/twitter/android/api/r;->h(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/i;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_40} :catch_41

    :cond_40
    :goto_40
    return-object v0

    :catch_41
    move-exception v1

    iput v4, v0, Lcom/twitter/android/network/c;->b:I

    goto :goto_40
.end method

.method private a(Lcom/twitter/android/network/a;Ljava/lang/String;JLjava/io/ByteArrayOutputStream;)Lcom/twitter/android/network/c;
    .registers 12

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "users"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "show"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_35

    const-string v0, "screen_name"

    invoke-static {v2, v0, p2}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    move-object v3, p1

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v0

    return-object v0

    :cond_35
    const-string v0, "user_id"

    invoke-static {v2, v0, p3, p4}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    goto :goto_24
.end method

.method private a(Lcom/twitter/android/provider/ae;ILcom/twitter/android/network/a;JJJILandroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 23

    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-eqz v2, :cond_fc

    const/4 v3, 0x4

    const/4 v7, 0x1

    move-object v2, p1

    move v4, p2

    move-wide v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/twitter/android/provider/ae;->a(IIJI)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    const-wide/16 p6, 0x0

    :cond_13
    :goto_13
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-lez v2, :cond_35

    const/16 p10, 0x64

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v2, :cond_35

    const-string v2, "TwitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMessages: newer than sinceId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    const/4 v2, 0x1

    if-ne p2, v2, :cond_102

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "direct_messages"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    :goto_46
    const-string v2, ".json"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-lez v2, :cond_58

    const-string v2, "since_id"

    move-wide/from16 v0, p6

    invoke-static {v4, v2, v0, v1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_58
    const-wide/16 v2, 0x0

    cmp-long v2, p8, v2

    if-lez v2, :cond_65

    const-string v2, "max_id"

    move-wide/from16 v0, p8

    invoke-static {v4, v2, v0, v1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_65
    if-lez p10, :cond_6e

    const-string v2, "count"

    move/from16 v0, p10

    invoke-static {v4, v2, v0}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_6e
    const-string v2, "include_entities"

    const/4 v3, 0x1

    invoke-static {v4, v2, v3}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v6, 0x0

    move-object v5, p3

    invoke-static/range {v2 .. v7}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v10

    invoke-virtual {v10}, Lcom/twitter/android/network/c;->b()Z

    move-result v2

    if-eqz v2, :cond_fb

    :try_start_8f
    invoke-static {v7}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/android/api/r;->e(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v3

    const-wide/16 v4, 0x0

    cmp-long v2, p8, v4

    if-lez v2, :cond_117

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_117

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/p;

    iget-wide v4, v2, Lcom/twitter/android/api/p;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    :goto_b5
    const-wide/16 v4, 0x0

    cmp-long v2, p8, v4

    if-eqz v2, :cond_119

    const/4 v7, 0x1

    :goto_bc
    const-wide/16 v4, 0x0

    cmp-long v2, p8, v4

    if-lez v2, :cond_11b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, p10

    if-ge v2, v0, :cond_11b

    const/4 v8, 0x1

    :goto_cb
    move-object v2, p1

    move-wide v4, p4

    move v6, p2

    invoke-virtual/range {v2 .. v9}, Lcom/twitter/android/provider/ae;->a(Ljava/util/List;JIZZLjava/lang/String;)I

    move-result v3

    const/4 v2, 0x1

    if-ne p2, v2, :cond_fb

    invoke-virtual {p1}, Lcom/twitter/android/provider/ae;->e()I

    move-result v4

    invoke-static {p0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v5

    const-string v2, "account_name"

    move-object/from16 v0, p11

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "message"

    if-lez v4, :cond_11d

    const/4 v2, 0x1

    :goto_ea
    invoke-virtual {v5, v6, v7, v2}, Lcom/twitter/android/provider/a;->b(Ljava/lang/String;Ljava/lang/String;I)I

    const-string v2, "new_dm"

    move-object/from16 v0, p11

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "unread_dm"

    move-object/from16 v0, p11

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_fb} :catch_11f

    :cond_fb
    :goto_fb
    return-object v10

    :cond_fc
    invoke-virtual {p1, p2}, Lcom/twitter/android/provider/ae;->a(I)J

    move-result-wide p6

    goto/16 :goto_13

    :cond_102
    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "direct_messages"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "sent"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto/16 :goto_46

    :cond_117
    const/4 v9, 0x0

    goto :goto_b5

    :cond_119
    const/4 v7, 0x0

    goto :goto_bc

    :cond_11b
    const/4 v8, 0x0

    goto :goto_cb

    :cond_11d
    const/4 v2, 0x0

    goto :goto_ea

    :catch_11f
    move-exception v2

    const/4 v3, 0x0

    iput v3, v10, Lcom/twitter/android/network/c;->b:I

    iput-object v2, v10, Lcom/twitter/android/network/c;->d:Ljava/lang/Exception;

    goto :goto_fb
.end method

.method private a(Lcom/twitter/android/provider/ae;Lcom/twitter/android/api/ac;Lcom/twitter/android/network/a;JJILandroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 42

    if-nez p2, :cond_4

    const/4 v5, 0x0

    :goto_3
    return-object v5

    :cond_4
    const-string v5, "account_name"

    move-object/from16 v0, p9

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/4 v5, -0x2

    move/from16 v0, p8

    if-ne v0, v5, :cond_67

    const/4 v5, 0x1

    move v11, v5

    :goto_13
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/twitter/android/api/ac;->a:J

    move-wide/from16 v24, v0

    if-eqz v11, :cond_6a

    const/16 p8, 0x64

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v5}, Lcom/twitter/android/provider/ae;->e(JI)J

    move-result-wide p4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v5}, Lcom/twitter/android/provider/ae;->d(JI)J

    move-result-wide p6

    sget-boolean v5, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v5, :cond_55

    const-string v5, "TwitterService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[Refresh] sinceId: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", maxId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    const-wide/16 v5, 0x0

    cmp-long v5, p4, v5

    if-eqz v5, :cond_65

    const-wide/16 v5, 0x0

    cmp-long v5, p6, v5

    if-eqz v5, :cond_65

    cmp-long v5, p6, p4

    if-nez v5, :cond_6a

    :cond_65
    const/4 v5, 0x0

    goto :goto_3

    :cond_67
    const/4 v5, 0x0

    move v11, v5

    goto :goto_13

    :cond_6a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "statuses"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "home_timeline"

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-lez p8, :cond_8e

    const-string v5, "count"

    move/from16 v0, p8

    invoke-static {v7, v5, v0}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_8e
    const-wide/16 v5, 0x0

    cmp-long v5, p6, v5

    if-lez v5, :cond_9b

    const-string v5, "max_id"

    move-wide/from16 v0, p6

    invoke-static {v7, v5, v0, v1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_9b
    const-wide/16 v5, 0x0

    cmp-long v5, p4, v5

    if-lez v5, :cond_a8

    const-string v5, "since_id"

    move-wide/from16 v0, p4

    invoke-static {v7, v5, v0, v1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_a8
    const-string v5, "lat"

    const-wide/high16 v8, 0x7ff8

    move-object/from16 v0, p9

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v5

    const-string v8, "long"

    const-wide/high16 v9, 0x7ff8

    move-object/from16 v0, p9

    invoke-virtual {v0, v8, v9, v10}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-nez v10, :cond_d2

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-nez v10, :cond_d2

    const-string v10, "lat"

    invoke-static {v7, v10, v5, v6}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;D)V

    const-string v5, "long"

    invoke-static {v7, v5, v8, v9}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;D)V

    :cond_d2
    const-string v5, "include_entities"

    const/4 v6, 0x1

    invoke-static {v7, v5, v6}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v5, "include_my_retweet"

    const/4 v6, 0x1

    invoke-static {v7, v5, v6}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v5, "include_cards"

    const/4 v6, 0x1

    invoke-static {v7, v5, v6}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-wide/16 v5, 0x0

    cmp-long v5, p6, v5

    if-gtz v5, :cond_1ee

    const/4 v5, 0x1

    move/from16 v22, v5

    :goto_ed
    if-eqz v22, :cond_f5

    const-string v5, "pc"

    const/4 v6, 0x1

    invoke-static {v7, v5, v6}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :cond_f5
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x400

    invoke-direct {v10, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v9, 0x0

    move-object/from16 v8, p3

    invoke-static/range {v5 .. v10}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/twitter/android/network/c;->a(I)Lcom/twitter/android/network/c;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/twitter/android/network/c;->b()Z

    move-result v5

    if-eqz v5, :cond_1ea

    :try_start_116
    invoke-static {v10}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-static {v5, v0, v6, v7}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/ac;ZZ)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v27

    const/16 v16, 0x0

    const-wide v14, 0x7fffffffffffffffL

    const-wide/16 v12, 0x0

    if-lez v27, :cond_268

    if-nez v11, :cond_268

    const-wide/16 v5, 0x0

    cmp-long v5, p6, v5

    if-lez v5, :cond_1f3

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    move-wide/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/provider/ae;->d(JJ)I

    move-result v5

    if-lez v5, :cond_1f3

    add-int/lit8 v5, v27, -0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/twitter/android/api/aa;

    move-object v11, v0

    if-eqz v11, :cond_26e

    const/4 v8, 0x0

    invoke-virtual {v11}, Lcom/twitter/android/api/aa;->b()Lcom/twitter/android/api/aa;

    move-result-object v5

    iget-wide v9, v5, Lcom/twitter/android/api/aa;->a:J

    move-object/from16 v5, p1

    move-wide/from16 v6, v24

    invoke-virtual/range {v5 .. v10}, Lcom/twitter/android/provider/ae;->a(JIJ)Z

    move-result v5

    if-nez v5, :cond_26e

    const/4 v9, 0x1

    iget-wide v5, v11, Lcom/twitter/android/api/aa;->a:J

    iget-wide v7, v11, Lcom/twitter/android/api/aa;->d:J

    :goto_169
    move-wide/from16 v18, v5

    move-wide/from16 v20, v7

    move/from16 v16, v9

    :goto_16f
    const-wide/16 v5, 0x0

    cmp-long v5, p6, v5

    if-lez v5, :cond_241

    if-lez v27, :cond_241

    add-int/lit8 v5, v27, -0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/aa;

    iget-wide v5, v5, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    :goto_187
    if-eqz v22, :cond_18f

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/twitter/android/provider/ae;->c(I)I

    :cond_18f
    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const-wide/16 v5, 0x0

    cmp-long v5, p6, v5

    if-lez v5, :cond_244

    const/4 v12, 0x1

    :goto_199
    const-wide/16 v5, 0x0

    cmp-long v5, p6, v5

    if-lez v5, :cond_247

    if-nez v16, :cond_247

    const/4 v13, 0x1

    :goto_1a2
    const/4 v15, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, v26

    move-wide/from16 v7, v24

    invoke-virtual/range {v5 .. v15}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    move-result v13

    if-eqz v16, :cond_1bb

    const/4 v12, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v6, v24

    move-wide/from16 v8, v18

    move-wide/from16 v10, v20

    invoke-virtual/range {v5 .. v12}, Lcom/twitter/android/provider/ae;->a(JJJI)V

    :cond_1bb
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/twitter/android/provider/z;->a:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v5}, Lcom/twitter/android/provider/ae;->f(JI)I

    move-result v6

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v7

    const-string v8, "tweet"

    if-lez v6, :cond_24a

    const/4 v5, 0x1

    :goto_1d7
    move-object/from16 v0, v23

    invoke-virtual {v7, v0, v8, v5}, Lcom/twitter/android/provider/a;->b(Ljava/lang/String;Ljava/lang/String;I)I

    const-string v5, "new_tweet"

    move-object/from16 v0, p9

    invoke-virtual {v0, v5, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "unread_tweet"

    move-object/from16 v0, p9

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1ea
    :goto_1ea
    move-object/from16 v5, v17

    goto/16 :goto_3

    :cond_1ee
    const/4 v5, 0x0

    move/from16 v22, v5

    goto/16 :goto_ed

    :cond_1f3
    const-wide/16 v5, 0x0

    cmp-long v5, p4, v5

    if-lez v5, :cond_268

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v5}, Lcom/twitter/android/provider/ae;->d(JI)J

    move-result-wide v18

    const-wide/16 v5, 0x0

    cmp-long v5, v18, v5

    if-lez v5, :cond_268

    const/16 v16, 0x1

    add-int/lit8 v5, v27, -0x1

    move-wide v6, v12

    move-wide v8, v14

    move v10, v5

    :goto_20f
    if-ltz v10, :cond_262

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/aa;

    invoke-virtual {v5}, Lcom/twitter/android/api/aa;->b()Lcom/twitter/android/api/aa;

    move-result-object v11

    iget-wide v11, v11, Lcom/twitter/android/api/aa;->a:J

    cmp-long v11, v18, v11

    if-nez v11, :cond_22b

    const/16 v16, 0x0

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    goto/16 :goto_16f

    :cond_22b
    iget-wide v11, v5, Lcom/twitter/android/api/aa;->d:J

    cmp-long v11, v8, v11

    if-lez v11, :cond_259

    iget-wide v7, v5, Lcom/twitter/android/api/aa;->d:J

    iget-wide v5, v5, Lcom/twitter/android/api/aa;->a:J
    :try_end_235
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_235} :catch_24c

    :goto_235
    add-int/lit8 v9, v10, -0x1

    move v10, v9

    move-wide/from16 v28, v7

    move-wide/from16 v8, v28

    move-wide/from16 v30, v5

    move-wide/from16 v6, v30

    goto :goto_20f

    :cond_241
    const/4 v14, 0x0

    goto/16 :goto_187

    :cond_244
    const/4 v12, 0x0

    goto/16 :goto_199

    :cond_247
    const/4 v13, 0x0

    goto/16 :goto_1a2

    :cond_24a
    const/4 v5, 0x0

    goto :goto_1d7

    :catch_24c
    move-exception v5

    sget-boolean v6, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v6, :cond_1ea

    const-string v6, "TwitterService"

    const-string v7, "Problem processing response."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1ea

    :cond_259
    move-wide/from16 v28, v6

    move-wide/from16 v5, v28

    move-wide/from16 v30, v8

    move-wide/from16 v7, v30

    goto :goto_235

    :cond_262
    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    goto/16 :goto_16f

    :cond_268
    move-wide/from16 v18, v12

    move-wide/from16 v20, v14

    goto/16 :goto_16f

    :cond_26e
    move-wide v5, v12

    move-wide v7, v14

    move/from16 v9, v16

    goto/16 :goto_169
.end method

.method private a(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;J)Lcom/twitter/android/network/c;
    .registers 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "trends"

    aput-object v2, v1, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p2, Lcom/twitter/android/network/a;->i:Lcom/twitter/android/network/j;

    if-eqz v0, :cond_24

    const-string v0, "pc"

    invoke-static {v2, v0, v3}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_24
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x400

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/c;->b()Z

    move-result v0

    if-eqz v0, :cond_4c

    :try_start_40
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/api/r;->g(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/twitter/android/provider/ae;->a(Ljava/util/ArrayList;I)I
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4c} :catch_4d

    :cond_4c
    :goto_4c
    return-object v1

    :catch_4d
    move-exception v0

    iput v4, v1, Lcom/twitter/android/network/c;->b:I

    iput-object v0, v1, Lcom/twitter/android/network/c;->d:Ljava/lang/Exception;

    goto :goto_4c
.end method

.method private a(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;JIJJJIZLandroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 31

    packed-switch p5, :pswitch_data_1fe

    :pswitch_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "user_timeline"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v3, "user_id"

    move-wide/from16 v0, p3

    invoke-static {v5, v3, v0, v1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    const-string v3, "include_rts"

    const/4 v4, 0x1

    invoke-static {v5, v3, v4}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :goto_42
    const-string v3, "include_entities"

    const/4 v4, 0x1

    invoke-static {v5, v3, v4}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v3, "include_cards"

    const/4 v4, 0x1

    invoke-static {v5, v3, v4}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    if-lez p12, :cond_57

    const-string v3, "count"

    move/from16 v0, p12

    invoke-static {v5, v3, v0}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_57
    const-wide/16 v3, 0x0

    cmp-long v3, p8, v3

    if-nez v3, :cond_70

    const-wide/16 v3, 0x0

    cmp-long v3, p10, v3

    if-nez v3, :cond_70

    const-wide/16 v3, 0x0

    cmp-long v3, p6, v3

    if-lez v3, :cond_70

    const-string v3, "since_id"

    move-wide/from16 v0, p6

    invoke-static {v5, v3, v0, v1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_70
    const-wide/16 v3, 0x0

    cmp-long v3, p10, v3

    if-lez v3, :cond_7d

    const-string v3, "max_id"

    move-wide/from16 v0, p10

    invoke-static {v5, v3, v0, v1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_7d
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x400

    invoke-direct {v8, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v7, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v3 .. v8}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v14

    invoke-virtual {v14}, Lcom/twitter/android/network/c;->b()Z

    move-result v3

    if-eqz v3, :cond_135

    :try_start_9d
    invoke-static {v8}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v3

    const-wide/16 v4, 0x0

    cmp-long v4, p8, v4

    if-nez v4, :cond_1d4

    invoke-static {v3}, Lcom/twitter/android/api/r;->c(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v5, 0x0

    cmp-long v3, p10, v5

    if-lez v3, :cond_1ce

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1ce

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/aa;

    iget-wide v5, v3, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    :goto_c9
    const-wide/16 v5, 0x0

    cmp-long v3, p10, v5

    if-lez v3, :cond_1d1

    const/4 v3, 0x1

    :goto_d0
    move v11, v3

    :goto_d1
    const-string v15, "new_tweet"

    const-wide/16 v8, -0x1

    const-wide/16 v5, 0x0

    cmp-long v3, p10, v5

    if-lez v3, :cond_1ed

    const/4 v10, 0x1

    :goto_dc
    move-object/from16 v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move/from16 v13, p13

    invoke-virtual/range {v3 .. v13}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    move-result v3

    move-object/from16 v0, p14

    invoke-virtual {v0, v15, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v5, 0x64

    if-lt v3, v5, :cond_10e

    const-wide/16 v7, -0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/aa;

    iget-wide v9, v3, Lcom/twitter/android/api/aa;->a:J

    move-object/from16 v3, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v3 .. v10}, Lcom/twitter/android/provider/ae;->a(JIJJ)V

    :cond_10e
    const/4 v3, 0x5

    move/from16 v0, p5

    if-ne v0, v3, :cond_135

    const/4 v3, 0x5

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/provider/ae;->f(JI)I

    move-result v3

    if-lez v3, :cond_12e

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v4

    const-string v5, "account_name"

    move-object/from16 v0, p14

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/twitter/android/provider/a;->a(Ljava/lang/String;I)I

    :cond_12e
    const-string v4, "unread_mention"

    move-object/from16 v0, p14

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_135} :catch_1f0

    :cond_135
    :goto_135
    return-object v14

    :pswitch_136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "mentions"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto/16 :goto_42

    :pswitch_153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "retweeted_by_me"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto/16 :goto_42

    :pswitch_170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "retweeted_to_me"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto/16 :goto_42

    :pswitch_18d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "retweets_of_me"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto/16 :goto_42

    :pswitch_1aa
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "show"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto/16 :goto_42

    :cond_1ce
    const/4 v12, 0x0

    goto/16 :goto_c9

    :cond_1d1
    const/4 v3, 0x0

    goto/16 :goto_d0

    :cond_1d4
    :try_start_1d4
    invoke-static {v3}, Lcom/twitter/android/api/r;->d(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/aa;

    move-result-object v3

    const-string v4, "status_id"

    iget-wide v5, v3, Lcom/twitter/android/api/aa;->a:J

    move-object/from16 v0, p14

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e9
    .catch Ljava/io/IOException; {:try_start_1d4 .. :try_end_1e9} :catch_1f0

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_d1

    :cond_1ed
    const/4 v10, 0x0

    goto/16 :goto_dc

    :catch_1f0
    move-exception v3

    sget-boolean v4, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v4, :cond_135

    const-string v4, "TwitterService"

    const-string v5, "Problem processing response."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_135

    :pswitch_data_1fe
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_3
        :pswitch_136
        :pswitch_3
        :pswitch_136
        :pswitch_153
        :pswitch_170
        :pswitch_18d
        :pswitch_3
        :pswitch_1aa
    .end packed-switch
.end method

.method private a(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;JJ)Lcom/twitter/android/network/c;
    .registers 13

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    cmp-long v0, p3, v1

    if-eqz v0, :cond_b

    cmp-long v0, p5, v1

    if-nez v0, :cond_d

    :cond_b
    const/4 v0, 0x0

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "friendships"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "show"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "source_id"

    invoke-static {v2, v0, p3, p4}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    const-string v0, "target_id"

    invoke-static {v2, v0, p5, p6}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p2, Lcom/twitter/android/network/a;->i:Lcom/twitter/android/network/j;

    if-eqz v0, :cond_66

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v0

    :goto_47
    invoke-virtual {v0}, Lcom/twitter/android/network/c;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    :try_start_4d
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/api/r;->j(Lorg/codehaus/jackson/JsonParser;)I

    move-result v1

    invoke-virtual {p1, p5, p6, v1}, Lcom/twitter/android/provider/ae;->a(JI)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_58} :catch_59

    goto :goto_c

    :catch_59
    move-exception v1

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v2, :cond_c

    const-string v2, "TwitterService"

    const-string v3, "Problem processing response."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :cond_66
    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    invoke-static {v0, v1, v2, v4, v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v0

    goto :goto_47
.end method

.method private a(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;JLjava/lang/String;ILcom/twitter/android/api/TweetEntities;JLandroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 29

    const-string v3, "impression_id"

    move-object/from16 v0, p10

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "lat"

    const-wide/high16 v4, 0x7ff8

    move-object/from16 v0, p10

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v13

    const-string v3, "long"

    const-wide/high16 v4, 0x7ff8

    move-object/from16 v0, p10

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v15

    if-eqz p7, :cond_18b

    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    if-eqz v3, :cond_18b

    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_18b

    const/4 v3, 0x1

    move v11, v3

    :goto_30
    if-eqz v11, :cond_21c

    const/4 v3, 0x2

    move/from16 v0, p6

    if-eq v0, v3, :cond_21c

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/twitter/android/api/TweetEntities$Media;

    iget-object v3, v10, Lcom/twitter/android/api/TweetEntities$Media;->displayUrl:Ljava/lang/String;

    if-nez v3, :cond_69

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/twitter/android/network/a;->i:Lcom/twitter/android/network/j;

    iget-object v3, v10, Lcom/twitter/android/api/TweetEntities$Media;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p6

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v9}, Lcom/twitter/android/util/j;->a(Landroid/content/Context;Lcom/twitter/android/network/d;ILcom/twitter/android/network/j;Landroid/net/Uri;Ljava/lang/String;Lcom/twitter/android/network/l;)Ljava/lang/String;

    move-result-object v3

    :cond_69
    if-eqz v3, :cond_18f

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_78

    const/16 v4, 0x20

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_78
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v3, v10, Lcom/twitter/android/api/TweetEntities$Media;->displayUrl:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    :goto_84
    if-eqz v11, :cond_1a0

    const/4 v3, 0x2

    move/from16 v0, p6

    if-ne v0, v3, :cond_1a0

    const/4 v3, 0x1

    :goto_8c
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x400

    invoke-direct {v6, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    if-eqz v3, :cond_1a3

    sget v4, Lcom/twitter/android/eb;->base_url_upload:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/twitter/android/service/TwitterService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "statuses"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "update_with_media"

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Lcom/twitter/android/network/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".json"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :goto_b4
    const-string v7, "status"

    invoke-static {v4, v7, v5}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    cmp-long v5, p8, v7

    if-lez v5, :cond_cd

    const-string v5, "in_reply_to_status_id"

    move-wide/from16 v0, p8

    invoke-static {v4, v5, v0, v1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    if-eqz v12, :cond_cd

    const-string v5, "impression_id"

    invoke-static {v4, v5, v12}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_cd
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_e4

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_e4

    const-string v5, "lat"

    invoke-static {v4, v5, v13, v14}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;D)V

    const-string v5, "long"

    move-wide v0, v15

    invoke-static {v4, v5, v0, v1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;D)V

    :cond_e4
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    if-eqz v3, :cond_219

    const/4 v5, 0x0

    :try_start_f1
    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/TweetEntities$Media;
    :try_end_fc
    .catchall {:try_start_f1 .. :try_end_fc} :catchall_1d4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_fc} :catch_1cc

    :try_start_fc
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/service/TwitterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v8, v3, Lcom/twitter/android/api/TweetEntities$Media;->url:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_109
    .catchall {:try_start_fc .. :try_end_109} :catchall_1d4
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_109} :catch_214

    move-result-object v4

    :try_start_10a
    new-instance v5, Lcom/twitter/android/network/g;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Lcom/twitter/android/network/g;-><init>(Lcom/twitter/android/network/l;)V

    const-string v8, "media[]"

    const/16 v9, 0x8

    invoke-static {v9}, Lcom/twitter/android/util/x;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9, v4}, Lcom/twitter/android/network/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)I

    invoke-virtual {v5}, Lcom/twitter/android/network/g;->a()V

    invoke-virtual {v7, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_121
    .catchall {:try_start_10a .. :try_end_121} :catchall_212
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_121} :catch_217

    invoke-static {v4}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    :goto_124
    new-instance v12, Lcom/twitter/android/network/i;

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-direct {v12, v4, v7, v0, v6}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/d;Lorg/apache/http/client/methods/HttpPost;Lcom/twitter/android/network/a;Ljava/io/OutputStream;)V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/o;->a(Landroid/content/Context;)Lcom/twitter/android/network/o;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/twitter/android/network/o;->a(Lcom/twitter/android/network/c;)V

    invoke-virtual {v12}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    invoke-virtual {v12}, Lcom/twitter/android/network/c;->b()Z

    move-result v4

    if-eqz v4, :cond_201

    if-eqz v3, :cond_14c

    :try_start_141
    iget-object v3, v3, Lcom/twitter/android/api/TweetEntities$Media;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/twitter/android/util/f;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    :cond_14c
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/android/api/r;->d(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/aa;

    move-result-object v3

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v0, v3, v1, v2}, Lcom/twitter/android/provider/ae;->a(Lcom/twitter/android/api/aa;J)V

    iget-object v4, v3, Lcom/twitter/android/api/aa;->n:Lcom/twitter/android/api/TweetEntities;

    if-eqz v4, :cond_189

    iget-object v4, v3, Lcom/twitter/android/api/aa;->n:Lcom/twitter/android/api/TweetEntities;

    iget-object v4, v4, Lcom/twitter/android/api/TweetEntities;->mentions:Ljava/util/ArrayList;

    if-eqz v4, :cond_189

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v3, v3, Lcom/twitter/android/api/aa;->n:Lcom/twitter/android/api/TweetEntities;

    iget-object v3, v3, Lcom/twitter/android/api/TweetEntities;->mentions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_172
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1da

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/TweetEntities$Mention;

    iget-wide v6, v3, Lcom/twitter/android/api/TweetEntities$Mention;->userId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_187
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_187} :catch_188

    goto :goto_172

    :catch_188
    move-exception v3

    :cond_189
    :goto_189
    move-object v3, v12

    :goto_18a
    return-object v3

    :cond_18b
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_30

    :cond_18f
    const-wide/16 v4, 0x0

    move-object/from16 v3, p1

    move-object/from16 v6, p5

    move-wide/from16 v7, p3

    move-wide/from16 v9, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v3 .. v11}, Lcom/twitter/android/provider/ae;->a(JLjava/lang/String;JJLcom/twitter/android/api/TweetEntities;)J

    const/4 v3, 0x0

    goto :goto_18a

    :cond_1a0
    const/4 v3, 0x0

    goto/16 :goto_8c

    :cond_1a3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "statuses"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "update"

    aput-object v9, v7, v8

    invoke-virtual {v4, v7}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".json"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "include_entities"

    const/4 v8, 0x1

    invoke-static {v4, v7, v8}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v7, "include_cards"

    const/4 v8, 0x1

    invoke-static {v4, v7, v8}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto/16 :goto_b4

    :catch_1cc
    move-exception v3

    move-object v3, v4

    move-object v4, v5

    :goto_1cf
    invoke-static {v4}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    goto/16 :goto_124

    :catchall_1d4
    move-exception v3

    move-object v4, v5

    :goto_1d6
    invoke-static {v4}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    throw v3

    :cond_1da
    :try_start_1da
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/service/TwitterService;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "ADD_USER_SUGGESTION"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v5, "soid"

    move-wide/from16 v0, p3

    invoke-virtual {v3, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    const-string v5, "user_id"

    invoke-static {v4}, Lcom/twitter/android/util/x;->b(Ljava/util/Collection;)[J

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/twitter/android/service/TwitterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_200
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_200} :catch_188

    goto :goto_189

    :cond_201
    const-wide/16 v4, 0x0

    move-object/from16 v3, p1

    move-object/from16 v6, p5

    move-wide/from16 v7, p3

    move-wide/from16 v9, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v3 .. v11}, Lcom/twitter/android/provider/ae;->a(JLjava/lang/String;JJLcom/twitter/android/api/TweetEntities;)J

    goto/16 :goto_189

    :catchall_212
    move-exception v3

    goto :goto_1d6

    :catch_214
    move-exception v4

    move-object v4, v5

    goto :goto_1cf

    :catch_217
    move-exception v5

    goto :goto_1cf

    :cond_219
    move-object v3, v4

    goto/16 :goto_124

    :cond_21c
    move-object/from16 v5, p5

    goto/16 :goto_84
.end method

.method private a(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;JZ)Lcom/twitter/android/network/c;
    .registers 11

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gtz v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "direct_messages"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "destroy"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1, p2, v0}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v0

    if-eqz p5, :cond_7

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->b()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {p1, p3, p4}, Lcom/twitter/android/provider/ae;->c(J)V

    goto :goto_7

    :cond_46
    iget v1, v0, Lcom/twitter/android/network/c;->b:I

    const/16 v2, 0x194

    if-ne v1, v2, :cond_7

    invoke-virtual {p1, p3, p4}, Lcom/twitter/android/provider/ae;->c(J)V

    goto :goto_7
.end method

.method private a(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 19

    const-string v1, "page"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v1, "user_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "favorites"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, ".json"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "id"

    invoke-static {v3, v1, v12, v13}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    if-lez v9, :cond_32

    const-string v1, "page"

    invoke-static {v3, v1, v9}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_32
    const-string v1, "include_entities"

    const/4 v2, 0x1

    invoke-static {v3, v1, v2}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v1, "include_cards"

    const/4 v2, 0x1

    invoke-static {v3, v1, v2}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v5, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v14

    invoke-virtual {v14}, Lcom/twitter/android/network/c;->b()Z

    move-result v1

    if-eqz v1, :cond_8a

    :try_start_5a
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/api/r;->c(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v2

    if-lez v9, :cond_8b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/aa;

    iget-wide v3, v1, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    :goto_7c
    const/4 v5, 0x2

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    if-lez v9, :cond_8d

    const/4 v9, 0x1

    :goto_83
    const/4 v11, 0x1

    move-object/from16 v1, p1

    move-wide v3, v12

    invoke-virtual/range {v1 .. v11}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_8a} :catch_8f

    :cond_8a
    :goto_8a
    return-object v14

    :cond_8b
    const/4 v10, 0x0

    goto :goto_7c

    :cond_8d
    const/4 v9, 0x0

    goto :goto_83

    :catch_8f
    move-exception v1

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v2, :cond_8a

    const-string v2, "TwitterService"

    const-string v3, "Problem processing response."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8a
.end method

.method private a(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;Z)Lcom/twitter/android/network/c;
    .registers 18

    const-string v1, "user_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v1, "owner_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v1, "impression_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_91

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "report_spam"

    aput-object v6, v3, v4

    invoke-virtual {v2, v3}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "id"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_45
    if-eqz v1, :cond_4c

    const-string v2, "impression_id"

    invoke-static {v3, v2, v1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v12

    invoke-virtual {v12}, Lcom/twitter/android/network/c;->b()Z

    move-result v1

    if-eqz v1, :cond_90

    :try_start_66
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ac;

    move-result-object v1

    iget v2, v1, Lcom/twitter/android/api/ac;->t:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/twitter/android/provider/ad;->a(II)I

    move-result v2

    iput v2, v1, Lcom/twitter/android/api/ac;->t:I

    invoke-virtual {p1, v10, v11, v7, v8}, Lcom/twitter/android/provider/ae;->b(JJ)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move-wide v3, v10

    invoke-virtual/range {v1 .. v9}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_90} :catch_b9

    :cond_90
    :goto_90
    return-object v12

    :cond_91
    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "blocks"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const-string v6, "create"

    aput-object v6, v3, v4

    invoke-virtual {v2, v3}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "user_id"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :catch_b9
    move-exception v1

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v2, :cond_90

    const-string v2, "TwitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createBlock, spam: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_90
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;)Lcom/twitter/android/network/j;
    .registers 5

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/android/network/a;->a(Ljava/lang/String;Z)Ljava/util/TreeMap;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/network/j;

    const-string v0, "oauth_token"

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "oauth_token_secret"

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/twitter/android/network/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private a(JLjava/lang/String;)V
    .registers 12

    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/twitter/android/service/TwitterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/twitter/android/service/TwitterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/provider/v;->a:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Lcom/twitter/android/provider/o;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "notif_id"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3d

    :cond_24
    :goto_24
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_24

    invoke-virtual {v6, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_24

    :cond_3a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3d
    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {p0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/twitter/android/provider/a;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4e

    invoke-virtual {v6, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_4e
    return-void
.end method

.method private a(Lcom/twitter/android/network/a;ILjava/lang/String;J)V
    .registers 12

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "promoted_content"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "log"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_20

    const-string v0, "impression_id"

    invoke-static {v2, v0, p3}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_2b

    const-string v0, "promoted_trend_id"

    invoke-static {v2, v0, p4, p5}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_2b
    const-string v0, "event"

    sget-object v1, Lcom/twitter/android/service/TwitterService;->c:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v2, v0, v1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    return-void
.end method

.method private b(JLcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 32

    const-string v2, "page"

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v2, "user_id"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v2, "user_type"

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v2, "count"

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_5d

    const/16 v2, 0x64

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Lcom/twitter/android/network/o;->a(II)I

    move-result v3

    move v8, v2

    move/from16 v17, v3

    :goto_34
    const/4 v3, 0x1

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v7}, Lcom/twitter/android/provider/ae;->a(IIJI)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    move-object/from16 v23, v0

    sparse-switch v4, :sswitch_data_1a2

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Unknown user type: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5d
    const/4 v2, -0x1

    const/4 v3, 0x1

    move v8, v2

    move/from16 v17, v3

    goto :goto_34

    :sswitch_63
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v9, "followers"

    aput-object v9, v2, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x2

    move-object/from16 v18, v3

    move v3, v2

    :goto_75
    const-string v2, ".json"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "user_id"

    move-object/from16 v0, v18

    invoke-static {v0, v2, v5, v6}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    if-lez v8, :cond_8c

    const-string v2, "count"

    move-object/from16 v0, v18

    invoke-static {v0, v2, v8}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_8c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    const/16 v20, 0x0

    const/16 v19, 0x0

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move/from16 v21, v2

    move-object/from16 v2, v20

    :goto_9e
    move/from16 v0, v21

    move/from16 v1, v17

    if-ge v0, v1, :cond_196

    if-eqz v16, :cond_af

    const-string v2, "cursor"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v2, v1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_af
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {v13, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v12, 0x0

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v18

    move-object/from16 v11, p4

    invoke-static/range {v8 .. v13}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/twitter/android/network/c;->b()Z

    move-result v2

    if-eqz v2, :cond_19b

    :try_start_cd
    invoke-static {v13}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/o;

    move-result-object v8

    if-nez v8, :cond_123

    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput v2, v0, Lcom/twitter/android/network/c;->b:I
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_dc} :catch_144

    move/from16 v2, v19

    move-object/from16 v3, v20

    :goto_e0
    const-string v4, "count"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "users"

    move-object/from16 v0, p5

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v3

    :sswitch_f1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v9, "friends"

    aput-object v9, v2, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    move-object/from16 v18, v3

    move v3, v2

    goto/16 :goto_75

    :sswitch_105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    iget-object v2, v2, Lcom/twitter/android/network/o;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "i"

    aput-object v10, v3, v9

    const/4 v9, 0x1

    const-string v10, "device_following"

    aput-object v10, v3, v9

    invoke-static {v2, v3}, Lcom/twitter/android/network/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x11

    move-object/from16 v18, v3

    move v3, v2

    goto/16 :goto_75

    :cond_123
    :try_start_123
    invoke-virtual {v8}, Lcom/twitter/android/api/o;->b()Ljava/util/ArrayList;

    move-result-object v9

    cmp-long v2, p1, v5

    if-nez v2, :cond_154

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_12f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_154

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/ac;

    iget v11, v2, Lcom/twitter/android/api/ac;->t:I

    invoke-static {v11, v3}, Lcom/twitter/android/provider/ad;->a(II)I

    move-result v11

    iput v11, v2, Lcom/twitter/android/api/ac;->t:I
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_143} :catch_144

    goto :goto_12f

    :catch_144
    move-exception v2

    move-object v3, v2

    move/from16 v2, v19

    :goto_148
    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput v4, v0, Lcom/twitter/android/network/c;->b:I

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/twitter/android/network/c;->d:Ljava/lang/Exception;

    move-object/from16 v3, v20

    goto :goto_e0

    :cond_154
    :try_start_154
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8}, Lcom/twitter/android/api/o;->a()Ljava/lang/String;

    move-result-object v16

    const-wide/16 v13, -0x1

    if-nez v21, :cond_17d

    if-nez v7, :cond_17d

    const-string v15, "-1"

    :goto_165
    move-object/from16 v8, p3

    move-wide v10, v5

    move v12, v4

    invoke-virtual/range {v8 .. v16}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_16c} :catch_144

    move-result v2

    add-int v2, v2, v19

    :try_start_16f
    const-string v8, "0"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_16f .. :try_end_176} :catch_194

    move-result v8

    if-eqz v8, :cond_17f

    move-object/from16 v3, v20

    goto/16 :goto_e0

    :cond_17d
    const/4 v15, 0x0

    goto :goto_165

    :cond_17f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v21, 0x1

    move/from16 v21, v8

    move/from16 v19, v2

    move-object/from16 v2, v20

    goto/16 :goto_9e

    :catch_194
    move-exception v3

    goto :goto_148

    :cond_196
    move-object v3, v2

    move/from16 v2, v19

    goto/16 :goto_e0

    :cond_19b
    move/from16 v2, v19

    move-object/from16 v3, v20

    goto/16 :goto_e0

    nop

    :sswitch_data_1a2
    .sparse-switch
        0x0 -> :sswitch_f1
        0x1 -> :sswitch_63
        0x10 -> :sswitch_105
    .end sparse-switch
.end method

.method private b(Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 10

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "client_applications"

    aput-object v2, v1, v6

    const-string v2, "configuration"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->b()Z

    move-result v1

    if-eqz v1, :cond_40

    :try_start_33
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    const-string v2, "settings"

    invoke-static {v1}, Lcom/twitter/android/api/r;->i(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/c;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_40} :catch_41

    :cond_40
    :goto_40
    return-object v0

    :catch_41
    move-exception v1

    iput v6, v0, Lcom/twitter/android/network/c;->b:I

    goto :goto_40
.end method

.method private b(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 18

    const-string v1, "list_type"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v1, "user_id"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v1, "page"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v2, 0x2

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/provider/ae;->a(IIJI)Ljava/lang/String;

    move-result-object v1

    packed-switch v3, :pswitch_data_f8

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid list type: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_44
    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "lists"

    aput-object v8, v6, v7

    invoke-virtual {v2, v6}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ".json"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    :goto_58
    const-string v2, "user_id"

    invoke-static {v8, v2, v4, v5}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    if-eqz v1, :cond_64

    const-string v2, "cursor"

    invoke-static {v8, v2, v1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v6

    iget-object v7, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v10, 0x0

    move-object/from16 v9, p2

    invoke-static/range {v6 .. v11}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->b()Z

    move-result v1

    if-eqz v1, :cond_91

    packed-switch v3, :pswitch_data_102

    const/4 v1, 0x0

    :goto_84
    :try_start_84
    invoke-static {v11}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;I)Lcom/twitter/android/api/o;

    move-result-object v1

    if-nez v1, :cond_d8

    const/4 v1, 0x0

    iput v1, v2, Lcom/twitter/android/network/c;->b:I
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_91} :catch_e7

    :cond_91
    :goto_91
    return-object v2

    :pswitch_92
    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "lists"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "memberships"

    aput-object v8, v6, v7

    invoke-virtual {v2, v6}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ".json"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto :goto_58

    :pswitch_ac
    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "lists"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "subscriptions"

    aput-object v8, v6, v7

    invoke-virtual {v2, v6}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ".json"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto :goto_58

    :pswitch_c6
    const/4 v1, 0x0

    goto :goto_84

    :pswitch_c8
    cmp-long v1, v4, v12

    if-nez v1, :cond_ce

    const/4 v1, 0x1

    goto :goto_84

    :cond_ce
    const/4 v1, 0x0

    goto :goto_84

    :pswitch_d0
    cmp-long v1, v4, v12

    if-nez v1, :cond_d6

    const/4 v1, 0x1

    goto :goto_84

    :cond_d6
    const/4 v1, 0x0

    goto :goto_84

    :cond_d8
    :try_start_d8
    invoke-virtual {v1}, Lcom/twitter/android/api/o;->b()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v1}, Lcom/twitter/android/api/o;->a()Ljava/lang/String;

    move-result-object v11

    move-object v6, p1

    move-wide v8, v4

    move v10, v3

    invoke-virtual/range {v6 .. v11}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JILjava/lang/String;)V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_e6} :catch_e7

    goto :goto_91

    :catch_e7
    move-exception v1

    const/4 v3, 0x0

    iput v3, v2, Lcom/twitter/android/network/c;->b:I

    sget-boolean v3, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v3, :cond_91

    const-string v3, "TwitterService"

    const-string v4, "Problem processing response."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_91

    nop

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_44
        :pswitch_92
        :pswitch_ac
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_d0
        :pswitch_c6
        :pswitch_c8
    .end packed-switch
.end method

.method private static b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;
    .registers 3

    sget-object v0, Lcom/twitter/android/api/r;->b:Lorg/codehaus/jackson/a;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/a;->a([B)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method private c(JLcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 13

    const-string v0, "status_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p5, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "impression_id"

    invoke-virtual {p5, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "retweet"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v4}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_3f

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "impression_id"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "include_entities"

    const-string v3, "true"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "include_cards"

    const-string v3, "true"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/c;->b()Z

    move-result v0

    if-eqz v0, :cond_7c

    :try_start_71
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/api/r;->d(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/aa;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lcom/twitter/android/provider/ae;->a(Lcom/twitter/android/api/aa;J)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7c} :catch_7d

    :cond_7c
    :goto_7c
    return-object v1

    :catch_7d
    move-exception v0

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v2, :cond_7c

    const-string v2, "TwitterService"

    const-string v3, "retweet"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7c
.end method

.method private c(Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 9

    const/4 v4, 0x0

    const-string v0, "url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "urls"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v5, "shorten"

    aput-object v5, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v1, "url"

    invoke-static {v2, v1, v0}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v1

    :try_start_38
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/twitter/android/network/c;->b()Z

    move-result v0

    if-eqz v0, :cond_58

    const-string v0, "short_url"

    const-string v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_57
    :goto_57
    return-object v1

    :cond_58
    const-string v0, "errors"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/android/network/c;->c:Ljava/lang/String;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_6b} :catch_6c

    goto :goto_57

    :catch_6c
    move-exception v0

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v2, :cond_57

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_57
.end method

.method private c(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 16

    const-string v0, "page"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v0, "user_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "blocks"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "blocking"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, ".json"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v7, :cond_2e

    const-string v0, "page"

    invoke-static {v2, v0, v7}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_2e
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v4, 0x0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v11

    invoke-virtual {v11}, Lcom/twitter/android/network/c;->b()Z

    move-result v0

    if-eqz v0, :cond_77

    :try_start_49
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/api/r;->b(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_55
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/ac;

    iget v3, v0, Lcom/twitter/android/api/ac;->t:I

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/twitter/android/provider/ad;->a(II)I

    move-result v3

    iput v3, v0, Lcom/twitter/android/api/ac;->t:I
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_6a} :catch_6b

    goto :goto_55

    :catch_6b
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v1, :cond_77

    const-string v1, "TwitterService"

    const-string v2, "Problem processing response."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_77
    :goto_77
    return-object v11

    :cond_78
    const/4 v4, 0x2

    const-wide/16 v5, -0x1

    const/4 v0, 0x1

    if-ne v7, v0, :cond_94

    :try_start_7e
    const-string v7, "-1"

    :goto_80
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_96

    const-string v8, "0"

    :goto_88
    move-object v0, p1

    move-wide v2, v9

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "count"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_93} :catch_6b

    goto :goto_77

    :cond_94
    const/4 v7, 0x0

    goto :goto_80

    :cond_96
    const/4 v8, 0x0

    goto :goto_88
.end method

.method private d(JLcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 14

    const/16 v7, 0xc8

    const/4 v6, 0x0

    const-string v0, "status_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p5, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "statuses"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string v5, "destroy"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x400

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    invoke-static {v4, v5, v2, p4, v3}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->b()Z

    move-result v4

    if-eqz v4, :cond_55

    :try_start_45
    invoke-static {v3}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/api/r;->d(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/aa;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/twitter/android/provider/ae;->a(JLcom/twitter/android/api/aa;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_50} :catch_51

    :cond_50
    :goto_50
    return-object v2

    :catch_51
    move-exception v0

    iput v6, v2, Lcom/twitter/android/network/c;->b:I

    goto :goto_50

    :cond_55
    iget v3, v2, Lcom/twitter/android/network/c;->b:I

    const/16 v4, 0x194

    if-ne v3, v4, :cond_50

    invoke-virtual {p3, v0, v1}, Lcom/twitter/android/provider/ae;->a(J)Lcom/twitter/android/api/aa;

    move-result-object v3

    if-eqz v3, :cond_67

    invoke-virtual {p3, p1, p2, v3}, Lcom/twitter/android/provider/ae;->a(JLcom/twitter/android/api/aa;)V

    iput v7, v2, Lcom/twitter/android/network/c;->b:I

    goto :goto_50

    :cond_67
    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/twitter/android/provider/ae;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_50

    iput v7, v2, Lcom/twitter/android/network/c;->b:I

    goto :goto_50
.end method

.method private d(Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 13

    const/4 v4, 0x0

    const-wide/high16 v5, 0x7ff8

    const-string v0, "lat"

    invoke-virtual {p2, v0, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    const-string v2, "long"

    invoke-virtual {p2, v2, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v5

    const-string v2, "accuracy"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "geo"

    aput-object v8, v7, v4

    const/4 v8, 0x1

    const-string v9, "reverse_geocode"

    aput-object v9, v7, v8

    invoke-virtual {v2, v7}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".json"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_4b

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_4b

    const-string v7, "lat"

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v7, v0}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "long"

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    if-eqz v3, :cond_52

    const-string v0, "accuracy"

    invoke-static {v2, v0, v3}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->b()Z

    move-result v0

    if-eqz v0, :cond_e0

    :try_start_6c
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/api/r;->k(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_e0

    const/4 v1, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/u;

    const/4 v5, 0x3

    iget v6, v0, Lcom/twitter/android/api/u;->a:I

    if-ne v5, v6, :cond_7b

    iget-object v1, v0, Lcom/twitter/android/api/u;->b:Ljava/lang/String;

    sget-boolean v0, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v0, :cond_a6

    const-string v0, "TwitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found city type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ee

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ee

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/u;

    const/4 v4, 0x4

    iget v5, v0, Lcom/twitter/android/api/u;->a:I

    if-ne v4, v5, :cond_b0

    iget-object v0, v0, Lcom/twitter/android/api/u;->b:Ljava/lang/String;

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v1, :cond_db

    const-string v1, "TwitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found admin type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_db
    :goto_db
    const-string v1, "place"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_e0} :catch_e1

    :cond_e0
    :goto_e0
    return-object v2

    :catch_e1
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v1, :cond_e0

    const-string v1, "TwitterService"

    const-string v3, "reverseGeo"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e0

    :cond_ee
    move-object v0, v1

    goto :goto_db
.end method

.method private d(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 20

    const-string v1, "device_follow"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "user_id"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v2, "owner_id"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v2, "impression_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "friendships"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "create"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "user_id"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_61

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "follow"

    const-string v6, "true"

    invoke-direct {v1, v4, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_61
    if-eqz v2, :cond_68

    const-string v1, "impression_id"

    invoke-static {v3, v1, v2}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v14

    invoke-virtual {v14}, Lcom/twitter/android/network/c;->b()Z

    move-result v1

    if-eqz v1, :cond_e2

    :try_start_89
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ac;

    move-result-object v15

    iget-wide v1, v15, Lcom/twitter/android/api/ac;->a:J

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/provider/ae;->b(JI)V

    iget-wide v1, v15, Lcom/twitter/android/api/ac;->a:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/provider/ae;->d(J)I

    move-result v1

    iput v1, v15, Lcom/twitter/android/api/ac;->t:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p1

    move-wide v3, v12

    invoke-virtual/range {v1 .. v9}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    move-object/from16 v1, p1

    move-wide v3, v12

    move-wide v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/provider/ae;->a(IJJ)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/service/TwitterService;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ADD_USER_SUGGESTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "soid"

    invoke-virtual {v1, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/twitter/android/service/TwitterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_e2} :catch_e3

    :cond_e2
    :goto_e2
    return-object v14

    :catch_e3
    move-exception v1

    const/4 v1, 0x0

    iput v1, v14, Lcom/twitter/android/network/c;->b:I

    goto :goto_e2
.end method

.method private e(Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 13

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "account"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "verify_credentials"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v4, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v9

    invoke-virtual {v9}, Lcom/twitter/android/network/c;->b()Z

    move-result v0

    if-eqz v0, :cond_5d

    :try_start_34
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ac;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, v0, Lcom/twitter/android/api/ac;->a:J

    invoke-static {p0, v2, v3}, Lcom/twitter/android/provider/ae;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/ae;

    move-result-object v0

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_5d} :catch_5e

    :cond_5d
    :goto_5d
    return-object v9

    :catch_5e
    move-exception v0

    const/4 v1, 0x0

    iput v1, v9, Lcom/twitter/android/network/c;->b:I

    iput-object v0, v9, Lcom/twitter/android/network/c;->d:Ljava/lang/Exception;

    goto :goto_5d
.end method

.method private e(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 15

    const-wide/16 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "user_id"

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "owner_id"

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v0, "impression_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "friendships"

    aput-object v3, v2, v4

    const-string v3, "destroy"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v1, ".json"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "user_id"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_46

    const-string v1, "impression_id"

    invoke-static {v2, v1, v0}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v10

    invoke-virtual {v10}, Lcom/twitter/android/network/c;->b()Z

    move-result v0

    if-eqz v0, :cond_78

    :try_start_60
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ac;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v6, v7, v1}, Lcom/twitter/android/provider/ae;->c(JI)V

    const/4 v1, 0x0

    iget-wide v4, v0, Lcom/twitter/android/api/ac;->a:J

    move-object v0, p1

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/provider/ae;->a(IJJ)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_78} :catch_79

    :cond_78
    :goto_78
    return-object v10

    :catch_79
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v1, :cond_78

    const-string v1, "TwitterService"

    const-string v2, "Problem processing response."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_78
.end method

.method private f(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 18

    const-string v1, "owner_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v1, "user_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v1, "device_follow"

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "friendships"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "update"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "user_id"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v11, :cond_db

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "device"

    const-string v4, "true"

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_58
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v6, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v12

    invoke-virtual {v12}, Lcom/twitter/android/network/c;->b()Z

    move-result v1

    if-eqz v1, :cond_da

    :try_start_75
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ac;

    move-result-object v13

    if-eqz v11, :cond_e9

    new-instance v2, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x10

    invoke-virtual {p1, v7, v8, v1}, Lcom/twitter/android/provider/ae;->b(JI)V

    const/16 v5, 0x10

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p1

    move-wide v3, v9

    invoke-virtual/range {v1 .. v8}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;)V

    const-string v1, "account_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/service/TwitterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/twitter/android/provider/d;->a:Landroid/net/Uri;

    invoke-static {v3, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "notif_tweet"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_d4

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_d1

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_d1

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :cond_d1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_d4
    if-nez v1, :cond_da

    const/16 v1, 0x3e9

    iput v1, v12, Lcom/twitter/android/network/c;->b:I
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_da} :catch_fd

    :cond_da
    :goto_da
    return-object v12

    :cond_db
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "device"

    const-string v4, "false"

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_58

    :cond_e9
    const/16 v1, 0x10

    :try_start_eb
    invoke-virtual {p1, v7, v8, v1}, Lcom/twitter/android/provider/ae;->c(JI)V

    const/16 v2, 0x10

    move-object v1, p1

    move-wide v3, v9

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/provider/ae;->a(IJJ)V

    const/4 v1, 0x1

    iget-object v2, v13, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/twitter/android/provider/ae;->a(ILjava/lang/String;)I
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_fc} :catch_fd

    goto :goto_da

    :catch_fd
    move-exception v1

    const/4 v2, 0x0

    iput v2, v12, Lcom/twitter/android/network/c;->b:I

    iput-object v1, v12, Lcom/twitter/android/network/c;->d:Ljava/lang/Exception;

    goto :goto_da
.end method

.method private g(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 16

    const-wide/16 v3, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-string v0, "user_id"

    invoke-virtual {p3, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "owner_id"

    invoke-virtual {p3, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v2, "screen_name"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "direct_messages"

    aput-object v6, v4, v7

    const-string v6, "new"

    aput-object v6, v4, v10

    invoke-virtual {v2, v4}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".json"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez v3, :cond_b6

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "user_id"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_47
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "text"

    invoke-direct {v0, v1, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "include_entities"

    const-string v3, "true"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v10

    invoke-virtual {v10}, Lcom/twitter/android/network/c;->b()Z

    move-result v0

    if-eqz v0, :cond_b5

    :try_start_77
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/api/r;->f(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/p;

    move-result-object v11

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-wide v2, v8

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/provider/ae;->a(Ljava/util/List;JIZZLjava/lang/String;)I

    const-string v0, "user"

    iget-object v1, v11, Lcom/twitter/android/api/p;->e:Lcom/twitter/android/api/ac;

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/service/TwitterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ADD_USER_SUGGESTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "soid"

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user"

    iget-object v2, v11, Lcom/twitter/android/api/p;->e:Lcom/twitter/android/api/ac;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/service/TwitterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_b5} :catch_c1

    :cond_b5
    :goto_b5
    return-object v10

    :cond_b6
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "screen_name"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :catch_c1
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v1, :cond_b5

    const-string v1, "TwitterService"

    const-string v2, "Problem processing response."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b5
.end method

.method private h(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 18

    const-string v1, "user_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "owner_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v1, "screen_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/network/a;Ljava/lang/String;JLjava/io/ByteArrayOutputStream;)Lcom/twitter/android/network/c;

    move-result-object v12

    invoke-virtual {v12}, Lcom/twitter/android/network/c;->b()Z

    move-result v1

    if-eqz v1, :cond_67

    :try_start_2e
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ac;

    move-result-object v13

    if-eqz v13, :cond_67

    new-instance v2, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    iget-wide v1, v13, Lcom/twitter/android/api/ac;->a:J

    cmp-long v1, v10, v1

    if-eqz v1, :cond_60

    iget-wide v6, v13, Lcom/twitter/android/api/ac;->a:J

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide v4, v10

    invoke-direct/range {v1 .. v7}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;JJ)Lcom/twitter/android/network/c;

    :cond_60
    const-string v1, "user"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_67} :catch_68

    :cond_67
    :goto_67
    return-object v12

    :catch_68
    move-exception v1

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v2, :cond_67

    const-string v2, "TwitterService"

    const-string v3, "Problem processing response."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67
.end method

.method private i(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 15

    const-wide/16 v3, 0x0

    const/4 v2, 0x2

    const-string v0, "user_id"

    invoke-virtual {p3, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "owner_id"

    invoke-virtual {p3, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v0, "impression_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "blocks"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "destroy"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "user_id"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_47

    const-string v1, "impression_id"

    invoke-static {v2, v1, v0}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v5, 0x0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v10

    invoke-virtual {v10}, Lcom/twitter/android/network/c;->b()Z

    move-result v0

    if-eqz v0, :cond_68

    const/4 v1, 0x2

    move-object v0, p1

    move-wide v2, v8

    move-wide v4, v6

    :try_start_61
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/provider/ae;->a(IJJ)V

    const/4 v0, 0x4

    invoke-virtual {p1, v6, v7, v0}, Lcom/twitter/android/provider/ae;->c(JI)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_68} :catch_69

    :cond_68
    :goto_68
    return-object v10

    :catch_69
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v1, :cond_68

    const-string v1, "TwitterService"

    const-string v2, "destroyBlock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_68
.end method

.method private j(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 16

    const-string v0, "owner_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "desc"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "list_mode"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v2, "list_id"

    const-wide/16 v4, 0x0

    invoke-virtual {p3, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-nez v2, :cond_9c

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "lists"

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const-string v9, "create"

    aput-object v9, v5, v8

    invoke-virtual {v2, v5}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".json"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_47
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "name"

    invoke-direct {v5, v8, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    packed-switch v3, :pswitch_data_dc

    :goto_54
    if-eqz v1, :cond_60

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "description"

    invoke-direct {v0, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/twitter/android/network/c;->b()Z

    move-result v0

    if-eqz v0, :cond_9b

    :try_start_7a
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/android/api/r;->b(Lorg/codehaus/jackson/JsonParser;I)Lcom/twitter/android/api/q;

    move-result-object v9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-wide v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JILjava/lang/String;)V

    const-string v0, "list_id"

    invoke-virtual {v9}, Lcom/twitter/android/api/q;->a()J

    move-result-wide v1

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_9b} :catch_d5

    :cond_9b
    :goto_9b
    return-object v8

    :cond_9c
    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "lists"

    aput-object v11, v5, v10

    const/4 v10, 0x1

    const-string v11, "update"

    aput-object v11, v5, v10

    invoke-virtual {v2, v5}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".json"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "list_id"

    invoke-static {v2, v5, v8, v9}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    goto :goto_47

    :pswitch_bb
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "mode"

    const-string v5, "public"

    invoke-direct {v0, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    :pswitch_c8
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "mode"

    const-string v5, "private"

    invoke-direct {v0, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    :catch_d5
    move-exception v0

    const/4 v1, 0x0

    iput v1, v8, Lcom/twitter/android/network/c;->b:I

    iput-object v0, v8, Lcom/twitter/android/network/c;->d:Ljava/lang/Exception;

    goto :goto_9b

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_bb
        :pswitch_c8
    .end packed-switch
.end method

.method private k(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 13

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v8, 0x0

    const-string v0, "owner_id"

    invoke-virtual {p3, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "list_id"

    invoke-virtual {p3, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "lists"

    aput-object v6, v5, v8

    const/4 v6, 0x1

    const-string v7, "destroy"

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "list_id"

    invoke-static {v4, v5, v2, v3}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v6

    iget-object v7, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    invoke-static {v6, v7, v4, p2, v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/android/network/c;->b()Z

    move-result v6

    if-eqz v6, :cond_50

    :try_start_45
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/twitter/android/api/r;->b(Lorg/codehaus/jackson/JsonParser;I)Lcom/twitter/android/api/q;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/twitter/android/provider/ae;->c(JJ)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_50} :catch_51

    :cond_50
    :goto_50
    return-object v4

    :catch_51
    move-exception v0

    iput v8, v4, Lcom/twitter/android/network/c;->b:I

    iput-object v0, v4, Lcom/twitter/android/network/c;->d:Ljava/lang/Exception;

    goto :goto_50
.end method

.method private l(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 22

    const-string v2, "since_id"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "user_id"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v4, "list_id"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    const-string v4, "max_id"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v4, "count"

    const/16 v5, 0x64

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v10, "lists"

    aput-object v10, v6, v7

    const/4 v7, 0x1

    const-string v10, "statuses"

    aput-object v10, v6, v7

    invoke-virtual {v4, v6}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".json"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "list_id"

    move-wide/from16 v0, v16

    invoke-static {v4, v6, v0, v1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_5f

    const-string v6, "since_id"

    invoke-static {v4, v6, v2, v3}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_5f
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_6a

    const-string v2, "max_id"

    invoke-static {v4, v2, v8, v9}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_6a
    const-string v2, "per_page"

    invoke-static {v4, v2, v5}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v2, "include_entities"

    const/4 v3, 0x1

    invoke-static {v4, v2, v3}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v2, "include_cards"

    const/4 v3, 0x1

    invoke-static {v4, v2, v3}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/twitter/android/network/a;->i:Lcom/twitter/android/network/j;

    if-eqz v2, :cond_e0

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v6, 0x0

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v7}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v13, v2

    :goto_96
    invoke-virtual {v13}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->b()Z

    move-result v2

    if-eqz v2, :cond_df

    :try_start_a0
    invoke-static {v7}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/android/api/r;->c(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v3

    const-wide/16 v4, 0x0

    cmp-long v2, v8, v4

    if-lez v2, :cond_ef

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_ef

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/aa;

    iget-wide v4, v2, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    :goto_c6
    const-wide/16 v4, 0x0

    cmp-long v2, v8, v4

    if-lez v2, :cond_f1

    const/4 v10, 0x1

    :goto_cd
    const/16 v6, 0x9

    const-wide/16 v4, 0x0

    cmp-long v2, v8, v4

    if-lez v2, :cond_f3

    const/4 v9, 0x1

    :goto_d6
    const/4 v12, 0x1

    move-object/from16 v2, p1

    move-wide v4, v14

    move-wide/from16 v7, v16

    invoke-virtual/range {v2 .. v12}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_df} :catch_f5

    :cond_df
    :goto_df
    return-object v13

    :cond_e0
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v7}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v13, v2

    goto :goto_96

    :cond_ef
    const/4 v11, 0x0

    goto :goto_c6

    :cond_f1
    const/4 v10, 0x0

    goto :goto_cd

    :cond_f3
    const/4 v9, 0x0

    goto :goto_d6

    :catch_f5
    move-exception v2

    const/4 v3, 0x0

    iput v3, v13, Lcom/twitter/android/network/c;->b:I

    iput-object v2, v13, Lcom/twitter/android/network/c;->d:Ljava/lang/Exception;

    goto :goto_df
.end method

.method private m(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 22

    const-string v2, "user_id"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v2, "list_id"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    const-string v2, "page"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v2, "user_type"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v3, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/twitter/android/provider/ae;->a(IIJI)Ljava/lang/String;

    move-result-object v2

    packed-switch v4, :pswitch_data_e6

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Unknown user type: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_45
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "lists"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "members"

    aput-object v10, v8, v9

    invoke-virtual {v3, v8}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ".json"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    :goto_60
    const-string v3, "list_id"

    move-wide/from16 v0, v16

    invoke-static {v10, v3, v0, v1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    if-eqz v2, :cond_6e

    const-string v3, "cursor"

    invoke-static {v10, v3, v2}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v12, 0x0

    move-object/from16 v11, p2

    invoke-static/range {v8 .. v13}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/network/c;->b()Z

    move-result v2

    if-eqz v2, :cond_99

    :try_start_8c
    invoke-static {v13}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/o;

    move-result-object v2

    if-nez v2, :cond_b6

    const/4 v2, 0x0

    iput v2, v3, Lcom/twitter/android/network/c;->b:I
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_99} :catch_d4

    :cond_99
    :goto_99
    return-object v3

    :pswitch_9a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "lists"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "subscribers"

    aput-object v10, v8, v9

    invoke-virtual {v3, v8}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ".json"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    goto :goto_60

    :cond_b6
    :try_start_b6
    invoke-virtual {v2}, Lcom/twitter/android/api/o;->b()Ljava/util/ArrayList;

    move-result-object v8

    if-nez v7, :cond_e4

    const-string v14, "-1"

    :goto_be
    invoke-virtual {v2}, Lcom/twitter/android/api/o;->a()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v7, p1

    move-wide v9, v5

    move v11, v4

    move-wide/from16 v12, v16

    invoke-virtual/range {v7 .. v15}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v4, "count"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_d3} :catch_d4

    goto :goto_99

    :catch_d4
    move-exception v2

    const/4 v4, 0x0

    iput v4, v3, Lcom/twitter/android/network/c;->b:I

    sget-boolean v4, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v4, :cond_99

    const-string v4, "TwitterService"

    const-string v5, "getListUsers"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_99

    :cond_e4
    const/4 v14, 0x0

    goto :goto_be

    :pswitch_data_e6
    .packed-switch 0x4
        :pswitch_45
        :pswitch_9a
        :pswitch_45
    .end packed-switch
.end method

.method private n(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 18

    const-string v1, "owner_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v1, "user_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "list_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v1, "user_type"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    move-object v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/network/a;Ljava/lang/String;JLjava/io/ByteArrayOutputStream;)Lcom/twitter/android/network/c;

    move-result-object v1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/twitter/android/network/c;->b()Z

    move-result v1

    if-eqz v1, :cond_71

    :try_start_3f
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ac;

    move-result-object v13

    if-eqz v13, :cond_71

    packed-switch v12, :pswitch_data_108

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown user type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_65} :catch_65

    :catch_65
    move-exception v1

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v2, :cond_71

    const-string v2, "TwitterService"

    const-string v3, "addListUser"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_71
    const/4 v1, 0x0

    :goto_72
    return-object v1

    :pswitch_73
    :try_start_73
    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v6, "lists"

    aput-object v6, v2, v3

    const/4 v3, 0x1

    const-string v6, "members"

    aput-object v6, v2, v3

    const/4 v3, 0x2

    const-string v6, "create"

    aput-object v6, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "list_id"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "user_id"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_ad
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    move-object/from16 v4, p2

    move-object v5, v7

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/twitter/android/network/c;->b()Z

    move-result v1

    if-eqz v1, :cond_d9

    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/twitter/android/api/r;->b(Lorg/codehaus/jackson/JsonParser;I)Lcom/twitter/android/api/q;

    move-result-object v6

    move-object v1, p1

    move-wide v2, v8

    move-object v4, v13

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/provider/ae;->a(JLcom/twitter/android/api/ac;ILcom/twitter/android/api/q;)V

    :cond_d9
    move-object v1, v7

    goto :goto_72

    :pswitch_db
    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "lists"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "subscribers"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "create"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "list_id"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_107} :catch_65

    goto :goto_ad

    :pswitch_data_108
    .packed-switch 0x4
        :pswitch_73
        :pswitch_db
    .end packed-switch
.end method

.method private o(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 18

    const-string v1, "owner_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v1, "user_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v1, "list_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "user_type"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    packed-switch v12, :pswitch_data_ec

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown user type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_44
    iget-object v3, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "lists"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "members"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "destroy"

    aput-object v7, v4, v6

    invoke-virtual {v3, v4}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "list_id"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v6, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "user_id"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7e
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v13

    invoke-virtual {v13}, Lcom/twitter/android/network/c;->b()Z

    move-result v1

    if-eqz v1, :cond_ac

    packed-switch v12, :pswitch_data_f4

    const/4 v1, 0x0

    :goto_9d
    :try_start_9d
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/twitter/android/api/r;->b(Lorg/codehaus/jackson/JsonParser;I)Lcom/twitter/android/api/q;

    move-result-object v7

    move-object v1, p1

    move v2, v12

    move-wide v3, v8

    move-wide v5, v10

    invoke-virtual/range {v1 .. v7}, Lcom/twitter/android/provider/ae;->a(IJJLcom/twitter/android/api/q;)V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_ac} :catch_de

    :cond_ac
    :goto_ac
    return-object v13

    :pswitch_ad
    iget-object v3, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "lists"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "subscribers"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "destroy"

    aput-object v7, v4, v6

    invoke-virtual {v3, v4}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "list_id"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v6, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    :pswitch_da
    const/4 v1, 0x1

    goto :goto_9d

    :pswitch_dc
    const/4 v1, 0x2

    goto :goto_9d

    :catch_de
    move-exception v1

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v2, :cond_ac

    const-string v2, "TwitterService"

    const-string v3, "removeListUser"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ac

    nop

    :pswitch_data_ec
    .packed-switch 0x4
        :pswitch_44
        :pswitch_ad
    .end packed-switch

    :pswitch_data_f4
    .packed-switch 0x4
        :pswitch_da
        :pswitch_dc
    .end packed-switch
.end method

.method private p(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 14

    const-wide/16 v5, 0x0

    const/4 v3, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-string v0, "user_id"

    invoke-virtual {p3, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "list_id"

    invoke-virtual {p3, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v2, "user_type"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_94

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown user type: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_30
    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "lists"

    aput-object v5, v3, v4

    const-string v5, "members"

    aput-object v5, v3, v8

    const-string v5, "show"

    aput-object v5, v3, v9

    invoke-virtual {v2, v3}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_4a
    const-string v3, "user_id"

    invoke-static {v2, v3, v0, v1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    const-string v0, "list_id"

    invoke-static {v2, v0, v6, v7}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v5, 0x0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->b()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-virtual {p1, v6, v7, v8}, Lcom/twitter/android/provider/ae;->a(JZ)V

    :cond_6d
    :goto_6d
    return-object v0

    :pswitch_6e
    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "lists"

    aput-object v5, v3, v4

    const-string v5, "subscribers"

    aput-object v5, v3, v8

    const-string v5, "show"

    aput-object v5, v3, v9

    invoke-virtual {v2, v3}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_4a

    :cond_89
    iget v1, v0, Lcom/twitter/android/network/c;->b:I

    const/16 v2, 0x194

    if-ne v1, v2, :cond_6d

    invoke-virtual {p1, v6, v7, v4}, Lcom/twitter/android/provider/ae;->a(JZ)V

    goto :goto_6d

    nop

    :pswitch_data_94
    .packed-switch 0x4
        :pswitch_30
        :pswitch_6e
    .end packed-switch
.end method

.method private q(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 26

    const-string v2, "owner_id"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v2, "max_id"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v2, "since_id"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v2, "page"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v2, "q"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "q_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "q_type"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v2, "place"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "lang"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "show_user"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    const-string v2, "geo"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "locale"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v2, "count"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-gtz v2, :cond_76

    const/16 v2, 0x14

    :cond_76
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    iget-object v4, v4, Lcom/twitter/android/network/o;->a:Ljava/lang/String;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "i"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string v21, "search"

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/twitter/android/network/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v19, ".json"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v19, "q"

    move-object/from16 v0, v19

    invoke-static {v4, v0, v15}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x5

    move/from16 v0, v19

    if-ne v3, v0, :cond_b6

    const-string v19, "result_type"

    const-string v20, "recent"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v4, v0, v1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b6
    if-eqz v10, :cond_bf

    const-string v19, "lang"

    move-object/from16 v0, v19

    invoke-static {v4, v0, v10}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_bf
    if-eqz v18, :cond_c8

    const-string v10, "locale"

    move-object/from16 v0, v18

    invoke-static {v4, v10, v0}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c8
    const-wide/16 v18, 0x0

    cmp-long v10, v7, v18

    if-eqz v10, :cond_d3

    const-string v10, "since_id"

    invoke-static {v4, v10, v7, v8}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_d3
    const-string v7, "rpp"

    invoke-static {v4, v7, v2}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_e3

    const-string v2, "max_id"

    invoke-static {v4, v2, v5, v6}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_e3
    if-eqz v11, :cond_ea

    const-string v2, "show_user"

    invoke-static {v4, v2, v11}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :cond_ea
    if-eqz v12, :cond_f1

    const-string v2, "geocode"

    invoke-static {v4, v2, v12}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f1
    const/4 v2, 0x1

    if-ne v9, v2, :cond_117

    const-string v2, "stories"

    const-string v5, "fetch_stories"

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v4, v2, v5}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v2, "related_queries"

    const/4 v5, 0x1

    invoke-static {v4, v2, v5}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v2, "spelling_corrections"

    const/4 v5, 0x1

    invoke-static {v4, v2, v5}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const/4 v2, 0x5

    if-eq v3, v2, :cond_117

    const-string v2, "pc"

    const/4 v3, 0x1

    invoke-static {v4, v2, v3}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :cond_117
    const-string v2, "include_entities"

    const/4 v3, 0x1

    invoke-static {v4, v2, v3}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v2, "include_cards"

    const/4 v3, 0x1

    invoke-static {v4, v2, v3}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v2, "events"

    const/4 v3, 0x1

    invoke-static {v4, v2, v3}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v6, 0x0

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v7}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/twitter/android/network/c;->b()Z

    move-result v2

    if-eqz v2, :cond_1c4

    :try_start_147
    invoke-static {v7}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/android/api/r;->s(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/x;

    move-result-object v19

    const/4 v2, 0x1

    if-ne v9, v2, :cond_155

    invoke-virtual/range {p1 .. p1}, Lcom/twitter/android/provider/ae;->a()I

    :cond_155
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/twitter/android/api/x;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_177

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/twitter/android/api/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_177

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/twitter/android/api/x;->b:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/TwitterStory;

    const-string v3, "stories"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_177
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/twitter/android/api/x;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_207

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/twitter/android/api/x;->a:Ljava/util/ArrayList;

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    if-eq v9, v2, :cond_1c5

    const/4 v9, 0x1

    :goto_18f
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_193
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1cd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/aa;

    iget-object v5, v2, Lcom/twitter/android/api/aa;->r:Lcom/twitter/android/api/PromotedContent;

    if-eqz v5, :cond_1c7

    iget-object v5, v2, Lcom/twitter/android/api/aa;->r:Lcom/twitter/android/api/PromotedContent;

    iget-object v5, v5, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    if-eqz v5, :cond_1c7

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1ae
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_1ae} :catch_1af

    goto :goto_193

    :catch_1af
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput v3, v0, Lcom/twitter/android/network/c;->b:I

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/twitter/android/network/c;->d:Ljava/lang/Exception;

    sget-boolean v3, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v3, :cond_1c4

    const-string v3, "TwitterService"

    const-string v4, "searchTweets"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c4
    :goto_1c4
    return-object v18

    :cond_1c5
    const/4 v9, 0x0

    goto :goto_18f

    :cond_1c7
    :try_start_1c7
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_193

    :cond_1cd
    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p1

    move-wide v4, v13

    move v10, v9

    invoke-virtual/range {v2 .. v12}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    const/16 v6, 0xd

    const-wide/16 v7, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    move-wide v4, v13

    move v10, v9

    invoke-virtual/range {v2 .. v12}, Lcom/twitter/android/provider/ae;->b(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1fd

    const/16 v6, 0xd

    const-wide/16 v7, 0x5

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, v21

    move-wide v4, v13

    move v10, v9

    invoke-virtual/range {v2 .. v12}, Lcom/twitter/android/provider/ae;->b(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    :cond_1fd
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/service/TwitterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/provider/z;->o:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_207
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/twitter/android/api/x;->c:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/twitter/android/api/x;->d:Ljava/util/ArrayList;

    if-eqz v2, :cond_218

    const-string v4, "related_queries"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_218
    if-eqz v3, :cond_221

    const-string v2, "spelling_corrections"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_221
    new-instance v2, Lcom/twitter/android/api/w;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v3, v16

    move-object v4, v15

    move-object/from16 v12, v17

    invoke-direct/range {v2 .. v14}, Lcom/twitter/android/api/w;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/util/ArrayList;Lcom/twitter/android/api/PromotedContent;)V

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/provider/ae;->a(Lcom/twitter/android/api/w;I)J
    :try_end_23a
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_23a} :catch_1af

    goto :goto_1c4
.end method

.method private r(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 20

    const-string v1, "owner_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v1, "q"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "count"

    const/16 v2, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v1, "page"

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "users"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "search"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "q"

    invoke-static {v3, v2, v12}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "per_page"

    invoke-static {v3, v2, v13}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    if-lez v1, :cond_51

    const-string v2, "page"

    invoke-static {v3, v2, v1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_51
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/twitter/android/network/a;->i:Lcom/twitter/android/network/j;

    if-eqz v1, :cond_ad

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v5, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v1

    move-object v9, v1

    :goto_70
    invoke-virtual {v9}, Lcom/twitter/android/network/c;->b()Z

    move-result v1

    if-eqz v1, :cond_ac

    :try_start_76
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/api/r;->b(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v14

    const-string v15, "search_id"

    new-instance v1, Lcom/twitter/android/api/w;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v2, v12

    move-object v3, v12

    invoke-direct/range {v1 .. v8}, Lcom/twitter/android/api/w;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/twitter/android/api/PromotedContent;)V

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v13, :cond_c1

    const/4 v7, 0x1

    :goto_93
    move-object/from16 v2, p1

    move-object v3, v1

    move-object v4, v14

    move-wide v5, v10

    invoke-virtual/range {v2 .. v7}, Lcom/twitter/android/provider/ae;->a(Lcom/twitter/android/api/w;Ljava/util/List;JZ)J

    move-result-wide v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "count"

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_ac} :catch_c3

    :cond_ac
    :goto_ac
    return-object v9

    :cond_ad
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v6}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/c;->a(I)Lcom/twitter/android/network/c;

    move-result-object v1

    move-object v9, v1

    goto :goto_70

    :cond_c1
    const/4 v7, 0x0

    goto :goto_93

    :catch_c3
    move-exception v1

    const/4 v1, 0x0

    iput v1, v9, Lcom/twitter/android/network/c;->b:I

    goto :goto_ac
.end method

.method private s(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 15

    const-string v0, "name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "desc"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "place"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "account_name"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "account"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "update_profile"

    aput-object v8, v4, v7

    invoke-virtual {v2, v4}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".json"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_48

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "name"

    invoke-direct {v7, v8, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    if-eqz v3, :cond_54

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "url"

    invoke-direct {v0, v7, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54
    if-eqz v5, :cond_60

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "location"

    invoke-direct {v0, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    if-eqz v1, :cond_6c

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "description"

    invoke-direct {v0, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6c
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v9

    invoke-virtual {v9}, Lcom/twitter/android/network/c;->b()Z

    move-result v0

    if-eqz v0, :cond_ae

    :try_start_86
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ac;

    move-result-object v10

    const/4 v0, 0x0

    invoke-static {p0, v6, v10, v0}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/android/api/ac;Lcom/twitter/android/api/af;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    const-string v0, "user"

    invoke-virtual {p3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_ae} :catch_af

    :cond_ae
    :goto_ae
    return-object v9

    :catch_af
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v1, :cond_ae

    const-string v1, "TwitterService"

    const-string v2, "updateProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ae
.end method

.method private t(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 19

    const-string v1, "owner_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v1, "since_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "max_id"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v3, "count"

    const/16 v4, 0x64

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v3, "i_type"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const/4 v3, 0x1

    if-ne v3, v13, :cond_f2

    iget-object v3, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    iget-object v3, v3, Lcom/twitter/android/network/o;->a:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "i"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "activity"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "by_friends"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/twitter/android/network/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    :goto_54
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_66

    const-wide/16 v4, 0x0

    cmp-long v4, v11, v4

    if-nez v4, :cond_66

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/twitter/android/provider/ae;->b(I)J

    move-result-wide v1

    :cond_66
    const-string v4, "include_entities"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v4, "include_cards"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    if-lez v7, :cond_79

    const-string v4, "count"

    invoke-static {v3, v4, v7}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_79
    const-wide/16 v4, 0x0

    cmp-long v4, v11, v4

    if-lez v4, :cond_84

    const-string v4, "max_id"

    invoke-static {v3, v4, v11, v12}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_84
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_8f

    const-string v4, "since_id"

    invoke-static {v3, v4, v1, v2}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_8f
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v6, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v5, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/c;->a(I)Lcom/twitter/android/network/c;

    move-result-object v14

    const/4 v8, 0x0

    invoke-virtual {v14}, Lcom/twitter/android/network/c;->b()Z

    move-result v1

    if-eqz v1, :cond_14c

    :try_start_af
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/api/r;->r(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v1, v11, v3

    if-lez v1, :cond_114

    const/4 v6, 0x1

    :goto_be
    if-eqz v6, :cond_116

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v7, :cond_116

    const/4 v7, 0x1

    :goto_c7
    move-object/from16 v1, p1

    move-wide v3, v9

    move v5, v13

    invoke-virtual/range {v1 .. v7}, Lcom/twitter/android/provider/ae;->a(Ljava/util/ArrayList;JIZZ)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_d2} :catch_13f

    move-result v3

    if-nez v13, :cond_136

    if-nez v6, :cond_136

    if-lez v3, :cond_136

    const/4 v2, 0x0

    :try_start_da
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_de
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_127

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/n;

    iget v1, v1, Lcom/twitter/android/api/n;->a:I
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_ec} :catch_148

    packed-switch v1, :pswitch_data_14e

    move v1, v2

    :goto_f0
    move v2, v1

    goto :goto_de

    :cond_f2
    iget-object v3, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    iget-object v3, v3, Lcom/twitter/android/network/o;->a:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "i"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "activity"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "about_me"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/twitter/android/network/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto/16 :goto_54

    :cond_114
    const/4 v6, 0x0

    goto :goto_be

    :cond_116
    const/4 v7, 0x0

    goto :goto_c7

    :pswitch_118
    or-int/lit8 v2, v2, 0x1

    goto :goto_de

    :pswitch_11b
    or-int/lit8 v2, v2, 0x2

    goto :goto_de

    :pswitch_11e
    or-int/lit8 v2, v2, 0x4

    goto :goto_de

    :pswitch_121
    or-int/lit8 v2, v2, 0x8

    goto :goto_de

    :pswitch_124
    or-int/lit8 v1, v2, 0x10

    goto :goto_f0

    :cond_127
    :try_start_127
    invoke-static {p0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v1

    const-string v4, "account_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/twitter/android/provider/a;->a(Ljava/lang/String;I)I
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_136} :catch_148

    :cond_136
    move v1, v3

    :goto_137
    const-string v2, "count"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v14

    :catch_13f
    move-exception v1

    move-object v2, v1

    move v1, v8

    :goto_142
    const/4 v3, 0x0

    iput v3, v14, Lcom/twitter/android/network/c;->b:I

    iput-object v2, v14, Lcom/twitter/android/network/c;->d:Ljava/lang/Exception;

    goto :goto_137

    :catch_148
    move-exception v1

    move-object v2, v1

    move v1, v3

    goto :goto_142

    :cond_14c
    move v1, v8

    goto :goto_137

    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_11b
        :pswitch_118
        :pswitch_118
        :pswitch_121
        :pswitch_11e
        :pswitch_124
    .end packed-switch
.end method

.method private u(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;
    .registers 15

    const/4 v10, 0x2

    const/4 v9, 0x1

    const-wide/high16 v5, 0x7ff8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    iget-object v0, v0, Lcom/twitter/android/network/o;->a:Ljava/lang/String;

    new-array v1, v10, [Ljava/lang/Object;

    const-string v2, "i"

    aput-object v2, v1, v4

    const-string v2, "discovery"

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Lcom/twitter/android/network/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "lat"

    invoke-virtual {p3, v0, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    const-string v3, "long"

    invoke-virtual {p3, v3, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v5

    const-string v3, "soid"

    const-wide/16 v7, 0x0

    invoke-virtual {p3, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_47

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_47

    const-string v3, "lat"

    invoke-static {v2, v3, v0, v1}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;D)V

    const-string v0, "long"

    invoke-static {v2, v0, v5, v6}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;D)V

    :cond_47
    const-string v0, "lang"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_58

    const-string v1, "lang"

    invoke-static {v2, v1, v0}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    const-string v0, "schema"

    invoke-static {v2, v0, v10}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x400

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/twitter/android/network/c;->a(I)Lcom/twitter/android/network/c;

    move-result-object v1

    :try_start_73
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    invoke-static {v0}, Lcom/twitter/android/api/r;->t(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0, v7, v8}, Lcom/twitter/android/provider/ae;->a(Ljava/util/List;J)Ljava/util/BitSet;

    move-result-object v0

    const-string v2, "unread_story_states"

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "unread_stories"

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_90} :catch_91

    :goto_90
    return-object v1

    :catch_91
    move-exception v0

    iput v4, v1, Lcom/twitter/android/network/c;->b:I

    iput-object v0, v1, Lcom/twitter/android/network/c;->d:Ljava/lang/Exception;

    goto :goto_90
.end method


# virtual methods
.method final a(I)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_18

    :goto_30
    return-void

    :cond_31
    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/service/TwitterService;->stopSelf(I)V

    goto :goto_3b

    :cond_4f
    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_30
.end method

.method final a(Landroid/content/Intent;I)V
    .registers 39

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/Integer;

    new-instance v7, Lcom/twitter/android/network/a;

    const-string v2, "auth"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/network/j;

    invoke-direct {v7, v2}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/j;)V

    const-string v2, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "soid"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/twitter/android/provider/ae;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/ae;

    move-result-object v2

    if-nez v5, :cond_cf

    const/4 v5, 0x0

    move/from16 v24, v5

    :goto_3c
    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/16 v17, 0x0

    sparse-switch v24, :sswitch_data_12de

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v2, :cond_5f

    const-string v2, "TwitterService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Unknown action: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    move-object/from16 v7, v17

    :goto_61
    if-eqz v7, :cond_12b9

    iget v6, v7, Lcom/twitter/android/network/c;->b:I

    iget-object v5, v7, Lcom/twitter/android/network/c;->c:Ljava/lang/String;

    iget-object v2, v7, Lcom/twitter/android/network/c;->e:Lcom/twitter/android/api/i;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v7}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;JLcom/twitter/android/network/c;)V

    move-object v3, v5

    move v4, v6

    :goto_70
    sget-boolean v5, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v5, :cond_92

    const-string v5, "TwitterService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Action complete: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    const-string v5, "ibinder"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ba

    const-string v5, "action_code"

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "resp_code"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "reason_phrase"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "rate_limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_ba
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->a:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->a:Landroid/os/Handler;

    move/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_cf
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v24, v5

    goto/16 :goto_3c

    :sswitch_d7
    new-instance v5, Lcom/twitter/android/platform/c;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/twitter/android/platform/c;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/content/SyncResult;

    invoke-direct {v6}, Landroid/content/SyncResult;-><init>()V

    const-string v2, "account"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    const-string v7, "_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v8

    invoke-virtual {v5, v8, v2, v7, v6}, Lcom/twitter/android/platform/c;->a(Lcom/twitter/android/network/d;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)V

    move-object/from16 v7, v17

    goto/16 :goto_61

    :sswitch_100
    const-string v5, "i_type"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "status_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v8

    const-wide/16 v6, -0x1

    invoke-virtual/range {v2 .. v8}, Lcom/twitter/android/provider/ae;->a(JIJ[J)V

    if-nez v8, :cond_5f

    sparse-switch v5, :sswitch_data_1418

    :goto_11b
    move-object/from16 v7, v17

    goto/16 :goto_61

    :sswitch_11f
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v2

    const-string v5, "tweet"

    const/4 v6, 0x0

    invoke-virtual {v2, v9, v5, v6}, Lcom/twitter/android/provider/a;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-object/from16 v7, v17

    goto/16 :goto_61

    :sswitch_12d
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/twitter/android/provider/ae;->d(I)V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v2

    const-string v5, "mention"

    const/4 v6, 0x0

    invoke-virtual {v2, v9, v5, v6}, Lcom/twitter/android/provider/a;->b(Ljava/lang/String;Ljava/lang/String;I)I

    goto :goto_11b

    :sswitch_13c
    invoke-virtual {v2}, Lcom/twitter/android/provider/ae;->d()V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v2

    const-string v5, "message"

    const/4 v6, 0x0

    invoke-virtual {v2, v9, v5, v6}, Lcom/twitter/android/provider/a;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-object/from16 v7, v17

    goto/16 :goto_61

    :sswitch_14d
    const-string v5, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/twitter/android/provider/ae;->f(J)V

    move-object/from16 v7, v17

    goto/16 :goto_61

    :sswitch_15e
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/twitter/android/platform/j;->b(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v9}, Lcom/twitter/android/service/TwitterService;->a(JLjava/lang/String;)V

    invoke-virtual {v2}, Lcom/twitter/android/provider/ae;->c()V

    move-object/from16 v7, v17

    goto/16 :goto_61

    :sswitch_16f
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v9}, Lcom/twitter/android/service/TwitterService;->a(JLjava/lang/String;)V

    move-object/from16 v7, v17

    goto/16 :goto_61

    :sswitch_178
    const-string v5, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v5, "status_type"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v5, "max_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    const-string v5, "status_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v5, "since_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v5, "count"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move-object/from16 v5, p0

    move-object v6, v2

    move-object/from16 v19, p1

    invoke-direct/range {v5 .. v19}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;JIJJJIZLandroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_1c0
    move-object/from16 v8, p0

    move-wide v9, v3

    move-object v11, v2

    move-object v12, v7

    move-object/from16 v13, p1

    invoke-direct/range {v8 .. v13}, Lcom/twitter/android/service/TwitterService;->a(JLcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_1ce
    const-string v5, "status_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v5, "impression_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    move-object v8, v2

    move-wide v9, v3

    invoke-virtual/range {v8 .. v13}, Lcom/twitter/android/provider/ae;->a(JJZ)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "favorites"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "destroy"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v8}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v6, ".json"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_21a

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "impression_id"

    invoke-direct {v6, v8, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21a
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/16 v18, 0x0

    move-object/from16 v16, v7

    invoke-static/range {v13 .. v18}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v8

    iget v5, v8, Lcom/twitter/android/network/c;->b:I

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_239

    const/4 v7, 0x1

    move-wide v5, v11

    invoke-virtual/range {v2 .. v7}, Lcom/twitter/android/provider/ae;->a(JJZ)V

    :cond_239
    move-object v7, v8

    goto/16 :goto_61

    :sswitch_23c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_247
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_252
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->b(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_25d
    move-object/from16 v8, p0

    move-wide v9, v3

    move-object v11, v2

    move-object v12, v7

    move-object/from16 v13, p1

    invoke-direct/range {v8 .. v13}, Lcom/twitter/android/service/TwitterService;->b(JLcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_26b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->c(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_276
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->d(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_281
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->e(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_28c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->f(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_297
    const-string v5, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v5, "max_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    const-string v5, "since_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v5, "count"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const/16 v5, 0x10

    move/from16 v0, v24

    if-ne v0, v5, :cond_2d2

    const/4 v10, 0x1

    move-object/from16 v8, p0

    move-object v9, v2

    move-object v11, v7

    move-object/from16 v19, p1

    invoke-direct/range {v8 .. v19}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/ae;ILcom/twitter/android/network/a;JJJILandroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :cond_2d2
    const/4 v10, 0x0

    const/16 v19, 0x0

    move-object/from16 v8, p0

    move-object v9, v2

    move-object v11, v7

    invoke-direct/range {v8 .. v19}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/ae;ILcom/twitter/android/network/a;JJJILandroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_2e0
    const-string v5, "user_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v7, "unread_tweet"

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v8}, Lcom/twitter/android/provider/ae;->f(JI)I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "unread_mention"

    const/4 v8, 0x5

    invoke-virtual {v2, v5, v6, v8}, Lcom/twitter/android/provider/ae;->f(JI)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "unread_dm"

    invoke-virtual {v2}, Lcom/twitter/android/provider/ae;->e()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v7, v17

    goto/16 :goto_61

    :sswitch_311
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->g(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_31c
    const-string v5, "message_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object v6, v2

    invoke-direct/range {v5 .. v10}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;JZ)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_331
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1}, Lcom/twitter/android/service/TwitterService;->c(Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_33c
    const-string v5, "owner_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v5, "user_id"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    move-object/from16 v5, p0

    move-object v6, v2

    invoke-direct/range {v5 .. v11}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;JJ)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_35a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->h(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_365
    const-string v5, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Lcom/twitter/android/api/TweetEntities;

    const-string v5, "i_type"

    const/4 v6, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v5, "status_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    move-object/from16 v5, p0

    move-object v6, v2

    move-wide v8, v3

    move-object/from16 v15, p1

    invoke-direct/range {v5 .. v15}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;JLjava/lang/String;ILcom/twitter/android/api/TweetEntities;JLandroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_397
    move-object/from16 v8, p0

    move-wide v9, v3

    move-object v11, v2

    move-object v12, v7

    move-object/from16 v13, p1

    invoke-direct/range {v8 .. v13}, Lcom/twitter/android/service/TwitterService;->c(JLcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_3a5
    move-object/from16 v8, p0

    move-wide v9, v3

    move-object v11, v2

    move-object v12, v7

    move-object/from16 v13, p1

    invoke-direct/range {v8 .. v13}, Lcom/twitter/android/service/TwitterService;->d(JLcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_3b3
    const/16 v5, 0x1c

    move/from16 v0, v24

    if-ne v0, v5, :cond_3c5

    const/4 v5, 0x1

    :goto_3ba
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1, v5}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;Z)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :cond_3c5
    const/4 v5, 0x0

    goto :goto_3ba

    :sswitch_3c7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->i(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_3d2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->j(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_3dd
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->k(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_3e8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->l(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_3f3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->m(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_3fe
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->n(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_409
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->o(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_414
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->p(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_41f
    const-string v5, "locale"

    const-wide/16 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7, v5, v6}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;J)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_432
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->q(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_43d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->r(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_448
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->s(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_453
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1}, Lcom/twitter/android/service/TwitterService;->d(Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_45e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1}, Lcom/twitter/android/service/TwitterService;->e(Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_469
    const-string v2, "screen_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "pass"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    iget-object v7, v7, Lcom/twitter/android/network/o;->a:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/oauth/access_token"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x_auth_mode"

    const-string v8, "client_auth"

    invoke-static {v6, v7, v8}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "x_auth_password"

    invoke-static {v6, v7, v5}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "x_auth_username"

    invoke-static {v6, v5, v2}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    new-instance v8, Lcom/twitter/android/network/a;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/j;)V

    invoke-static {v2, v7, v6, v8, v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->b()Z

    move-result v6

    if-eqz v6, :cond_4d4

    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->a(Ljava/io/ByteArrayOutputStream;)Lcom/twitter/android/network/j;

    move-result-object v2

    const-string v5, "auth"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v5, Lcom/twitter/android/network/a;

    invoke-direct {v5, v2}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/j;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lcom/twitter/android/service/TwitterService;->e(Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    :cond_4d4
    move-object v7, v2

    goto/16 :goto_61

    :sswitch_4d7
    const-string v2, "log_ev"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v2, -0x1

    if-eq v8, v2, :cond_5f

    const-string v2, "impression_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "trend_id"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/network/a;ILjava/lang/String;J)V

    move-object/from16 v7, v17

    goto/16 :goto_61

    :sswitch_4fe
    const-string v5, "max_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v5, "since_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v5, "count"

    const/16 v6, 0x64

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    const-string v5, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/twitter/android/api/ac;

    move-object/from16 v8, p0

    move-object v9, v2

    move-object v11, v7

    move-object/from16 v17, p1

    invoke-direct/range {v8 .. v17}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/ae;Lcom/twitter/android/api/ac;Lcom/twitter/android/network/a;JJILandroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_533
    const-string v5, "status_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v5, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "android.intent.extra.UID"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v5, "_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Lcom/twitter/android/api/TweetEntities;

    move-object v5, v2

    move-wide v9, v3

    invoke-virtual/range {v5 .. v13}, Lcom/twitter/android/provider/ae;->a(JLjava/lang/String;JJLcom/twitter/android/api/TweetEntities;)J

    move-object/from16 v7, v17

    goto/16 :goto_61

    :sswitch_562
    const-string v5, "status_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v7, 0x1

    new-array v7, v7, [J

    const/4 v8, 0x0

    aput-wide v5, v7, v8

    invoke-virtual {v2, v7}, Lcom/twitter/android/provider/ae;->a([J)I

    move-object/from16 v7, v17

    goto/16 :goto_61

    :sswitch_579
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "i_type"

    const/4 v8, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/service/TwitterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v6, Lcom/twitter/android/provider/z;->l:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v9, "ownerId"

    invoke-virtual {v6, v9, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    const/4 v5, 0x4

    new-array v10, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "g_status_id"

    aput-object v6, v10, v5

    const/4 v5, 0x1

    const-string v6, "content"

    aput-object v6, v10, v5

    const/4 v5, 0x2

    const-string v6, "entities"

    aput-object v6, v10, v5

    const/4 v5, 0x3

    const-string v6, "in_r_status_id"

    aput-object v6, v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "updated_at ASC"

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    if-eqz v18, :cond_5f

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v5

    new-array v0, v5, [J

    move-object/from16 v19, v0

    :goto_5c7
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5ff

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    aput-wide v8, v19, v5

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/twitter/android/api/TweetEntities;->a([B)Lcom/twitter/android/api/TweetEntities;

    move-result-object v12

    const/4 v5, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move-object/from16 v5, p0

    move-object v6, v2

    move-wide v8, v3

    move/from16 v11, v16

    move-object/from16 v15, p1

    invoke-direct/range {v5 .. v15}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;JLjava/lang/String;ILcom/twitter/android/api/TweetEntities;JLandroid/content/Intent;)Lcom/twitter/android/network/c;

    goto :goto_5c7

    :cond_5ff
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/twitter/android/provider/ae;->b([J)I

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    move-object/from16 v7, v17

    goto/16 :goto_61

    :sswitch_60b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "saved_searches"

    aput-object v9, v6, v8

    invoke-virtual {v5, v6}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v12, 0x0

    move-object v11, v7

    invoke-static/range {v8 .. v13}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/c;->b()Z

    move-result v6

    if-eqz v6, :cond_12c1

    :try_start_63e
    invoke-static {v13}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v6

    invoke-static {v6}, Lcom/twitter/android/api/r;->l(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v2, v6, v7}, Lcom/twitter/android/provider/ae;->a(Ljava/util/ArrayList;I)I
    :try_end_64a
    .catch Ljava/io/IOException; {:try_start_63e .. :try_end_64a} :catch_64d

    move-object v7, v5

    goto/16 :goto_61

    :catch_64d
    move-exception v2

    sget-boolean v6, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v6, :cond_659

    const-string v6, "TwitterService"

    const-string v7, "getSavedSearches"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_659
    move-object v7, v5

    goto/16 :goto_61

    :sswitch_65c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "users"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "suggestions"

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lang"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "locale"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_69b

    if-eqz v7, :cond_69b

    const-string v8, "lang"

    invoke-static {v5, v8, v6}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "country"

    invoke-static {v5, v6, v7}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "localize"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :cond_69b
    const-string v6, "samples"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v6, "sample_size"

    const-string v7, "large"

    invoke-static {v5, v6, v7}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v9, 0x0

    invoke-static {v7, v8, v5, v9, v6}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v14

    invoke-virtual {v14}, Lcom/twitter/android/network/c;->b()Z

    move-result v5

    if-eqz v5, :cond_12da

    :try_start_6c4
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v5

    invoke-static {v5}, Lcom/twitter/android/api/r;->n(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v15

    const-string v5, "count"

    const/4 v6, 0x7

    invoke-virtual {v2, v15, v6}, Lcom/twitter/android/provider/ae;->a(Ljava/util/ArrayList;I)I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6e1
    :goto_6e1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_706

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/w;

    iget-object v8, v5, Lcom/twitter/android/api/w;->i:Ljava/util/ArrayList;

    if-eqz v8, :cond_6e1

    iget-object v5, v5, Lcom/twitter/android/api/w;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_6f6
    .catch Ljava/io/IOException; {:try_start_6c4 .. :try_end_6f6} :catch_6f7

    goto :goto_6e1

    :catch_6f7
    move-exception v2

    sget-boolean v5, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v5, :cond_703

    const-string v5, "TwitterService"

    const-string v6, "Parsing suggestions"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_703
    move-object v7, v14

    goto/16 :goto_61

    :cond_706
    :try_start_706
    const-string v5, "owner_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 v9, -0x1

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, v2

    invoke-virtual/range {v5 .. v13}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_71d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_734

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/w;

    iget-object v6, v5, Lcom/twitter/android/api/w;->i:Ljava/util/ArrayList;

    const/4 v9, 0x6

    iget-wide v10, v5, Lcom/twitter/android/api/w;->g:J

    const/4 v12, 0x0

    move-object v5, v2

    invoke-virtual/range {v5 .. v12}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;)V

    goto :goto_71d

    :cond_734
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/service/TwitterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Lcom/twitter/android/provider/x;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_73e
    .catch Ljava/io/IOException; {:try_start_706 .. :try_end_73e} :catch_6f7

    move-object v7, v14

    goto/16 :goto_61

    :sswitch_741
    const-string v5, "q"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "users"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "suggestions"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v5, v8, v9

    invoke-virtual {v6, v8}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v12, 0x0

    move-object v11, v7

    invoke-static/range {v8 .. v13}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v14

    invoke-virtual {v14}, Lcom/twitter/android/network/c;->b()Z

    move-result v5

    if-eqz v5, :cond_12da

    :try_start_784
    invoke-static {v13}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v5

    invoke-static {v5}, Lcom/twitter/android/api/r;->o(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_794

    const/4 v2, 0x0

    iput v2, v14, Lcom/twitter/android/network/c;->b:I

    move-object v7, v14

    goto/16 :goto_61

    :cond_794
    const-string v5, "owner_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 v9, 0x6

    const-string v5, "list_id"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v12, "-1"

    const-string v13, "0"

    move-object v5, v2

    invoke-virtual/range {v5 .. v13}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v5, "count"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_7b9
    .catch Ljava/io/IOException; {:try_start_784 .. :try_end_7b9} :catch_7bc

    move-object v7, v14

    goto/16 :goto_61

    :catch_7bc
    move-exception v2

    sget-boolean v5, Lcom/twitter/android/service/TwitterService;->b:Z

    if-eqz v5, :cond_7c8

    const-string v5, "TwitterService"

    const-string v6, "Parse slug users"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7c8
    move-object v7, v14

    goto/16 :goto_61

    :sswitch_7cb
    const-string v5, "page"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v6, "limit"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v8, "user_type"

    const/16 v9, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "users"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "recommendations"

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".json"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v8, "connections"

    const-string v9, "connections"

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v10, v8, v9}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-wide/16 v8, 0x0

    cmp-long v8, v14, v8

    if-lez v8, :cond_825

    const-string v8, "user_id"

    invoke-static {v10, v8, v14, v15}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_825
    if-lez v6, :cond_82c

    const-string v8, "limit"

    invoke-static {v10, v8, v6}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_82c
    const-string v6, "pc"

    const/4 v8, 0x1

    invoke-static {v10, v6, v8}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v12, 0x0

    move-object v11, v7

    invoke-static/range {v8 .. v13}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v12

    invoke-virtual {v12}, Lcom/twitter/android/network/c;->b()Z

    move-result v6

    if-eqz v6, :cond_12d7

    :try_start_84f
    invoke-static {v13}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v6

    invoke-static {v6}, Lcom/twitter/android/api/r;->v(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v6

    const-wide/16 v7, 0x0

    cmp-long v7, v14, v7

    if-lez v7, :cond_874

    move-wide v7, v14

    :goto_85e
    if-nez v5, :cond_876

    const-string v10, "-1"

    :goto_862
    const/4 v11, 0x0

    move-object v5, v2

    move/from16 v9, v16

    invoke-virtual/range {v5 .. v11}, Lcom/twitter/android/provider/ae;->a(Ljava/util/ArrayList;JILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v5, "count"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_871
    .catch Ljava/io/IOException; {:try_start_84f .. :try_end_871} :catch_878

    move-object v7, v12

    goto/16 :goto_61

    :cond_874
    move-wide v7, v3

    goto :goto_85e

    :cond_876
    const/4 v10, 0x0

    goto :goto_862

    :catch_878
    move-exception v2

    const/4 v2, 0x0

    iput v2, v12, Lcom/twitter/android/network/c;->b:I

    move-object v7, v12

    goto/16 :goto_61

    :sswitch_87f
    const-string v2, "screen_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "q"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "lists"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "show"

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "slug"

    invoke-static {v6, v7, v5}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "owner_screen_name"

    invoke-static {v6, v5, v2}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v8, 0x0

    invoke-static {v2, v7, v6, v8, v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->b()Z

    move-result v6

    if-eqz v6, :cond_12c4

    :try_start_8d0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/twitter/android/api/r;->b(Lorg/codehaus/jackson/JsonParser;I)Lcom/twitter/android/api/q;

    move-result-object v5

    const-string v6, "list_id"

    invoke-virtual {v5}, Lcom/twitter/android/api/q;->a()J

    move-result-wide v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "owner_id"

    invoke-virtual {v5}, Lcom/twitter/android/api/q;->h()Lcom/twitter/android/api/ac;

    move-result-object v5

    iget-wide v7, v5, Lcom/twitter/android/api/ac;->a:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_8f1
    .catch Ljava/io/IOException; {:try_start_8d0 .. :try_end_8f1} :catch_8f4

    move-object v7, v2

    goto/16 :goto_61

    :catch_8f4
    move-exception v5

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_8f8
    const-string v5, "owner_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v25

    const-string v5, "email"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    const-string v5, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const-string v5, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v29

    const-string v5, "i_type"

    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    const-string v5, "list_id"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v31

    if-eqz v27, :cond_9ec

    move-object/from16 v0, v27

    array-length v9, v0

    :goto_932
    if-eqz v28, :cond_9ef

    move-object/from16 v0, v28

    array-length v8, v0

    :goto_937
    if-eqz v29, :cond_9f2

    move-object/from16 v0, v29

    array-length v5, v0

    :goto_93c
    add-int v6, v9, v8

    add-int/2addr v6, v5

    const/16 v10, 0x64

    invoke-static {v6, v10}, Lcom/twitter/android/network/o;->a(II)I

    move-result v33

    const/4 v10, 0x0

    const/4 v6, 0x0

    move/from16 v18, v6

    move v6, v10

    move/from16 v35, v8

    move v8, v5

    move/from16 v5, v35

    :goto_94f
    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_a02

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "users"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "lookup"

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".json"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x64

    if-lez v8, :cond_12ce

    const-string v11, "user_id"

    move-object/from16 v0, v29

    array-length v12, v0

    sub-int/2addr v12, v8

    const/16 v13, 0x64

    move-object/from16 v0, v29

    invoke-static {v10, v11, v0, v12, v13}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[JII)I

    move-result v11

    sub-int v19, v8, v11

    rsub-int/lit8 v8, v11, 0x64

    :goto_986
    if-lez v8, :cond_12d3

    if-lez v9, :cond_12d3

    const-string v11, "email"

    move-object/from16 v0, v27

    array-length v12, v0

    sub-int/2addr v12, v9

    move-object/from16 v0, v27

    invoke-static {v10, v11, v0, v12, v8}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    sub-int/2addr v9, v11

    sub-int/2addr v8, v11

    move/from16 v20, v9

    :goto_99a
    if-lez v8, :cond_9ab

    if-lez v5, :cond_9ab

    const-string v9, "phone"

    move-object/from16 v0, v28

    array-length v11, v0

    sub-int/2addr v11, v5

    move-object/from16 v0, v28

    invoke-static {v10, v9, v0, v11, v8}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v8

    sub-int/2addr v5, v8

    :cond_9ab
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v12, 0x0

    move-object v11, v7

    invoke-static/range {v8 .. v13}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/twitter/android/network/c;->b()Z

    move-result v8

    if-eqz v8, :cond_9e2

    :try_start_9c8
    invoke-static {v13}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v8

    invoke-static {v8}, Lcom/twitter/android/api/r;->b(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v9

    if-nez v18, :cond_9f5

    const-string v15, "-1"

    :goto_9d4
    const/16 v16, 0x0

    move-object v8, v2

    move-wide/from16 v10, v25

    move/from16 v12, v30

    move-wide/from16 v13, v31

    invoke-virtual/range {v8 .. v16}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I
    :try_end_9e0
    .catch Ljava/io/IOException; {:try_start_9c8 .. :try_end_9e0} :catch_9f7

    move-result v8

    add-int/2addr v6, v8

    :cond_9e2
    :goto_9e2
    add-int/lit8 v8, v18, 0x1

    move/from16 v18, v8

    move/from16 v9, v20

    move/from16 v8, v19

    goto/16 :goto_94f

    :cond_9ec
    const/4 v9, 0x0

    goto/16 :goto_932

    :cond_9ef
    const/4 v8, 0x0

    goto/16 :goto_937

    :cond_9f2
    const/4 v5, 0x0

    goto/16 :goto_93c

    :cond_9f5
    const/4 v15, 0x0

    goto :goto_9d4

    :catch_9f7
    move-exception v8

    const/4 v9, 0x0

    move-object/from16 v0, v34

    iput v9, v0, Lcom/twitter/android/network/c;->b:I

    move-object/from16 v0, v34

    iput-object v8, v0, Lcom/twitter/android/network/c;->d:Ljava/lang/Exception;

    goto :goto_9e2

    :cond_a02
    const-string v2, "count"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v7, v17

    goto/16 :goto_61

    :sswitch_a0d
    const-string v2, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "screen_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "email"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "pass"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "q_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "q"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "lang"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v7, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v7, "email"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v7, "screen_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v7, "pass"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v7, "q_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v7, "q"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v7, "lang"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    iget-object v7, v7, Lcom/twitter/android/network/o;->c:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "signup"

    aput-object v14, v9, v13

    invoke-static {v7, v9}, Lcom/twitter/android/network/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_a99

    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "fullname"

    invoke-direct {v13, v14, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a99
    if-eqz v5, :cond_aa5

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "screen_name"

    invoke-direct {v2, v13, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_aa5
    if-eqz v6, :cond_ab1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "email"

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ab1
    if-eqz v8, :cond_abd

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "password"

    invoke-direct {v2, v5, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_abd
    if-eqz v12, :cond_ac9

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "lang"

    invoke-direct {v2, v5, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ac9
    if-eqz v10, :cond_ae1

    if-eqz v11, :cond_ae1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "captcha_token"

    invoke-direct {v2, v5, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "captcha_solution"

    invoke-direct {v2, v5, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ae1
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    new-instance v8, Lcom/twitter/android/network/a;

    const/4 v2, 0x0

    sget-object v11, Lcom/twitter/android/network/a;->g:Ljava/lang/String;

    sget-object v12, Lcom/twitter/android/network/a;->h:Ljava/lang/String;

    invoke-direct {v8, v2, v11, v12}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/j;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v5 .. v10}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    invoke-virtual {v5}, Lcom/twitter/android/network/c;->b()Z

    move-result v2

    if-eqz v2, :cond_b2a

    invoke-static {v10}, Lcom/twitter/android/service/TwitterService;->a(Ljava/io/ByteArrayOutputStream;)Lcom/twitter/android/network/j;

    move-result-object v2

    const-string v6, "auth"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v6, Lcom/twitter/android/network/a;

    invoke-direct {v6, v2}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/j;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/twitter/android/service/TwitterService;->e(Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->b()Z

    move-result v2

    if-nez v2, :cond_b27

    const/16 v2, 0x190

    iput v2, v5, Lcom/twitter/android/network/c;->b:I

    :cond_b27
    move-object v7, v5

    goto/16 :goto_61

    :cond_b2a
    iget v2, v5, Lcom/twitter/android/network/c;->b:I

    const/16 v6, 0x193

    if-ne v2, v6, :cond_bea

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    :try_start_b39
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "fullname"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b66

    const-string v2, "fullname"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_b66

    const-string v7, "name"

    sget-object v8, Lcom/twitter/android/util/a;->c:Lcom/twitter/android/util/a;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/twitter/android/util/a;->a(Ljava/lang/String;)Lcom/twitter/android/util/e;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/android/util/e;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_b66
    const-string v2, "email"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b8e

    const-string v2, "email"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_b8e

    const-string v7, "email"

    sget-object v8, Lcom/twitter/android/util/a;->c:Lcom/twitter/android/util/a;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/twitter/android/util/a;->a(Ljava/lang/String;)Lcom/twitter/android/util/e;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/android/util/e;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_b8e
    const-string v2, "screen_name"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb6

    const-string v2, "screen_name"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_bb6

    const-string v7, "screen_name"

    sget-object v8, Lcom/twitter/android/util/a;->c:Lcom/twitter/android/util/a;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/twitter/android/util/a;->a(Ljava/lang/String;)Lcom/twitter/android/util/e;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/android/util/e;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_bb6
    const-string v2, "password"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bde

    const-string v2, "password"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_bde

    const-string v6, "pass"

    sget-object v7, Lcom/twitter/android/util/a;->c:Lcom/twitter/android/util/a;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/twitter/android/util/a;->a(Ljava/lang/String;)Lcom/twitter/android/util/e;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/android/util/e;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_bde
    .catch Lorg/json/JSONException; {:try_start_b39 .. :try_end_bde} :catch_be1

    :cond_bde
    move-object v7, v5

    goto/16 :goto_61

    :catch_be1
    move-exception v2

    const/4 v6, 0x0

    iput v6, v5, Lcom/twitter/android/network/c;->b:I

    iput-object v2, v5, Lcom/twitter/android/network/c;->d:Ljava/lang/Exception;

    move-object v7, v5

    goto/16 :goto_61

    :cond_bea
    iget v2, v5, Lcom/twitter/android/network/c;->b:I

    const/16 v6, 0x19c

    if-ne v2, v6, :cond_12c1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    :try_start_bf9
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "captcha_token"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c2b

    const-string v2, "captcha_image_url"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c2b

    const-string v2, "q_name"

    const-string v7, "captcha_token"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "q"

    const-string v7, "captcha_image_url"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v7, v5

    goto/16 :goto_61

    :cond_c2b
    const/4 v2, 0x0

    iput v2, v5, Lcom/twitter/android/network/c;->b:I
    :try_end_c2e
    .catch Lorg/json/JSONException; {:try_start_bf9 .. :try_end_c2e} :catch_c31

    move-object v7, v5

    goto/16 :goto_61

    :catch_c31
    move-exception v2

    const/4 v6, 0x0

    iput v6, v5, Lcom/twitter/android/network/c;->b:I

    iput-object v2, v5, Lcom/twitter/android/network/c;->d:Ljava/lang/Exception;

    move-object v7, v5

    goto/16 :goto_61

    :sswitch_c3a
    const-string v5, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v10

    array-length v5, v10

    const/16 v6, 0x64

    invoke-static {v5, v6}, Lcom/twitter/android/network/o;->a(II)I

    move-result v11

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    move v9, v5

    move v5, v6

    move v6, v8

    move-object/from16 v8, v17

    :goto_c51
    if-ge v9, v11, :cond_cc7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "friendships"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "create_all"

    aput-object v14, v12, v13

    invoke-virtual {v8, v12}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ".json"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "user_id"

    mul-int/lit8 v13, v9, 0x64

    const/16 v14, 0x64

    invoke-static {v8, v12, v10, v13, v14}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[JII)I

    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    invoke-static {v13, v14, v8, v7, v12}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/twitter/android/network/c;->b()Z

    move-result v8

    if-eqz v8, :cond_cc5

    :try_start_c92
    invoke-static {v12}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v8

    invoke-static {v8}, Lcom/twitter/android/api/r;->p(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v12, 0x1

    invoke-virtual {v2, v8, v12}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;I)V

    const/4 v5, 0x1

    new-instance v8, Landroid/content/Intent;

    const-class v12, Lcom/twitter/android/service/TwitterService;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v12, "ADD_USER_SUGGESTION"

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v12, "soid"

    invoke-virtual {v8, v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v8

    const-string v12, "user_id"

    invoke-virtual {v8, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/twitter/android/service/TwitterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_cbf
    .catch Ljava/io/IOException; {:try_start_c92 .. :try_end_cbf} :catch_12b6

    :goto_cbf
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move-object/from16 v8, v17

    goto :goto_c51

    :cond_cc5
    const/4 v6, 0x1

    goto :goto_cbf

    :cond_cc7
    if-eqz v6, :cond_12cb

    if-eqz v5, :cond_12cb

    const/16 v2, 0x1a2

    iput v2, v8, Lcom/twitter/android/network/c;->b:I

    move-object v7, v8

    goto/16 :goto_61

    :sswitch_cd2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1}, Lcom/twitter/android/service/TwitterService;->b(Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_cdd
    const/16 v2, 0x3a

    move/from16 v0, v24

    if-ne v0, v2, :cond_d92

    const/4 v2, 0x1

    :goto_ce4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "account"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string v9, "settings"

    aput-object v9, v6, v8

    invoke-virtual {v5, v6}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v13, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x200

    invoke-direct {v13, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    if-eqz v2, :cond_d95

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "settings"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/af;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geo_enabled"

    iget-boolean v8, v2, Lcom/twitter/android/api/af;->b:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "sleep_time_enabled"

    iget-boolean v8, v2, Lcom/twitter/android/api/af;->c:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v5, v2, Lcom/twitter/android/api/af;->c:Z

    if-eqz v5, :cond_d69

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "start_sleep_time"

    invoke-virtual {v2}, Lcom/twitter/android/api/af;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "end_sleep_time"

    invoke-virtual {v2}, Lcom/twitter/android/api/af;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "time_zone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d69
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    move-object v11, v7

    invoke-static/range {v8 .. v13}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v2

    :goto_d7a
    invoke-virtual {v2}, Lcom/twitter/android/network/c;->b()Z

    move-result v5

    if-eqz v5, :cond_12c4

    :try_start_d80
    invoke-static {v13}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v5

    const-string v6, "settings"

    invoke-static {v5}, Lcom/twitter/android/api/af;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/af;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_d8f
    .catch Ljava/io/IOException; {:try_start_d80 .. :try_end_d8f} :catch_da8

    move-object v7, v2

    goto/16 :goto_61

    :cond_d92
    const/4 v2, 0x0

    goto/16 :goto_ce4

    :cond_d95
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v12, 0x1

    move-object v11, v7

    invoke-static/range {v8 .. v13}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v2

    goto :goto_d7a

    :catch_da8
    move-exception v5

    const/4 v6, 0x0

    iput v6, v2, Lcom/twitter/android/network/c;->b:I

    iput-object v5, v2, Lcom/twitter/android/network/c;->d:Ljava/lang/Exception;

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_db1
    const-string v5, "message_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v12

    if-eqz v12, :cond_5f

    array-length v13, v12

    const/4 v5, 0x0

    move v11, v5

    :goto_dbe
    if-ge v11, v13, :cond_dd3

    aget-wide v8, v12, v11

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object v6, v2

    invoke-direct/range {v5 .. v10}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;JZ)Lcom/twitter/android/network/c;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;JLcom/twitter/android/network/c;)V

    add-int/lit8 v5, v11, 0x1

    move v11, v5

    goto :goto_dbe

    :cond_dd3
    invoke-virtual {v2, v12}, Lcom/twitter/android/provider/ae;->c([J)I

    move-object/from16 v7, v17

    goto/16 :goto_61

    :sswitch_dda
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    iget-object v2, v2, Lcom/twitter/android/network/o;->c:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "decider"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "android"

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/twitter/android/network/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".json"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v8, 0x1

    invoke-static {v5, v7, v2, v8, v6}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/c;->b()Z

    move-result v2

    if-eqz v2, :cond_12c1

    :try_start_e13
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    const-string v6, "settings"

    invoke-static {v2}, Lcom/twitter/android/api/r;->q(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/e;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_e22
    .catch Ljava/io/IOException; {:try_start_e13 .. :try_end_e22} :catch_e25

    move-object v7, v5

    goto/16 :goto_61

    :catch_e25
    move-exception v2

    const/4 v6, 0x0

    iput v6, v5, Lcom/twitter/android/network/c;->b:I

    iput-object v2, v5, Lcom/twitter/android/network/c;->d:Ljava/lang/Exception;

    move-object v7, v5

    goto/16 :goto_61

    :sswitch_e2e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "saved_searches"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string v9, "create"

    aput-object v9, v6, v8

    invoke-virtual {v5, v6}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "q"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v12, v8}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "query"

    invoke-direct {v8, v9, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v7

    invoke-static/range {v8 .. v13}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/c;->b()Z

    move-result v6

    if-eqz v6, :cond_12c1

    :try_start_e81
    invoke-static {v13}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v6

    invoke-static {v6}, Lcom/twitter/android/api/r;->m(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/w;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v2, v6, v7}, Lcom/twitter/android/provider/ae;->a(Lcom/twitter/android/api/w;I)J
    :try_end_e8d
    .catch Ljava/io/IOException; {:try_start_e81 .. :try_end_e8d} :catch_e90

    move-object v7, v5

    goto/16 :goto_61

    :catch_e90
    move-exception v2

    const/4 v6, 0x0

    iput v6, v5, Lcom/twitter/android/network/c;->b:I

    iput-object v2, v5, Lcom/twitter/android/network/c;->d:Ljava/lang/Exception;

    move-object v7, v5

    goto/16 :goto_61

    :sswitch_e99
    const-string v5, "q"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v2, v5, v6}, Lcom/twitter/android/provider/ae;->a(Ljava/lang/String;I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "saved_searches"

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const-string v11, "destroy"

    aput-object v11, v6, v10

    const/4 v10, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v6, v10

    invoke-virtual {v5, v6}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v11, 0x0

    invoke-static {v6, v10, v5, v7, v11}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v5

    iget v6, v5, Lcom/twitter/android/network/c;->b:I

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_ee5

    iget v6, v5, Lcom/twitter/android/network/c;->b:I

    const/16 v7, 0x194

    if-ne v6, v7, :cond_12c1

    :cond_ee5
    invoke-virtual {v2, v8, v9}, Lcom/twitter/android/provider/ae;->b(J)I

    move-object v7, v5

    goto/16 :goto_61

    :sswitch_eeb
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->t(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_ef6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->u(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;Landroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_f01
    const-string v5, "status_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v25

    const-string v5, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v5, "q"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    const/16 v20, 0x0

    const-wide/16 v5, 0x0

    cmp-long v5, v13, v5

    if-lez v5, :cond_12c7

    const/16 v10, 0xa

    const-wide/16 v11, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    move-object/from16 v5, p0

    move-object v6, v2

    invoke-direct/range {v5 .. v19}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/ae;Lcom/twitter/android/network/a;JIJJJIZLandroid/content/Intent;)Lcom/twitter/android/network/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/c;->b()Z

    move-result v5

    if-eqz v5, :cond_12c7

    const/4 v5, 0x1

    :goto_f44
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    iget-object v6, v6, Lcom/twitter/android/network/o;->b:Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "related_results"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string v11, "show"

    aput-object v11, v7, v10

    const/4 v10, 0x2

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-static {v6, v7}, Lcom/twitter/android/network/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "include_entities"

    const/4 v10, 0x1

    invoke-static {v6, v7, v10}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v7, "include_cards"

    const/4 v10, 0x1

    invoke-static {v6, v7, v10}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x400

    invoke-direct {v7, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v12, 0x0

    invoke-static {v10, v11, v6, v12, v7}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/twitter/android/network/c;->b()Z

    move-result v6

    if-eqz v6, :cond_fa9

    :try_start_f92
    invoke-static {v7}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v6

    invoke-static {v6}, Lcom/twitter/android/api/r;->u(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v7

    const/16 v10, 0xa

    const-wide/16 v11, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v6, v2

    invoke-virtual/range {v6 .. v16}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I
    :try_end_fa7
    .catch Ljava/io/IOException; {:try_start_f92 .. :try_end_fa7} :catch_fb4

    move-result v2

    add-int/2addr v5, v2

    :cond_fa9
    :goto_fa9
    const-string v2, "new_tweet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v7, v17

    goto/16 :goto_61

    :catch_fb4
    move-exception v2

    const/4 v6, 0x0

    move-object/from16 v0, v17

    iput v6, v0, Lcom/twitter/android/network/c;->b:I

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/twitter/android/network/c;->d:Ljava/lang/Exception;

    goto :goto_fa9

    :sswitch_fbf
    const-string v2, "email"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "lang"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    iget-object v6, v6, Lcom/twitter/android/network/o;->a:Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "i"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "users"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "email_available"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/twitter/android/network/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "email"

    invoke-static {v6, v7, v2}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1001

    const-string v2, "lang"

    invoke-static {v6, v2, v5}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1001
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {v5, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v8, 0x0

    invoke-static {v2, v7, v6, v8, v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->b()Z

    move-result v6

    if-eqz v6, :cond_12c4

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    :try_start_1028
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "valid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_103d

    const-string v6, "valid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1050

    :cond_103d
    const/4 v6, 0x0

    iput v6, v2, Lcom/twitter/android/network/c;->b:I

    const-string v6, "msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1050

    const-string v6, "msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/twitter/android/network/c;->c:Ljava/lang/String;
    :try_end_1050
    .catch Lorg/json/JSONException; {:try_start_1028 .. :try_end_1050} :catch_1053

    :cond_1050
    move-object v7, v2

    goto/16 :goto_61

    :catch_1053
    move-exception v5

    const/4 v5, 0x0

    iput v5, v2, Lcom/twitter/android/network/c;->b:I

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_105a
    const-string v2, "email"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "screen_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "lang"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    iget-object v8, v8, Lcom/twitter/android/network/o;->a:Ljava/lang/String;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "i"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "users"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "username_available"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/twitter/android/network/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".json"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, "custom"

    const/4 v11, 0x1

    invoke-static {v8, v10, v11}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v10, "context"

    const-string v11, "signup"

    invoke-static {v8, v10, v11}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_10b8

    const-string v10, "email"

    invoke-static {v8, v10, v2}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10b8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10c3

    const-string v2, "full_name"

    invoke-static {v8, v2, v6}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10c3
    if-eqz v9, :cond_110d

    const-string v2, "suggest"

    const/4 v5, 0x1

    invoke-static {v8, v2, v5}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :goto_10cb
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10d6

    const-string v2, "lang"

    invoke-static {v8, v2, v7}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10d6
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {v5, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v7, 0x0

    invoke-static {v2, v6, v8, v7, v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->b()Z

    move-result v6

    if-eqz v6, :cond_12c4

    :try_start_10f4
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v5

    invoke-static {v5}, Lcom/twitter/android/api/r;->w(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/ai;

    move-result-object v5

    if-eqz v9, :cond_1113

    const/4 v6, 0x0

    iput v6, v2, Lcom/twitter/android/network/c;->b:I

    const-string v6, "stories"

    iget-object v5, v5, Lcom/twitter/android/api/ai;->c:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    :try_end_110a
    .catch Ljava/io/IOException; {:try_start_10f4 .. :try_end_110a} :catch_1122

    move-object v7, v2

    goto/16 :goto_61

    :cond_110d
    const-string v2, "username"

    invoke-static {v8, v2, v5}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10cb

    :cond_1113
    :try_start_1113
    iget-boolean v6, v5, Lcom/twitter/android/api/ai;->a:Z

    if-nez v6, :cond_111f

    const/16 v6, 0x190

    iput v6, v2, Lcom/twitter/android/network/c;->b:I

    iget-object v5, v5, Lcom/twitter/android/api/ai;->b:Ljava/lang/String;

    iput-object v5, v2, Lcom/twitter/android/network/c;->c:Ljava/lang/String;
    :try_end_111f
    .catch Ljava/io/IOException; {:try_start_1113 .. :try_end_111f} :catch_1122

    :cond_111f
    move-object v7, v2

    goto/16 :goto_61

    :catch_1122
    move-exception v5

    const/4 v5, 0x0

    iput v5, v2, Lcom/twitter/android/network/c;->b:I

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_1129
    const-string v2, "status_id"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    iget-object v2, v2, Lcom/twitter/android/network/o;->a:Ljava/lang/String;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "i"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "statuses"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v8, v9

    const/4 v5, 0x3

    const-string v6, "activity"

    aput-object v6, v8, v5

    const/4 v5, 0x4

    const-string v6, "summary"

    aput-object v6, v8, v5

    invoke-static {v2, v8}, Lcom/twitter/android/network/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".json"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v13, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {v13, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v12, 0x0

    move-object v11, v7

    invoke-static/range {v8 .. v13}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->b()Z

    move-result v5

    if-eqz v5, :cond_12c4

    :try_start_1180
    invoke-static {v13}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v5

    const-string v6, "q"

    invoke-static {v5}, Lcom/twitter/android/api/r;->x(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/a;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_118f
    .catch Ljava/io/IOException; {:try_start_1180 .. :try_end_118f} :catch_1192

    move-object v7, v2

    goto/16 :goto_61

    :catch_1192
    move-exception v5

    const/4 v5, 0x0

    iput v5, v2, Lcom/twitter/android/network/c;->b:I

    move-object v7, v2

    goto/16 :goto_61

    :sswitch_1199
    invoke-virtual {v2}, Lcom/twitter/android/provider/ae;->b()I

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v2

    const-string v5, "discover"

    const/4 v6, 0x0

    invoke-virtual {v2, v9, v5, v6}, Lcom/twitter/android/provider/a;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-object/from16 v7, v17

    goto/16 :goto_61

    :sswitch_11aa
    const-string v5, "status_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v8, "impression_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x1

    new-array v8, v8, [J

    const/4 v10, 0x0

    aput-wide v5, v8, v10

    invoke-virtual {v2, v8}, Lcom/twitter/android/provider/ae;->d([J)I

    move-result v2

    if-lez v2, :cond_11d2

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/service/TwitterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Lcom/twitter/android/provider/z;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_11d2
    if-eqz v9, :cond_5f

    const/16 v8, 0x9

    const-wide/16 v10, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/network/a;ILjava/lang/String;J)V

    move-object/from16 v7, v17

    goto/16 :goto_61

    :sswitch_11e1
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/n;->b()V

    move-object/from16 v7, v17

    goto/16 :goto_61

    :sswitch_11ec
    const-string v5, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/ac;

    if-eqz v5, :cond_11ff

    invoke-virtual {v2, v3, v4, v5}, Lcom/twitter/android/provider/ae;->a(JLcom/twitter/android/api/ac;)V

    move-object/from16 v7, v17

    goto/16 :goto_61

    :cond_11ff
    const-string v5, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v5

    if-eqz v5, :cond_120c

    invoke-virtual {v2, v3, v4, v5}, Lcom/twitter/android/provider/ae;->a(J[J)V

    :cond_120c
    move-object/from16 v7, v17

    goto/16 :goto_61

    :sswitch_1210
    const-string v5, "i_type"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "count"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    iget-object v6, v6, Lcom/twitter/android/network/o;->a:Ljava/lang/String;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "i"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "search"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "typeahead"

    aput-object v11, v9, v10

    invoke-static {v6, v9}, Lcom/twitter/android/network/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ".json"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v6, "prefetch"

    const/4 v9, 0x1

    invoke-static {v10, v6, v9}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    packed-switch v5, :pswitch_data_1422

    :pswitch_124d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1262
    const-string v5, "result_type"

    const-string v6, "users"

    invoke-static {v10, v5, v6}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    move v6, v5

    :goto_126b
    if-lez v8, :cond_1272

    const-string v5, "count"

    invoke-static {v10, v5, v8}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_1272
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x400

    invoke-direct {v13, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    const/4 v12, 0x0

    move-object v11, v7

    invoke-static/range {v8 .. v13}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/c;->b()Z

    move-result v7

    if-eqz v7, :cond_12c1

    :try_start_1291
    invoke-static {v13}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v7

    invoke-static {v7}, Lcom/twitter/android/api/r;->z(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v2, v7, v3, v4, v6}, Lcom/twitter/android/provider/ae;->a(Ljava/util/ArrayList;JI)I
    :try_end_129c
    .catch Ljava/io/IOException; {:try_start_1291 .. :try_end_129c} :catch_12a9

    move-object v7, v5

    goto/16 :goto_61

    :pswitch_129f
    const-string v5, "result_type"

    const-string v6, "topics"

    invoke-static {v10, v5, v6}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    move v6, v5

    goto :goto_126b

    :catch_12a9
    move-exception v2

    const/4 v6, 0x0

    iput v6, v5, Lcom/twitter/android/network/c;->b:I

    iput-object v2, v5, Lcom/twitter/android/network/c;->d:Ljava/lang/Exception;

    move-object v7, v5

    goto/16 :goto_61

    :sswitch_12b2
    move-object/from16 v7, v17

    goto/16 :goto_61

    :catch_12b6
    move-exception v8

    goto/16 :goto_cbf

    :cond_12b9
    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    goto/16 :goto_70

    :cond_12c1
    move-object v7, v5

    goto/16 :goto_61

    :cond_12c4
    move-object v7, v2

    goto/16 :goto_61

    :cond_12c7
    move/from16 v5, v20

    goto/16 :goto_f44

    :cond_12cb
    move-object v7, v8

    goto/16 :goto_61

    :cond_12ce
    move/from16 v19, v8

    move v8, v11

    goto/16 :goto_986

    :cond_12d3
    move/from16 v20, v9

    goto/16 :goto_99a

    :cond_12d7
    move-object v7, v12

    goto/16 :goto_61

    :cond_12da
    move-object v7, v14

    goto/16 :goto_61

    nop

    :sswitch_data_12de
    .sparse-switch
        0x1 -> :sswitch_d7
        0x2 -> :sswitch_100
        0x3 -> :sswitch_13c
        0x4 -> :sswitch_14d
        0x5 -> :sswitch_15e
        0x6 -> :sswitch_178
        0x7 -> :sswitch_1c0
        0x8 -> :sswitch_1ce
        0x9 -> :sswitch_23c
        0xa -> :sswitch_247
        0xb -> :sswitch_252
        0xc -> :sswitch_25d
        0xd -> :sswitch_26b
        0xe -> :sswitch_276
        0xf -> :sswitch_281
        0x10 -> :sswitch_297
        0x11 -> :sswitch_297
        0x12 -> :sswitch_2e0
        0x13 -> :sswitch_311
        0x14 -> :sswitch_31c
        0x15 -> :sswitch_331
        0x16 -> :sswitch_33c
        0x17 -> :sswitch_35a
        0x18 -> :sswitch_365
        0x19 -> :sswitch_397
        0x1a -> :sswitch_3a5
        0x1b -> :sswitch_3b3
        0x1c -> :sswitch_3b3
        0x1d -> :sswitch_3c7
        0x1e -> :sswitch_3d2
        0x1f -> :sswitch_3d2
        0x20 -> :sswitch_3dd
        0x21 -> :sswitch_3e8
        0x22 -> :sswitch_3f3
        0x23 -> :sswitch_3fe
        0x24 -> :sswitch_409
        0x25 -> :sswitch_414
        0x26 -> :sswitch_41f
        0x27 -> :sswitch_432
        0x28 -> :sswitch_43d
        0x29 -> :sswitch_448
        0x2a -> :sswitch_453
        0x2b -> :sswitch_45e
        0x2c -> :sswitch_469
        0x2d -> :sswitch_4d7
        0x2e -> :sswitch_4fe
        0x2f -> :sswitch_533
        0x30 -> :sswitch_562
        0x31 -> :sswitch_579
        0x32 -> :sswitch_60b
        0x33 -> :sswitch_65c
        0x34 -> :sswitch_741
        0x35 -> :sswitch_87f
        0x36 -> :sswitch_8f8
        0x37 -> :sswitch_a0d
        0x38 -> :sswitch_c3a
        0x39 -> :sswitch_cd2
        0x3a -> :sswitch_cdd
        0x3b -> :sswitch_cdd
        0x3c -> :sswitch_db1
        0x3d -> :sswitch_dda
        0x3e -> :sswitch_e2e
        0x3f -> :sswitch_e99
        0x40 -> :sswitch_eeb
        0x41 -> :sswitch_ef6
        0x42 -> :sswitch_f01
        0x43 -> :sswitch_7cb
        0x44 -> :sswitch_fbf
        0x45 -> :sswitch_105a
        0x46 -> :sswitch_1129
        0x47 -> :sswitch_1199
        0x48 -> :sswitch_11aa
        0x49 -> :sswitch_11e1
        0x4a -> :sswitch_11ec
        0x4b -> :sswitch_1210
        0x4c -> :sswitch_28c
        0x4d -> :sswitch_16f
        0x3e7 -> :sswitch_12b2
    .end sparse-switch

    :sswitch_data_1418
    .sparse-switch
        0x0 -> :sswitch_11f
        0x5 -> :sswitch_12d
    .end sparse-switch

    :pswitch_data_1422
    .packed-switch 0x1
        :pswitch_1262
        :pswitch_124d
        :pswitch_129f
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x32

    const/high16 v2, 0x4248

    invoke-direct {v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    iput-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Ljava/util/LinkedHashMap;

    invoke-static {p0}, Lcom/twitter/android/network/o;->a(Landroid/content/Context;)Lcom/twitter/android/network/o;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/o;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/twitter/android/service/j;

    invoke-direct {v1, p0, p1, p3}, Lcom/twitter/android/service/j;-><init>(Lcom/twitter/android/service/TwitterService;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Ljava/util/LinkedHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    return v0
.end method
