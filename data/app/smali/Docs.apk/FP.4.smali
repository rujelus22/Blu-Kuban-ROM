.class public LFP;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)V
    .registers 2
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, LFP;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 312
    iget-object v0, p0, LFP;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)I

    move-result v0

    .line 313
    iget-object v1, p0, LFP;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;I)I

    .line 314
    iget-object v1, p0, LFP;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(I)Z

    .line 315
    return-void
.end method
