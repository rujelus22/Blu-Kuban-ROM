.class final Lcom/google/android/youtube/app/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/youtube/app/a;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/a;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/google/android/youtube/app/c;->b:Lcom/google/android/youtube/app/a;

    iput-object p2, p0, Lcom/google/android/youtube/app/c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/youtube/app/c;->b:Lcom/google/android/youtube/app/a;

    invoke-static {v0}, Lcom/google/android/youtube/app/a;->d(Lcom/google/android/youtube/app/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/r;

    .line 248
    iget-object v2, p0, Lcom/google/android/youtube/app/c;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/android/youtube/app/r;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 250
    :cond_1c
    return-void
.end method