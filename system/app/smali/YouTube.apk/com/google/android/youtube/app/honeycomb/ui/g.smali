.class final Lcom/google/android/youtube/app/honeycomb/ui/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/ui/d;

.field private final b:Lcom/google/android/youtube/core/model/LiveEvent;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/ui/d;Lcom/google/android/youtube/core/model/LiveEvent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/g;->a:Lcom/google/android/youtube/app/honeycomb/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/ui/g;->b:Lcom/google/android/youtube/core/model/LiveEvent;

    .line 148
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/g;->a:Lcom/google/android/youtube/app/honeycomb/ui/d;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/g;->b:Lcom/google/android/youtube/core/model/LiveEvent;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/d;->a(Lcom/google/android/youtube/app/honeycomb/ui/d;Lcom/google/android/youtube/core/model/LiveEvent;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 142
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/g;->a:Lcom/google/android/youtube/app/honeycomb/ui/d;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/d;->a(Lcom/google/android/youtube/app/honeycomb/ui/d;)Lcom/google/android/youtube/app/honeycomb/ui/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/g;->b:Lcom/google/android/youtube/core/model/LiveEvent;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/LiveEvent;->selfUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/youtube/app/honeycomb/ui/b;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method
