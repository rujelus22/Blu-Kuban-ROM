.class final Lcom/google/android/youtube/core/transfer/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/transfer/ab;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/transfer/ab;)V
    .registers 2
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/ac;->a:Lcom/google/android/youtube/core/transfer/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ac;->a:Lcom/google/android/youtube/core/transfer/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/ab;->a(Lcom/google/android/youtube/core/transfer/ab;)V

    .line 186
    return-void
.end method
