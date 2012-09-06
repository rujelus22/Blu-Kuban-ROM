.class Lcom/google/googlenav/ui/view/android/aC;
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
    .line 139
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aC;->a:Lcom/google/googlenav/ui/view/android/DistanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aC;->a:Lcom/google/googlenav/ui/view/android/DistanceView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->requestLayout()V

    .line 143
    return-void
.end method
