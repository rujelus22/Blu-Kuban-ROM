.class public LHK;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements Laad;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

.field final synthetic a:LkT;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/fragment/PreviewFragment;Landroid/os/Handler;LkT;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, LHK;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    iput-object p2, p0, LHK;->a:Landroid/os/Handler;

    iput-object p3, p0, LHK;->a:LkT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter

    .prologue
    .line 459
    iget-object v0, p0, LHK;->a:Landroid/os/Handler;

    new-instance v1, LHL;

    invoke-direct {v1, p0, p1}, LHL;-><init>(LHK;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 470
    iget-object v0, p0, LHK;->a:Landroid/os/Handler;

    new-instance v1, LHM;

    invoke-direct {v1, p0}, LHM;-><init>(LHK;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 476
    return-void
.end method
