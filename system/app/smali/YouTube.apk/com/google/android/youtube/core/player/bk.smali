.class final Lcom/google/android/youtube/core/player/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/bi;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/bi;)V
    .registers 2
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/google/android/youtube/core/player/bk;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bk;->a:Lcom/google/android/youtube/core/player/bi;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/bi;->a(Lcom/google/android/youtube/core/player/bi;I)V

    .line 310
    const/4 v0, 0x1

    return v0
.end method
