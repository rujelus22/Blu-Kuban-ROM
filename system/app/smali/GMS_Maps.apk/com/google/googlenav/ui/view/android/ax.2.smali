.class Lcom/google/googlenav/ui/view/android/aX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/HeadingView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/HeadingView;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aX;->a:Lcom/google/googlenav/ui/view/android/HeadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aX;->a:Lcom/google/googlenav/ui/view/android/HeadingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/HeadingView;->setVisibility(I)V

    .line 133
    return-void
.end method
