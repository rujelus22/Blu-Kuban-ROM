.class final Lcom/google/android/youtube/core/a/c;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/a/b;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/a/b;)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/youtube/core/a/c;->a:Lcom/google/android/youtube/core/a/b;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/a/b;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/a/c;-><init>(Lcom/google/android/youtube/core/a/b;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/youtube/core/a/c;->a:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->notifyDataSetChanged()V

    .line 169
    return-void
.end method

.method public final onInvalidated()V
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/core/a/c;->a:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->notifyDataSetInvalidated()V

    .line 174
    return-void
.end method
