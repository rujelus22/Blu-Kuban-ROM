.class Lcom/google/googlenav/ui/view/android/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final a:Lcom/google/googlenav/ui/view/android/H;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/H;)V
    .registers 2
    .parameter

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/J;->a:Lcom/google/googlenav/ui/view/android/H;

    .line 330
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/H;Lcom/google/googlenav/ui/view/android/I;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/J;-><init>(Lcom/google/googlenav/ui/view/android/H;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 339
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 333
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/J;->a:Lcom/google/googlenav/ui/view/android/H;

    if-eqz p2, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/android/H;->a(Lcom/google/googlenav/ui/view/android/H;Z)Z

    .line 334
    return-void

    .line 333
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
