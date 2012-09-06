.class public Lcom/google/googlenav/ui/android/aD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final a:Lcom/google/googlenav/ui/view/c;

.field private final b:Lcom/google/googlenav/ui/view/J;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/google/googlenav/ui/android/aD;->b:Lcom/google/googlenav/ui/view/J;

    .line 41
    iput-object p1, p0, Lcom/google/googlenav/ui/android/aD;->a:Lcom/google/googlenav/ui/view/c;

    .line 42
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)Lcom/google/googlenav/ui/android/aD;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 28
    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    .line 29
    new-instance v1, Lcom/google/googlenav/ui/android/aD;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/e;->a(Lcom/google/googlenav/ui/view/c;)Lcom/google/googlenav/ui/view/c;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Lcom/google/googlenav/ui/android/aD;-><init>(Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)V

    .line 31
    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 33
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object v0, v1

    .line 36
    :cond_1b
    return-object v0

    .line 31
    :cond_1c
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/googlenav/ui/android/aD;->a:Lcom/google/googlenav/ui/view/c;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/aD;->b:Lcom/google/googlenav/ui/view/J;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/c;->a(Lcom/google/googlenav/ui/view/J;)Z

    .line 47
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/googlenav/ui/android/aD;->a:Lcom/google/googlenav/ui/view/c;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/aD;->b:Lcom/google/googlenav/ui/view/J;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/c;->b(Lcom/google/googlenav/ui/view/J;)Z

    move-result v0

    return v0
.end method
