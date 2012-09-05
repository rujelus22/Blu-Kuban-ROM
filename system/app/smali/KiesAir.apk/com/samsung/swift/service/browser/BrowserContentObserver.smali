.class public Lcom/samsung/swift/service/browser/BrowserContentObserver;
.super Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;
.source "BrowserContentObserver.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 91
    const-class v0, Lcom/samsung/swift/service/browser/BrowserContentObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/browser/BrowserContentObserver;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 95
    sget-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;-><init>(Landroid/net/Uri;)V

    .line 96
    return-void
.end method


# virtual methods
.method protected onChange()V
    .registers 3

    .prologue
    .line 100
    invoke-static {}, Lcom/samsung/swift/service/browser/BrowserPlugin;->invalidateCache()V

    .line 101
    sget-object v0, Lcom/samsung/swift/service/browser/BrowserContentObserver;->LOGTAG:Ljava/lang/String;

    const-string v1, "Something changed in the browser plugin database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method
