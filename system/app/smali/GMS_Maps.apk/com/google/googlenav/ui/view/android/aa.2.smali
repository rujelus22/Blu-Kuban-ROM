.class Lcom/google/googlenav/ui/view/android/aA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/DistanceView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/DistanceView;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aA;->a:Lcom/google/googlenav/ui/view/android/DistanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aA;->a:Lcom/google/googlenav/ui/view/android/DistanceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/DistanceView;->setVisibility(I)V

    .line 129
    return-void
.end method
