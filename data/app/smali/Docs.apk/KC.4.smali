.class public LKC;
.super LKH;
.source "PageChangeController.java"

# interfaces
.implements LKI;


# instance fields
.field private final a:LKD;

.field private final a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;


# direct methods
.method public constructor <init>(LKD;Lcom/google/android/apps/docs/kixwebview/PageScrubber;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, LKH;-><init>()V

    .line 14
    iput-object p1, p0, LKC;->a:LKD;

    .line 15
    iput-object p2, p0, LKC;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    .line 16
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, LKC;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->c(I)V

    .line 21
    return-void
.end method

.method public b(I)V
    .registers 3
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, LKC;->a:LKD;

    invoke-interface {v0, p1}, LKD;->a(I)V

    .line 26
    iget-object v0, p0, LKC;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->b(I)V

    .line 27
    return-void
.end method

.method public c(I)V
    .registers 3
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, LKC;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->b(I)V

    .line 32
    return-void
.end method
