.class public final Lcom/twitter/android/provider/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_retweets_view"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/y;->a:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_retweets_view/rt_timeline"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/y;->b:Landroid/net/Uri;

    return-void
.end method
