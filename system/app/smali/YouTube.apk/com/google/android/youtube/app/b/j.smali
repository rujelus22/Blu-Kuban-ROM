.class final Lcom/google/android/youtube/app/b/j;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/youtube/app/b/i;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/b/i;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/android/youtube/app/b/j;->b:Lcom/google/android/youtube/app/b/i;

    iput-object p2, p0, Lcom/google/android/youtube/app/b/j;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/youtube/app/b/j;->b:Lcom/google/android/youtube/app/b/i;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/youtube/app/b/j;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/b/i;->a(Lcom/google/android/youtube/app/b/i;Ljava/io/File;)V

    .line 242
    return-void
.end method
