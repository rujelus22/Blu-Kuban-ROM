.class public Lcom/android/browser/FolderListPage$BookmarkAccount;
.super Ljava/lang/Object;
.source "FolderListPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/FolderListPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookmarkAccount"
.end annotation


# instance fields
.field accountName:Ljava/lang/String;

.field accountType:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;

.field public rootFolderId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 327
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 328
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/FolderListPage$BookmarkAccount;->accountName:Ljava/lang/String;

    .line 330
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/FolderListPage$BookmarkAccount;->accountType:Ljava/lang/String;

    .line 332
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/FolderListPage$BookmarkAccount;->rootFolderId:J

    .line 334
    iget-object v0, p0, Lcom/android/browser/FolderListPage$BookmarkAccount;->accountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/FolderListPage$BookmarkAccount;->mLabel:Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/android/browser/FolderListPage$BookmarkAccount;->mLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 337
    const v0, 0x7f0c0178

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/FolderListPage$BookmarkAccount;->mLabel:Ljava/lang/String;

    .line 339
    :cond_2d
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/browser/FolderListPage$BookmarkAccount;->mLabel:Ljava/lang/String;

    return-object v0
.end method
