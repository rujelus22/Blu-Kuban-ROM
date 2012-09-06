.class public final Lcom/google/android/youtube/app/adapter/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/adapter/az;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/ad;

.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/adapter/ad;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/ae;->a:Lcom/google/android/youtube/app/adapter/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const v0, 0x7f080066

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 36
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ae;->b:Landroid/view/View;

    .line 37
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(ILjava/lang/Object;)Landroid/view/View;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 30
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ae;->a:Lcom/google/android/youtube/app/adapter/ad;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/ad;->a(Lcom/google/android/youtube/app/adapter/ad;)Lcom/google/android/youtube/app/ui/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/ae;->b:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/youtube/app/ui/p;->a(Landroid/view/View;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ae;->b:Landroid/view/View;

    return-object v0
.end method
