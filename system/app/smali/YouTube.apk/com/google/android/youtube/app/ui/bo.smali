.class final Lcom/google/android/youtube/app/ui/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/bn;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/bn;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bo;->a:Lcom/google/android/youtube/app/ui/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bo;->a:Lcom/google/android/youtube/app/ui/bn;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bn;->a(Lcom/google/android/youtube/app/ui/bn;)Lcom/google/android/youtube/app/ui/StackButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/StackButton;->a()V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 43
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bo;->a:Lcom/google/android/youtube/app/ui/bn;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bn;->a(Lcom/google/android/youtube/app/ui/bn;)Lcom/google/android/youtube/app/ui/StackButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/app/ui/StackButton;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
