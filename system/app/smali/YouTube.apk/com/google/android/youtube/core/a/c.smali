.class final Lcom/google/android/youtube/core/a/c;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/a/b;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/core/a/b;)V
    .registers 3
    .parameter

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/a/c;-><init>(Lcom/google/android/youtube/core/a/b;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/core/a/b;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/youtube/core/a/c;->a:Lcom/google/android/youtube/core/a/b;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/core/a/c;->a:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->notifyDataSetChanged()V

    .line 123
    return-void
.end method

.method public final onInvalidated()V
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/core/a/c;->a:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->notifyDataSetInvalidated()V

    .line 128
    return-void
.end method
