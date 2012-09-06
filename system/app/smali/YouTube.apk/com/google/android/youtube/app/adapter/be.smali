.class final Lcom/google/android/youtube/app/adapter/be;
.super Lcom/google/android/youtube/app/adapter/a;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/app/adapter/a;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Landroid/net/Uri;
    .registers 3
    .parameter

    .prologue
    .line 401
    check-cast p1, Lcom/google/android/youtube/core/model/Event;

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Event;->subjectUri:Landroid/net/Uri;

    return-object v0
.end method
