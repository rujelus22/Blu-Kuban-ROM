.class final Lcom/google/android/youtube/app/remote/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

.field final synthetic b:Lcom/google/android/youtube/app/remote/AtHomeConnection;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/remote/AtHomeConnection;Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/a;->b:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    iput-object p2, p0, Lcom/google/android/youtube/app/remote/a;->a:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/a;->b:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/AtHomeConnection;->a(Lcom/google/android/youtube/app/remote/AtHomeConnection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/c;

    .line 122
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/a;->a:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    invoke-interface {v0, v2}, Lcom/google/android/youtube/app/remote/c;->a(Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;)V

    goto :goto_a

    .line 124
    :cond_1c
    return-void
.end method
