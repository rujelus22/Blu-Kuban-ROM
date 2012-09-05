.class Lcom/android/browser/BookmarkUtils$3$1;
.super Ljava/lang/Object;
.source "BookmarkUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BookmarkUtils$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BookmarkUtils$3;


# direct methods
.method constructor <init>(Lcom/android/browser/BookmarkUtils$3;)V
    .registers 2
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/browser/BookmarkUtils$3$1;->this$0:Lcom/android/browser/BookmarkUtils$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 353
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    .line 354
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/browser/BookmarkUtils$3$1;->this$0:Lcom/android/browser/BookmarkUtils$3;

    iget-object v1, v1, Lcom/android/browser/BookmarkUtils$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 355
    return-void
.end method
