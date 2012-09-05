.class Lcom/android/browser/DeleteBookmark$1;
.super Ljava/lang/Object;
.source "DeleteBookmark.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/DeleteBookmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/DeleteBookmark;


# direct methods
.method constructor <init>(Lcom/android/browser/DeleteBookmark;)V
    .registers 2
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/browser/DeleteBookmark$1;->this$0:Lcom/android/browser/DeleteBookmark;

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

    .line 143
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 144
    .local v0, cbox:Landroid/widget/CheckBox;
    const-string v1, "DeleteBookmark"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cbox : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-eqz v0, :cond_35

    .line 147
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    .line 149
    if-eqz p2, :cond_36

    .line 150
    const-string v1, "DeleteBookmark"

    const-string v2, "mSelectAllListener is checked!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/android/browser/DeleteBookmark$1;->this$0:Lcom/android/browser/DeleteBookmark;

    #getter for: Lcom/android/browser/DeleteBookmark;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;
    invoke-static {v1}, Lcom/android/browser/DeleteBookmark;->access$000(Lcom/android/browser/DeleteBookmark;)Lcom/android/browser/BrowserBookmarksPage;

    move-result-object v1

    const-string v2, "AllCheck"

    invoke-virtual {v1, v2, v4, v4}, Lcom/android/browser/BrowserBookmarksPage;->setCheckedAllBox(Ljava/lang/String;ZZ)V

    .line 158
    :cond_35
    :goto_35
    return-void

    .line 153
    :cond_36
    if-nez p2, :cond_35

    .line 154
    const-string v1, "DeleteBookmark"

    const-string v2, "mSelectAllListener is unchecked!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/android/browser/DeleteBookmark$1;->this$0:Lcom/android/browser/DeleteBookmark;

    #getter for: Lcom/android/browser/DeleteBookmark;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;
    invoke-static {v1}, Lcom/android/browser/DeleteBookmark;->access$000(Lcom/android/browser/DeleteBookmark;)Lcom/android/browser/BrowserBookmarksPage;

    move-result-object v1

    const-string v2, "AllCheck"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/browser/BrowserBookmarksPage;->setCheckedAllBox(Ljava/lang/String;ZZ)V

    goto :goto_35
.end method
