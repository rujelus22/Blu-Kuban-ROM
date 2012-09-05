.class Lcom/android/browser/BrowserBookmarksAdapter$1;
.super Ljava/lang/Object;
.source "BrowserBookmarksAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserBookmarksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserBookmarksAdapter;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserBookmarksAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksAdapter$1;->this$0:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 11
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 383
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 384
    .local v0, cbox:Landroid/widget/CheckBox;
    const-string v3, "BrowserBookmarksAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cbox : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    if-eqz v0, :cond_4d

    .line 387
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    .line 389
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 390
    .local v1, id:J
    const-string v3, "BrowserBookmarksAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckBoxChangeListener //id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    if-eqz p2, :cond_4e

    .line 393
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter$1;->this$0:Lcom/android/browser/BrowserBookmarksAdapter;

    iget-object v3, v3, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v3, v1, v2, v7}, Lcom/android/browser/BrowserBookmarksPage;->setCheckedBox(JZ)V

    .line 403
    .end local v1           #id:J
    :cond_4d
    :goto_4d
    return-void

    .line 395
    .restart local v1       #id:J
    :cond_4e
    if-nez p2, :cond_4d

    .line 396
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter$1;->this$0:Lcom/android/browser/BrowserBookmarksAdapter;

    iget-object v3, v3, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v3, v1, v2, v6}, Lcom/android/browser/BrowserBookmarksPage;->setCheckedBox(JZ)V

    .line 397
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter$1;->this$0:Lcom/android/browser/BrowserBookmarksAdapter;

    iget-boolean v3, v3, Lcom/android/browser/BrowserBookmarksAdapter;->mSelectAll:Z

    if-eqz v3, :cond_4d

    .line 398
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter$1;->this$0:Lcom/android/browser/BrowserBookmarksAdapter;

    iget-object v3, v3, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkPage:Lcom/android/browser/BrowserBookmarksPage;

    const-string v4, "AllCheck"

    invoke-virtual {v3, v4, v6, v6}, Lcom/android/browser/BrowserBookmarksPage;->setCheckedAllBox(Ljava/lang/String;ZZ)V

    goto :goto_4d
.end method
