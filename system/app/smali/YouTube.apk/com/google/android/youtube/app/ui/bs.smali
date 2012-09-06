.class final Lcom/google/android/youtube/app/ui/bs;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/br;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/br;)V
    .registers 2
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bs;->a:Lcom/google/android/youtube/app/ui/br;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/br;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/bs;-><init>(Lcom/google/android/youtube/app/ui/br;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bs;->a:Lcom/google/android/youtube/app/ui/br;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/br;->notifyDataSetChanged()V

    .line 247
    return-void
.end method

.method public final onInvalidated()V
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bs;->a:Lcom/google/android/youtube/app/ui/br;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/br;->notifyDataSetInvalidated()V

    .line 252
    return-void
.end method
