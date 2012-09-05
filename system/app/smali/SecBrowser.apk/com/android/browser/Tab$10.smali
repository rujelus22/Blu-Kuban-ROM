.class Lcom/android/browser/Tab$10;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab;)V
    .registers 2
    .parameter

    .prologue
    .line 2446
    iput-object p1, p0, Lcom/android/browser/Tab$10;->this$0:Lcom/android/browser/Tab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 2450
    iget-object v3, p0, Lcom/android/browser/Tab$10;->this$0:Lcom/android/browser/Tab;

    #calls: Lcom/android/browser/Tab;->getCaptureBlob()[B
    invoke-static {v3}, Lcom/android/browser/Tab;->access$2100(Lcom/android/browser/Tab;)[B

    move-result-object v0

    .line 2451
    .local v0, blob:[B
    if-nez v0, :cond_9

    .line 2459
    :goto_8
    return-void

    .line 2454
    :cond_9
    iget-object v3, p0, Lcom/android/browser/Tab$10;->this$0:Lcom/android/browser/Tab;

    iget-object v3, v3, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2455
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2456
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_id"

    iget-object v4, p0, Lcom/android/browser/Tab$10;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mId:J
    invoke-static {v4}, Lcom/android/browser/Tab;->access$2200(Lcom/android/browser/Tab;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2457
    const-string v3, "thumbnail"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2458
    sget-object v3, Lcom/android/browser/provider/BrowserProvider2$Thumbnails;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_8
.end method
