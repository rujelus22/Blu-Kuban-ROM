.class final Lcom/android/athome/picker/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/music/TungstenGroupingService$OnGetGroupState;


# instance fields
.field final synthetic a:Lcom/android/athome/picker/b/a;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/b/a;)V
    .registers 2
    .parameter

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/android/athome/picker/b/j;->a:Lcom/android/athome/picker/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetGroupState(Landroid/support/place/music/TgsState;)V
    .registers 5
    .parameter

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/android/athome/picker/b/j;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->s(Lcom/android/athome/picker/b/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/athome/picker/b/y;

    iget-object v2, p0, Lcom/android/athome/picker/b/j;->a:Lcom/android/athome/picker/b/a;

    invoke-direct {v1, v2, p1}, Lcom/android/athome/picker/b/y;-><init>(Lcom/android/athome/picker/b/a;Landroid/support/place/music/TgsState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1490
    return-void
.end method
