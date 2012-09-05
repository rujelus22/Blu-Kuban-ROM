.class final Lcom/google/android/youtube/core/transfer/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/transfer/w;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/transfer/w;)V
    .registers 2
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/x;->a:Lcom/google/android/youtube/core/transfer/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->a:Lcom/google/android/youtube/core/transfer/w;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/w;->a(Lcom/google/android/youtube/core/transfer/w;)V

    .line 188
    return-void
.end method
