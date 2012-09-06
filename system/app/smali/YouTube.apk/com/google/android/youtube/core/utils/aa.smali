.class final Lcom/google/android/youtube/core/utils/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/ArrayAdapter;

.field final synthetic b:Lcom/google/android/youtube/core/player/o;


# direct methods
.method constructor <init>(Landroid/widget/ArrayAdapter;Lcom/google/android/youtube/core/player/o;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/youtube/core/utils/aa;->a:Landroid/widget/ArrayAdapter;

    iput-object p2, p0, Lcom/google/android/youtube/core/utils/aa;->b:Lcom/google/android/youtube/core/player/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/aa;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/SubtitleTrack;

    .line 35
    iget-object v1, p0, Lcom/google/android/youtube/core/utils/aa;->b:Lcom/google/android/youtube/core/player/o;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/player/o;->a(Lcom/google/android/youtube/core/model/SubtitleTrack;)V

    .line 36
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 37
    return-void
.end method
