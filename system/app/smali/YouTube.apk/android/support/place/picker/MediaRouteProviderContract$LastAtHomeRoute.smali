.class public Landroid/support/place/picker/MediaRouteProviderContract$LastAtHomeRoute;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final APPLICATION:Ljava/lang/String; = "application"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final ROUTE_ID:Ljava/lang/String; = "route_id"

.field public static final ROUTE_ID_TYPE:Ljava/lang/String; = "route_id_type"

.field public static final TABLE:Ljava/lang/String; = "last_athome_route"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string v0, "last_athome_route"

    #calls: Landroid/support/place/picker/MediaRouteProviderContract;->withAppendedPath(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Landroid/support/place/picker/MediaRouteProviderContract;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/support/place/picker/MediaRouteProviderContract$LastAtHomeRoute;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
