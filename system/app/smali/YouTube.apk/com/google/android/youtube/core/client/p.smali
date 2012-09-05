.class final Lcom/google/android/youtube/core/client/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Lcom/google/android/youtube/core/client/l;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/client/l;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/google/android/youtube/core/client/p;->d:Lcom/google/android/youtube/core/client/l;

    iput-object p2, p0, Lcom/google/android/youtube/core/client/p;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/youtube/core/client/p;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/youtube/core/client/p;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/google/android/youtube/core/client/p;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/p;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/youtube/core/client/p;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1026
    return-void
.end method
