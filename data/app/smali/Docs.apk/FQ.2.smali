.class public LFQ;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LFT;

.field final synthetic a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;LFT;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, LFQ;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    iput-object p2, p0, LFQ;->a:LFT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 324
    iget-object v0, p0, LFQ;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    iget-object v1, p0, LFQ;->a:LFT;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;LFT;)LFT;

    .line 325
    iget-object v0, p0, LFQ;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(I)Z

    .line 326
    return-void
.end method
