.class final Lcom/google/android/youtube/coreicecream/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/b;->b:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    iput p2, p0, Lcom/google/android/youtube/coreicecream/ui/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/b;->b:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    iget v1, p0, Lcom/google/android/youtube/coreicecream/ui/b;->a:I

    invoke-static {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->a(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;I)V

    .line 369
    return-void
.end method
