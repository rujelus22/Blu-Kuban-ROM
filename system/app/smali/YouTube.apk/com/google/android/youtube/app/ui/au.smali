.class final Lcom/google/android/youtube/app/ui/au;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/at;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/at;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/au;->a:Lcom/google/android/youtube/app/ui/at;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/at;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/au;-><init>(Lcom/google/android/youtube/app/ui/at;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/au;->a:Lcom/google/android/youtube/app/ui/at;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/at;->notifyDataSetChanged()V

    .line 76
    return-void
.end method
