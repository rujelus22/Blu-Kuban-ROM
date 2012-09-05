.class public Lcom/samsung/swift/service/content/PlaylistContentObserver;
.super Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;
.source "PlaylistContentObserver.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    const-class v0, Lcom/samsung/swift/service/content/PlaylistContentObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/content/PlaylistContentObserver;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 96
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;-><init>(Landroid/net/Uri;)V

    .line 97
    return-void
.end method


# virtual methods
.method protected onChange()V
    .registers 3

    .prologue
    .line 101
    invoke-static {}, Lcom/samsung/swift/service/content/ContentPlugin;->invalidateCache()V

    .line 102
    sget-object v0, Lcom/samsung/swift/service/content/PlaylistContentObserver;->LOGTAG:Ljava/lang/String;

    const-string v1, "Something changed in the content plugin database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method
