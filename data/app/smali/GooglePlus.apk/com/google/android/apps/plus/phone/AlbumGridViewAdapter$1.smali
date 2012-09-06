.class Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter$1;
.super Ljava/lang/Object;
.source "AlbumGridViewAdapter.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ColumnGridView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/Integer;Lcom/google/android/apps/plus/views/ColumnGridView;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter$ViewUseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 97
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/views/EsImageView;

    .line 98
    .local v0, albumPhoto:Lcom/google/android/apps/plus/views/EsImageView;
    if-eqz v0, :cond_12

    .line 99
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EsImageView;->onRecycle()V

    .line 100
    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/EsImageView;->setTag(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/EsImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/EsImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 105
    :cond_12
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;

    #getter for: Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mViews:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->access$000(Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method
