.class Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BookmarkReorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;

.field title:Landroid/widget/TextView;

.field url:Landroid/widget/TextView;

.field v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter "v"

    .prologue
    .line 333
    .local p0, this:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;,"Lcom/android/browser/BookmarkReorder$ReOrderListAdapter<TT;>.ViewHolder;"
    iput-object p1, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->this$1:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p2, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->v:Landroid/view/View;

    .line 335
    return-void
.end method


# virtual methods
.method getIcon()Landroid/widget/ImageView;
    .registers 3

    .prologue
    .line 339
    .local p0, this:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;,"Lcom/android/browser/BookmarkReorder$ReOrderListAdapter<TT;>.ViewHolder;"
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    if-nez v0, :cond_11

    .line 341
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0d0025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 343
    :cond_11
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method getTitle()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 348
    .local p0, this:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;,"Lcom/android/browser/BookmarkReorder$ReOrderListAdapter<TT;>.ViewHolder;"
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 350
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 352
    :cond_11
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method getUrl()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 357
    .local p0, this:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;,"Lcom/android/browser/BookmarkReorder$ReOrderListAdapter<TT;>.ViewHolder;"
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->url:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 359
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->url:Landroid/widget/TextView;

    .line 361
    :cond_11
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->url:Landroid/widget/TextView;

    return-object v0
.end method
