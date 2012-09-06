.class LHM;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LHK;


# direct methods
.method constructor <init>(LHK;)V
    .registers 2
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, LHM;->a:LHK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 473
    iget-object v0, p0, LHM;->a:LHK;

    iget-object v0, v0, LHK;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    iget-object v1, p0, LHM;->a:LHK;

    iget-object v1, v1, LHK;->a:LkT;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Lcom/google/android/apps/docs/fragment/PreviewFragment;LkT;Z)V

    .line 474
    return-void
.end method
