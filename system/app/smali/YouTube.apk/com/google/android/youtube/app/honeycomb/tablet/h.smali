.class final Lcom/google/android/youtube/app/honeycomb/tablet/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/as;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/tablet/g;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/g;Lcom/google/android/youtube/app/adapter/as;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/h;->b:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/h;->a:Lcom/google/android/youtube/app/adapter/as;

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
    .line 325
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/h;->a:Lcom/google/android/youtube/app/adapter/as;

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/adapter/as;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist;

    .line 326
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/h;->b:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    iget-object v1, v1, Lcom/google/android/youtube/app/honeycomb/tablet/g;->d:Lcom/google/android/youtube/app/a;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/app/a;->a(Landroid/net/Uri;Z)V

    .line 327
    return-void
.end method
