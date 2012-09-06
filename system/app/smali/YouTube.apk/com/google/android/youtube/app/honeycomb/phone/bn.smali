.class final Lcom/google/android/youtube/app/honeycomb/phone/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/a;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/phone/bm;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/bm;Lcom/google/android/youtube/app/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bn;->b:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/bn;->a:Lcom/google/android/youtube/app/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bn;->b:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->a(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Lcom/google/android/youtube/app/adapter/ay;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/adapter/ay;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_1c

    .line 90
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/bn;->a:Lcom/google/android/youtube/app/a;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bn;->b:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->b(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_17
    sget-object v3, Lcom/google/android/youtube/app/m;->R:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v2, v1, v0, v3}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;)V

    .line 93
    :cond_1c
    return-void

    .line 90
    :cond_1d
    const/4 v0, 0x0

    goto :goto_17
.end method
