.class final Lcom/google/android/youtube/app/honeycomb/tablet/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/as;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/tablet/m;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/m;Lcom/google/android/youtube/app/adapter/as;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/r;->b:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/r;->a:Lcom/google/android/youtube/app/adapter/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/r;->a:Lcom/google/android/youtube/app/adapter/as;

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/adapter/as;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist;

    .line 440
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/r;->b:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    iget-object v1, v1, Lcom/google/android/youtube/app/honeycomb/tablet/m;->d:Lcom/google/android/youtube/app/a;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/app/a;->a(Landroid/net/Uri;Z)V

    .line 441
    return-void
.end method
