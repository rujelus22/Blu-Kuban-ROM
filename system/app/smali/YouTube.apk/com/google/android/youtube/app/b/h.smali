.class final Lcom/google/android/youtube/app/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/b/d;

.field private final b:Lcom/google/android/youtube/app/b/b;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/b/d;Lcom/google/android/youtube/app/b/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/google/android/youtube/app/b/h;->a:Lcom/google/android/youtube/app/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p2, p0, Lcom/google/android/youtube/app/b/h;->b:Lcom/google/android/youtube/app/b/b;

    .line 311
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 305
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/app/b/h;->a:Lcom/google/android/youtube/app/b/d;

    invoke-static {v0}, Lcom/google/android/youtube/app/b/d;->a(Lcom/google/android/youtube/app/b/d;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 305
    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    iget-object v0, p0, Lcom/google/android/youtube/app/b/h;->a:Lcom/google/android/youtube/app/b/d;

    iget-object v1, p0, Lcom/google/android/youtube/app/b/h;->b:Lcom/google/android/youtube/app/b/b;

    invoke-static {v0, p2, v1}, Lcom/google/android/youtube/app/b/d;->a(Lcom/google/android/youtube/app/b/d;Lcom/google/android/youtube/core/model/Page;Lcom/google/android/youtube/app/b/b;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/b/h;->a:Lcom/google/android/youtube/app/b/d;

    invoke-static {v0}, Lcom/google/android/youtube/app/b/d;->a(Lcom/google/android/youtube/app/b/d;)V

    return-void
.end method
