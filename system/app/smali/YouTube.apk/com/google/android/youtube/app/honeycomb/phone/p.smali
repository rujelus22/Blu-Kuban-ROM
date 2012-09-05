.class final Lcom/google/android/youtube/app/honeycomb/phone/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/p;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/p;->a:Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/p;->a:Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 203
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/p;->a:Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
