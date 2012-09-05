.class public final Lcom/wssnps/mmspdu/myutil/PduCache;
.super Lcom/wssnps/mmspdu/myutil/AbstractCache;
.source "PduCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wssnps/mmspdu/myutil/AbstractCache",
        "<",
        "Landroid/net/Uri;",
        "Lcom/wssnps/mmspdu/myutil/PduCacheEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static sInstance:Lcom/wssnps/mmspdu/myutil/PduCache;


# instance fields
.field private final mMessageBoxes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mThreads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 48
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/wssnps/mmspdu/myutil/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 49
    sget-object v0, Lcom/wssnps/mmspdu/myutil/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    sget-object v0, Lcom/wssnps/mmspdu/myutil/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    sget-object v0, Lcom/wssnps/mmspdu/myutil/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "inbox"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    sget-object v0, Lcom/wssnps/mmspdu/myutil/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "inbox/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    sget-object v0, Lcom/wssnps/mmspdu/myutil/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "sent"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    sget-object v0, Lcom/wssnps/mmspdu/myutil/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "sent/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    sget-object v0, Lcom/wssnps/mmspdu/myutil/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "drafts"

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    sget-object v0, Lcom/wssnps/mmspdu/myutil/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "drafts/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lcom/wssnps/mmspdu/myutil/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "outbox"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lcom/wssnps/mmspdu/myutil/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "outbox/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/wssnps/mmspdu/myutil/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "conversations"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/wssnps/mmspdu/myutil/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "conversations/#"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wssnps/mmspdu/myutil/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    .line 63
    sget-object v0, Lcom/wssnps/mmspdu/myutil/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/wssnps/mmspdu/myutil/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/wssnps/mmspdu/myutil/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/wssnps/mmspdu/myutil/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/wssnps/mmspdu/myutil/AbstractCache;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wssnps/mmspdu/myutil/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wssnps/mmspdu/myutil/PduCache;->mThreads:Ljava/util/HashMap;

    .line 77
    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/wssnps/mmspdu/myutil/PduCache;
    .registers 2

    .prologue
    .line 80
    const-class v1, Lcom/wssnps/mmspdu/myutil/PduCache;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/wssnps/mmspdu/myutil/PduCache;->sInstance:Lcom/wssnps/mmspdu/myutil/PduCache;

    if-nez v0, :cond_e

    .line 82
    new-instance v0, Lcom/wssnps/mmspdu/myutil/PduCache;

    invoke-direct {v0}, Lcom/wssnps/mmspdu/myutil/PduCache;-><init>()V

    sput-object v0, Lcom/wssnps/mmspdu/myutil/PduCache;->sInstance:Lcom/wssnps/mmspdu/myutil/PduCache;

    .line 84
    :cond_e
    sget-object v0, Lcom/wssnps/mmspdu/myutil/PduCache;->sInstance:Lcom/wssnps/mmspdu/myutil/PduCache;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private normalizeKey(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6
    .parameter "uri"

    .prologue
    .line 168
    sget-object v3, Lcom/wssnps/mmspdu/myutil/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 169
    .local v0, match:I
    const/4 v2, 0x0

    .line 171
    .local v2, normalizedKey:Landroid/net/Uri;
    packed-switch v0, :pswitch_data_1a

    .line 183
    :pswitch_a
    const/4 v3, 0x0

    .line 188
    :goto_b
    return-object v3

    .line 173
    :pswitch_c
    move-object v2, p1

    :goto_d
    move-object v3, v2

    .line 188
    goto :goto_b

    .line 179
    :pswitch_f
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, msgId:Ljava/lang/String;
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 181
    goto :goto_d

    .line 171
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_a
        :pswitch_f
        :pswitch_a
        :pswitch_f
        :pswitch_a
        :pswitch_f
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method private purgeByMessageBox(Ljava/lang/Integer;)V
    .registers 7
    .parameter "msgBoxId"

    .prologue
    .line 195
    if-eqz p1, :cond_28

    .line 196
    iget-object v4, p0, Lcom/wssnps/mmspdu/myutil/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 197
    .local v3, msgBox:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v3, :cond_28

    .line 198
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 199
    .local v2, key:Landroid/net/Uri;
    invoke-super {p0, v2}, Lcom/wssnps/mmspdu/myutil/AbstractCache;->purge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/mmspdu/myutil/PduCacheEntry;

    .line 200
    .local v0, entry:Lcom/wssnps/mmspdu/myutil/PduCacheEntry;
    if-eqz v0, :cond_10

    .line 201
    invoke-direct {p0, v2, v0}, Lcom/wssnps/mmspdu/myutil/PduCache;->removeFromThreads(Landroid/net/Uri;Lcom/wssnps/mmspdu/myutil/PduCacheEntry;)V

    goto :goto_10

    .line 206
    .end local v0           #entry:Lcom/wssnps/mmspdu/myutil/PduCacheEntry;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Landroid/net/Uri;
    .end local v3           #msgBox:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    :cond_28
    return-void
.end method

.method private purgeByThreadId(J)V
    .registers 9
    .parameter "threadId"

    .prologue
    .line 219
    iget-object v4, p0, Lcom/wssnps/mmspdu/myutil/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 220
    .local v3, thread:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v3, :cond_2a

    .line 221
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 222
    .local v2, key:Landroid/net/Uri;
    invoke-super {p0, v2}, Lcom/wssnps/mmspdu/myutil/AbstractCache;->purge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/mmspdu/myutil/PduCacheEntry;

    .line 223
    .local v0, entry:Lcom/wssnps/mmspdu/myutil/PduCacheEntry;
    if-eqz v0, :cond_12

    .line 224
    invoke-direct {p0, v2, v0}, Lcom/wssnps/mmspdu/myutil/PduCache;->removeFromMessageBoxes(Landroid/net/Uri;Lcom/wssnps/mmspdu/myutil/PduCacheEntry;)V

    goto :goto_12

    .line 228
    .end local v0           #entry:Lcom/wssnps/mmspdu/myutil/PduCacheEntry;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Landroid/net/Uri;
    :cond_2a
    return-void
.end method

.method private purgeSingleEntry(Landroid/net/Uri;)Lcom/wssnps/mmspdu/myutil/PduCacheEntry;
    .registers 3
    .parameter "key"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/wssnps/mmspdu/myutil/AbstractCache;->purge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/mmspdu/myutil/PduCacheEntry;

    .line 147
    .local v0, entry:Lcom/wssnps/mmspdu/myutil/PduCacheEntry;
    if-eqz v0, :cond_f

    .line 148
    invoke-direct {p0, p1, v0}, Lcom/wssnps/mmspdu/myutil/PduCache;->removeFromThreads(Landroid/net/Uri;Lcom/wssnps/mmspdu/myutil/PduCacheEntry;)V

    .line 149
    invoke-direct {p0, p1, v0}, Lcom/wssnps/mmspdu/myutil/PduCache;->removeFromMessageBoxes(Landroid/net/Uri;Lcom/wssnps/mmspdu/myutil/PduCacheEntry;)V

    .line 152
    .end local v0           #entry:Lcom/wssnps/mmspdu/myutil/PduCacheEntry;
    :goto_e
    return-object v0

    .restart local v0       #entry:Lcom/wssnps/mmspdu/myutil/PduCacheEntry;
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private removeFromMessageBoxes(Landroid/net/Uri;Lcom/wssnps/mmspdu/myutil/PduCacheEntry;)V
    .registers 6
    .parameter "key"
    .parameter "entry"

    .prologue
    .line 231
    iget-object v1, p0, Lcom/wssnps/mmspdu/myutil/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/wssnps/mmspdu/myutil/PduCacheEntry;->getMessageBox()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 232
    .local v0, msgBox:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v0, :cond_15

    .line 233
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 235
    :cond_15
    return-void
.end method

.method private removeFromThreads(Landroid/net/Uri;Lcom/wssnps/mmspdu/myutil/PduCacheEntry;)V
    .registers 7
    .parameter "key"
    .parameter "entry"

    .prologue
    .line 209
    iget-object v1, p0, Lcom/wssnps/mmspdu/myutil/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/wssnps/mmspdu/myutil/PduCacheEntry;->getThreadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 210
    .local v0, thread:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v0, :cond_15

    .line 211
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 213
    :cond_15
    return-void
.end method


# virtual methods
.method public declared-synchronized purge(Landroid/net/Uri;)Lcom/wssnps/mmspdu/myutil/PduCacheEntry;
    .registers 6
    .parameter "uri"

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    sget-object v2, Lcom/wssnps/mmspdu/myutil/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_25

    move-result v0

    .line 115
    .local v0, match:I
    packed-switch v0, :pswitch_data_40

    .line 142
    :goto_a
    const/4 v2, 0x0

    :goto_b
    monitor-exit p0

    return-object v2

    .line 117
    :pswitch_d
    :try_start_d
    invoke-direct {p0, p1}, Lcom/wssnps/mmspdu/myutil/PduCache;->purgeSingleEntry(Landroid/net/Uri;)Lcom/wssnps/mmspdu/myutil/PduCacheEntry;

    move-result-object v2

    goto :goto_b

    .line 122
    :pswitch_12
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, msgId:Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/myutil/PduCache;->purgeSingleEntry(Landroid/net/Uri;)Lcom/wssnps/mmspdu/myutil/PduCacheEntry;

    move-result-object v2

    goto :goto_b

    .line 127
    .end local v1           #msgId:Ljava/lang/String;
    :pswitch_21
    invoke-virtual {p0}, Lcom/wssnps/mmspdu/myutil/PduCache;->purgeAll()V
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_25

    goto :goto_a

    .line 114
    .end local v0           #match:I
    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2

    .line 133
    .restart local v0       #match:I
    :pswitch_28
    :try_start_28
    sget-object v2, Lcom/wssnps/mmspdu/myutil/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/myutil/PduCache;->purgeByMessageBox(Ljava/lang/Integer;)V

    goto :goto_a

    .line 136
    :pswitch_38
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/wssnps/mmspdu/myutil/PduCache;->purgeByThreadId(J)V
    :try_end_3f
    .catchall {:try_start_28 .. :try_end_3f} :catchall_25

    goto :goto_a

    .line 115
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_21
        :pswitch_d
        :pswitch_28
        :pswitch_12
        :pswitch_28
        :pswitch_12
        :pswitch_28
        :pswitch_12
        :pswitch_28
        :pswitch_12
        :pswitch_21
        :pswitch_38
    .end packed-switch
.end method

.method public bridge synthetic purge(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/wssnps/mmspdu/myutil/PduCache;->purge(Landroid/net/Uri;)Lcom/wssnps/mmspdu/myutil/PduCacheEntry;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized purgeAll()V
    .registers 2

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lcom/wssnps/mmspdu/myutil/AbstractCache;->purgeAll()V

    .line 159
    iget-object v0, p0, Lcom/wssnps/mmspdu/myutil/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 160
    iget-object v0, p0, Lcom/wssnps/mmspdu/myutil/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 161
    monitor-exit p0

    return-void

    .line 157
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Landroid/net/Uri;Lcom/wssnps/mmspdu/myutil/PduCacheEntry;)Z
    .registers 12
    .parameter "uri"
    .parameter "entry"

    .prologue
    .line 89
    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Lcom/wssnps/mmspdu/myutil/PduCacheEntry;->getMessageBox()I

    move-result v2

    .line 90
    .local v2, msgBoxId:I
    iget-object v7, p0, Lcom/wssnps/mmspdu/myutil/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 91
    .local v1, msgBox:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-nez v1, :cond_21

    .line 92
    new-instance v1, Ljava/util/HashSet;

    .end local v1           #msgBox:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 93
    .restart local v1       #msgBox:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    iget-object v7, p0, Lcom/wssnps/mmspdu/myutil/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_21
    invoke-virtual {p2}, Lcom/wssnps/mmspdu/myutil/PduCacheEntry;->getThreadId()J

    move-result-wide v5

    .line 97
    .local v5, threadId:J
    iget-object v7, p0, Lcom/wssnps/mmspdu/myutil/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 98
    .local v4, thread:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-nez v4, :cond_41

    .line 99
    new-instance v4, Ljava/util/HashSet;

    .end local v4           #thread:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 100
    .restart local v4       #thread:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    iget-object v7, p0, Lcom/wssnps/mmspdu/myutil/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_41
    invoke-direct {p0, p1}, Lcom/wssnps/mmspdu/myutil/PduCache;->normalizeKey(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 104
    .local v0, finalKey:Landroid/net/Uri;
    invoke-super {p0, v0, p2}, Lcom/wssnps/mmspdu/myutil/AbstractCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 105
    .local v3, result:Z
    if-eqz v3, :cond_51

    .line 106
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_53

    .line 109
    :cond_51
    monitor-exit p0

    return v3

    .line 89
    .end local v0           #finalKey:Landroid/net/Uri;
    .end local v1           #msgBox:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    .end local v2           #msgBoxId:I
    .end local v3           #result:Z
    .end local v4           #thread:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    .end local v5           #threadId:J
    :catchall_53
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    check-cast p1, Landroid/net/Uri;

    .end local p1
    check-cast p2, Lcom/wssnps/mmspdu/myutil/PduCacheEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/wssnps/mmspdu/myutil/PduCache;->put(Landroid/net/Uri;Lcom/wssnps/mmspdu/myutil/PduCacheEntry;)Z

    move-result v0

    return v0
.end method
