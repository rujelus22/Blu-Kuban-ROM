.class public final Lcom/twitter/android/provider/ab;
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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ab;->a:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/subscribers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ab;->b:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/members"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ab;->c:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ab;->d:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/blocked"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ab;->e:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/following"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ab;->f:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/followers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ab;->g:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/people"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ab;->h:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ab;->i:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/dm_contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ab;->j:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/notifications"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ab;->k:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/slug"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ab;->l:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/activity_sources"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ab;->m:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/activity_targets"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ab;->n:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/favorited"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ab;->o:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/retweeted"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ab;->p:Landroid/net/Uri;

    return-void
.end method
