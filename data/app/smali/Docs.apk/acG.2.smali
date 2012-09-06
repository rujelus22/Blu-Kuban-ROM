.class public final LacG;
.super Ljava/lang/Object;
.source "SubscribedFeeds.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 123
    const-string v0, "content://subscribedfeeds/feeds"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, LacG;->a:Landroid/net/Uri;

    .line 129
    const-string v0, "content://subscribedfeeds/deleted_feeds"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, LacG;->b:Landroid/net/Uri;

    return-void
.end method
