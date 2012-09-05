.class public abstract Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;
.super Lcom/samsung/swift/contentobserver/SwiftContentObserver;
.source "SwiftCursorContentObserver.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final contentObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    const-class v0, Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/net/Uri;)V
    .registers 8
    .parameter "uri"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/samsung/swift/contentobserver/SwiftContentObserver;-><init>()V

    .line 100
    sget-object v3, Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is being created"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    .line 102
    .local v1, service:Lcom/samsung/swift/service/SwiftService;
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    .local v0, handler:Landroid/os/Handler;
    move-object v2, p0

    .line 104
    .local v2, swiftContentObserver:Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;
    new-instance v3, Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver$1;-><init>(Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;Landroid/os/Handler;Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;)V

    iput-object v3, p0, Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;->contentObserver:Landroid/database/ContentObserver;

    .line 114
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 115
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 122
    sget-object v1, Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is being destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :try_start_20
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_2d} :catch_31

    .line 132
    :goto_2d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 133
    return-void

    .line 127
    :catch_31
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v1, Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception during finalize of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " while calling unregisterContentObserver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d
.end method

.method protected abstract onChange()V
.end method
