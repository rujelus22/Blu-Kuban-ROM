.class final Lcom/google/android/youtube/core/transfer/c;
.super Lcom/google/android/youtube/core/utils/n;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/transfer/d;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/google/android/youtube/core/transfer/d;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p2, p0, Lcom/google/android/youtube/core/transfer/c;->a:Lcom/google/android/youtube/core/transfer/d;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/utils/n;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/Binder;)V
    .registers 3
    .parameter

    .prologue
    .line 88
    check-cast p1, Lcom/google/android/youtube/core/transfer/g;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/c;->a:Lcom/google/android/youtube/core/transfer/d;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/transfer/g;->b(Lcom/google/android/youtube/core/transfer/d;)Z

    return-void
.end method

.method protected final synthetic b(Landroid/os/Binder;)V
    .registers 3
    .parameter

    .prologue
    .line 88
    check-cast p1, Lcom/google/android/youtube/core/transfer/g;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/c;->a:Lcom/google/android/youtube/core/transfer/d;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/transfer/g;->a(Lcom/google/android/youtube/core/transfer/d;)Z

    return-void
.end method
