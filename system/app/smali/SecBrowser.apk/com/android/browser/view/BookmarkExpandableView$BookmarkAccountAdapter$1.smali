.class Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter$1;
.super Landroid/database/DataSetObserver;
.source "BookmarkExpandableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;


# direct methods
.method constructor <init>(Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter$1;->this$1:Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter$1;->this$1:Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    invoke-virtual {v0}, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->notifyDataSetChanged()V

    .line 368
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter$1;->this$1:Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    invoke-virtual {v0}, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->notifyDataSetInvalidated()V

    .line 373
    return-void
.end method