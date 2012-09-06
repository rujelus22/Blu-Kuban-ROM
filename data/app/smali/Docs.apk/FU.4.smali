.class public LFU;
.super LFO;
.source "TouchImageView.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, LFU;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-direct {p0}, LFO;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;LFP;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0, p1}, LFU;-><init>(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public b(LFM;)Z
    .registers 4
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, LFU;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-virtual {p1}, LFM;->e()F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->d(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;F)F

    .line 111
    iget-object v0, p0, LFU;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)V

    .line 112
    iget-object v0, p0, LFU;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)V

    .line 113
    iget-object v0, p0, LFU;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->invalidate()V

    .line 114
    const/4 v0, 0x1

    return v0
.end method
