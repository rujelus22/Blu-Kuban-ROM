.class Lcom/android/browser/BrowserBookmarksPage$2;
.super Ljava/lang/Object;
.source "BrowserBookmarksPage.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserBookmarksPage;->onPrepareOptionsMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserBookmarksPage;

.field final synthetic val$deleteAllActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserBookmarksPage;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    iput-object p2, p0, Lcom/android/browser/BrowserBookmarksPage$2;->val$deleteAllActivity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage$2;->val$deleteAllActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/browser/BookmarkUtils;->displayRemoveAllBookmarksDialog(Landroid/content/Context;Landroid/os/Message;)V

    .line 398
    const/4 v0, 0x1

    return v0
.end method
