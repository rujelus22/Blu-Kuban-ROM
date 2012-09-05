.class final Lcom/google/android/youtube/app/honeycomb/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field public final a:Z

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/ui/h;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/ui/h;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/l;->b:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-boolean p2, p0, Lcom/google/android/youtube/app/honeycomb/ui/l;->a:Z

    .line 165
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/l;->a:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/l;->b:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/h;->g(Lcom/google/android/youtube/app/honeycomb/ui/h;)V

    :cond_9
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 159
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/l;->b:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/h;->j(Lcom/google/android/youtube/app/honeycomb/ui/h;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
