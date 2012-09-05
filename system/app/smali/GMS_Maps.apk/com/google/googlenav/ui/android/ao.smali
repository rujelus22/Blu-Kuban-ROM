.class public Lcom/google/googlenav/ui/android/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final a:Lbb/c;

.field private final b:Lbb/E;


# direct methods
.method private constructor <init>(Lbb/c;Lbb/E;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/android/ao;->b:Lbb/E;

    iput-object p1, p0, Lcom/google/googlenav/ui/android/ao;->a:Lbb/c;

    return-void
.end method

.method public static a(Landroid/view/View;Lbb/c;Lbb/E;)Lcom/google/googlenav/ui/android/ao;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    new-instance v1, Lcom/google/googlenav/ui/android/ao;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/h;->a(Lbb/c;)Lbb/c;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Lcom/google/googlenav/ui/android/ao;-><init>(Lbb/c;Lbb/E;)V

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object v0, v1

    :cond_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ao;->a:Lbb/c;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ao;->b:Lbb/E;

    invoke-interface {v0, v1}, Lbb/c;->a(Lbb/E;)Z

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ao;->a:Lbb/c;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ao;->b:Lbb/E;

    invoke-interface {v0, v1}, Lbb/c;->b(Lbb/E;)Z

    move-result v0

    return v0
.end method
