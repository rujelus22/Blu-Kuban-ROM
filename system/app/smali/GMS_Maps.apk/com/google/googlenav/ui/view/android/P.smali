.class Lcom/google/googlenav/ui/view/android/P;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final a:Lcom/google/googlenav/ui/view/android/N;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/N;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/P;->a:Lcom/google/googlenav/ui/view/android/N;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/N;Lcom/google/googlenav/ui/view/android/O;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/P;-><init>(Lcom/google/googlenav/ui/view/android/N;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/P;->a:Lcom/google/googlenav/ui/view/android/N;

    if-eqz p2, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/android/N;->a(Lcom/google/googlenav/ui/view/android/N;Z)Z

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
