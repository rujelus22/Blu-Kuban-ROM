.class Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter$1;
.super Ljava/lang/Object;
.source "PhotoAlbumsAdapter.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ColumnGridView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/google/android/apps/plus/views/ColumnGridView;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 53
    const v1, 0x7f0900af

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/EsImageView;

    .line 54
    .local v0, image:Lcom/google/android/apps/plus/views/EsImageView;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EsImageView;->onRecycle()V

    .line 55
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;

    #getter for: Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;->mImageViews:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;->access$000(Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 56
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method
