.class Lcom/android/browser/BookmarkMoveToFolder$1;
.super Ljava/lang/Object;
.source "BookmarkMoveToFolder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BookmarkMoveToFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BookmarkMoveToFolder;


# direct methods
.method constructor <init>(Lcom/android/browser/BookmarkMoveToFolder;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/browser/BookmarkMoveToFolder$1;->this$0:Lcom/android/browser/BookmarkMoveToFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 8
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    .line 161
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 162
    .local v0, cbox:Landroid/widget/CheckBox;
    const-string v1, "BookmarkMoveToFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cbox: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-eqz v0, :cond_35

    .line 165
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    .line 167
    if-eqz p2, :cond_36

    .line 168
    const-string v1, "BookmarkMoveToFolder"

    const-string v2, "mSelectAllListener is checked!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/android/browser/BookmarkMoveToFolder$1;->this$0:Lcom/android/browser/BookmarkMoveToFolder;

    #getter for: Lcom/android/browser/BookmarkMoveToFolder;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;
    invoke-static {v1}, Lcom/android/browser/BookmarkMoveToFolder;->access$000(Lcom/android/browser/BookmarkMoveToFolder;)Lcom/android/browser/BrowserBookmarksPage;

    move-result-object v1

    const-string v2, "AllCheck"

    invoke-virtual {v1, v2, v4, v4}, Lcom/android/browser/BrowserBookmarksPage;->setCheckedAllBox(Ljava/lang/String;ZZ)V

    .line 176
    :cond_35
    :goto_35
    return-void

    .line 171
    :cond_36
    if-nez p2, :cond_35

    .line 172
    const-string v1, "BookmarkMoveToFolder"

    const-string v2, "mSelectAllListener is unchecked!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/android/browser/BookmarkMoveToFolder$1;->this$0:Lcom/android/browser/BookmarkMoveToFolder;

    #getter for: Lcom/android/browser/BookmarkMoveToFolder;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;
    invoke-static {v1}, Lcom/android/browser/BookmarkMoveToFolder;->access$000(Lcom/android/browser/BookmarkMoveToFolder;)Lcom/android/browser/BrowserBookmarksPage;

    move-result-object v1

    const-string v2, "AllCheck"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/browser/BrowserBookmarksPage;->setCheckedAllBox(Ljava/lang/String;ZZ)V

    goto :goto_35
.end method
