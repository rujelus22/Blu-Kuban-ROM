.class final Lcom/google/android/youtube/core/player/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/aq;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/aq;)V
    .registers 2
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/google/android/youtube/core/player/as;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/youtube/core/player/as;->a:Lcom/google/android/youtube/core/player/aq;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/aq;->a(Lcom/google/android/youtube/core/player/aq;I)V

    .line 277
    const/4 v0, 0x1

    return v0
.end method
