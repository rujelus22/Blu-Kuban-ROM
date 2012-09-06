.class Lcom/google/android/apps/reader/widget/ItemContextMenu$CopyListener;
.super Ljava/lang/Object;
.source "ItemContextMenu.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/widget/ItemContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CopyListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "text"

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$CopyListener;->mContext:Landroid/content/Context;

    .line 298
    iput-object p2, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$CopyListener;->mText:Ljava/lang/String;

    .line 299
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$CopyListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/reader/util/SystemService;->getClipboardManager(Landroid/content/Context;)Landroid/text/ClipboardManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$CopyListener;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 307
    const/4 v0, 0x1

    return v0
.end method
