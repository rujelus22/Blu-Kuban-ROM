.class final Lcom/google/android/youtube/app/honeycomb/tablet/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/ce;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)V
    .registers 2
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->a(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 424
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Lcom/google/android/youtube/app/ui/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->b(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Lcom/google/android/youtube/app/remote/at;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/bd;->a(Lcom/google/android/youtube/app/remote/RemoteControl;)V

    .line 425
    return-void
.end method
