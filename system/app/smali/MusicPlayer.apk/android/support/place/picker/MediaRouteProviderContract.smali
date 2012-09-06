.class public Landroid/support/place/picker/MediaRouteProviderContract;
.super Ljava/lang/Object;
.source "MediaRouteProviderContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/place/picker/MediaRouteProviderContract$LastAtHomeRoute;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-string v0, "content://com.android.athome.mediaroute.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/support/place/picker/MediaRouteProviderContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 8
    invoke-static {p0}, Landroid/support/place/picker/MediaRouteProviderContract;->withAppendedPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final withAppendedPath(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2
    .parameter "path"

    .prologue
    .line 14
    sget-object v0, Landroid/support/place/picker/MediaRouteProviderContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
