.class final Lcom/google/android/youtube/app/honeycomb/phone/aa;
.super Lcom/google/android/youtube/app/adapter/i;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/t;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/phone/z;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/z;Landroid/content/Context;Landroid/view/View;ILcom/google/android/youtube/app/honeycomb/phone/t;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/aa;->b:Lcom/google/android/youtube/app/honeycomb/phone/z;

    iput-object p5, p0, Lcom/google/android/youtube/app/honeycomb/phone/aa;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    const v0, 0x7f080023

    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/youtube/app/adapter/i;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Landroid/view/View;Lcom/google/android/youtube/core/async/l;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/aa;->b:Lcom/google/android/youtube/app/honeycomb/phone/z;

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/z;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->x(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/aa;->b:Lcom/google/android/youtube/app/honeycomb/phone/z;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/z;->a(Lcom/google/android/youtube/app/honeycomb/phone/z;)Lcom/google/android/youtube/core/model/UserProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    invoke-interface {v0, v1, p3}, Lcom/google/android/youtube/core/b/ag;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    return-void
.end method
