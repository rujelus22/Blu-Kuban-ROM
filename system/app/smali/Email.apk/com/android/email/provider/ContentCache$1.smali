.class Lcom/android/email/provider/ContentCache$1;
.super Landroid/util/LruCache;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/provider/ContentCache;


# direct methods
.method constructor <init>(Lcom/android/email/provider/ContentCache;I)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/email/provider/ContentCache$1;->this$0:Lcom/android/email/provider/ContentCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 412
    check-cast p2, Ljava/lang/String;

    .end local p2
    check-cast p3, Landroid/database/Cursor;

    .end local p3
    check-cast p4, Landroid/database/Cursor;

    .end local p4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/email/provider/ContentCache$1;->entryRemoved(ZLjava/lang/String;Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .registers 6
    .parameter "evicted"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 417
    if-eqz p1, :cond_d

    sget-object v0, Lcom/android/email/provider/ContentCache;->sActiveCursors:Lcom/android/email/provider/ContentCache$CounterMap;

    invoke-virtual {v0, p3}, Lcom/android/email/provider/ContentCache$CounterMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 418
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 420
    :cond_d
    return-void
.end method
