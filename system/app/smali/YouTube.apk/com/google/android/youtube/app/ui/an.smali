.class final Lcom/google/android/youtube/app/ui/an;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/am;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/am;)V
    .registers 3
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/ui/an;-><init>(Lcom/google/android/youtube/app/ui/am;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/ui/am;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/an;->a:Lcom/google/android/youtube/app/ui/am;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/an;->a:Lcom/google/android/youtube/app/ui/am;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/am;->notifyDataSetChanged()V

    .line 76
    return-void
.end method
