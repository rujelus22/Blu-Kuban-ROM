.class Lcom/google/android/maps/driveabout/vector/dG;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/vector/dF;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/dF;)V
    .registers 2
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dG;->a:Lcom/google/android/maps/driveabout/vector/dF;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter

    .prologue
    .line 561
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lac/g;

    .line 562
    invoke-interface {v0}, Lac/g;->l_()V

    .line 563
    return-void
.end method
