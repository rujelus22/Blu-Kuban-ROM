.class public Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesGridViewWrapper;
.super Ljava/lang/Object;
.source "MyPurchasesHelper.java"

# interfaces
.implements Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PurchasesGridViewWrapper"
.end annotation


# instance fields
.field private final view:Landroid/widget/GridView;


# direct methods
.method public constructor <init>(Landroid/widget/GridView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesGridViewWrapper;->view:Landroid/widget/GridView;

    .line 711
    return-void
.end method


# virtual methods
.method public setAdapter(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 726
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesGridViewWrapper;->view:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 727
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesGridViewWrapper;->view:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 719
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesGridViewWrapper;->view:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 723
    return-void
.end method

.method public setVisibility(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesGridViewWrapper;->view:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 715
    return-void
.end method
