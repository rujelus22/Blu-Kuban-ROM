.class public Lcom/google/googlenav/prefetch/android/i;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;)V
    .registers 2
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/i;->a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/prefetch/android/BasePrefetcherService;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/i;->a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    return-object v0
.end method
