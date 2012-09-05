.class Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BookmarkGridReorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;

.field title:Landroid/widget/TextView;

.field v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter "v"

    .prologue
    .line 303
    .local p0, this:Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;,"Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter<TT;>.ViewHolder;"
    iput-object p1, p0, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;->this$1:Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p2, p0, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;->v:Landroid/view/View;

    .line 305
    return-void
.end method


# virtual methods
.method getIcon()Landroid/widget/ImageView;
    .registers 3

    .prologue
    .line 309
    .local p0, this:Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;,"Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter<TT;>.ViewHolder;"
    iget-object v0, p0, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    if-nez v0, :cond_11

    .line 311
    iget-object v0, p0, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 313
    :cond_11
    iget-object v0, p0, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method getTitle()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 318
    .local p0, this:Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;,"Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter<TT;>.ViewHolder;"
    iget-object v0, p0, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 320
    iget-object v0, p0, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 322
    :cond_11
    iget-object v0, p0, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method
