.class public final Lcom/twitter/android/provider/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;

.field public static final g:Landroid/net/Uri;

.field public static final h:Landroid/net/Uri;

.field public static final i:Landroid/net/Uri;

.field public static final j:Landroid/net/Uri;

.field public static final k:Landroid/net/Uri;

.field public static final l:Landroid/net/Uri;

.field public static final m:Landroid/net/Uri;

.field public static final n:Landroid/net/Uri;

.field public static final o:Landroid/net/Uri;

.field public static final p:Landroid/net/Uri;

.field public static final q:Landroid/net/Uri;

.field public static final r:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/z;->a:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/z;->b:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/z;->c:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/retweetsofme"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/z;->d:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/retweetedtome"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/z;->e:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/retweetedbyme"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/z;->f:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/mentions"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/z;->g:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/replies"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/z;->h:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/home"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/z;->i:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/favorites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/z;->j:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/timeline"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/z;->k:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/drafts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/z;->l:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/mentions_and_rts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/z;->m:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/conversation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/z;->n:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/search_results"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/z;->o:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/discover_social_proof"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/z;->p:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/activity_targets"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/z;->q:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/activity_target_objects"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/z;->r:Landroid/net/Uri;

    return-void
.end method
