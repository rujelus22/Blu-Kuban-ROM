.class final Lcom/google/android/youtube/app/honeycomb/tablet/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/bl;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/ah;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)V
    .registers 2
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/aj;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/aj;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ah;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->a(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 338
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/aj;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ah;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Lcom/google/android/youtube/app/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/aj;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ah;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->b(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Lcom/google/android/youtube/app/ui/at;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/p;->a(Lcom/google/android/youtube/app/r;)Z

    .line 339
    return-void
.end method
