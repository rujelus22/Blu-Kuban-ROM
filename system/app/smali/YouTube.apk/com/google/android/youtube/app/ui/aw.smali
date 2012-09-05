.class final Lcom/google/android/youtube/app/ui/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/p;

.field final synthetic b:Lcom/google/android/youtube/app/ui/at;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/at;Lcom/google/android/youtube/app/p;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/aw;->b:Lcom/google/android/youtube/app/ui/at;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/aw;->a:Lcom/google/android/youtube/app/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/aw;->a:Lcom/google/android/youtube/app/p;

    invoke-interface {v0}, Lcom/google/android/youtube/app/p;->d()Lcom/google/android/youtube/app/t;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/t;->c:Lcom/google/android/youtube/app/t;

    if-eq v0, v1, :cond_b

    .line 139
    :cond_a
    :goto_a
    return-void

    .line 136
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/aw;->b:Lcom/google/android/youtube/app/ui/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/at;->a(Lcom/google/android/youtube/app/ui/at;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/aw;->a:Lcom/google/android/youtube/app/p;

    invoke-interface {v1}, Lcom/google/android/youtube/app/p;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/aw;->b:Lcom/google/android/youtube/app/ui/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/at;->c(Lcom/google/android/youtube/app/ui/at;)V

    goto :goto_a
.end method
