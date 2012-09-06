.class LBd;
.super Ljava/lang/Object;
.source "ImageStyle.java"

# interfaces
.implements LAa;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/text/Spannable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/text/Spannable;)V
    .registers 4
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LBd;->b:Ljava/lang/ref/WeakReference;

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LBd;->a:Ljava/lang/ref/WeakReference;

    .line 64
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LBd;->b:Ljava/lang/ref/WeakReference;

    .line 68
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 72
    iget-object v0, p0, LBd;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 73
    iget-object v1, p0, LBd;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 74
    if-eqz v0, :cond_13

    if-nez v1, :cond_14

    .line 83
    :cond_13
    :goto_13
    return-void

    .line 77
    :cond_14
    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 78
    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 79
    if-eq v2, v4, :cond_13

    if-eq v3, v4, :cond_13

    .line 81
    const/16 v4, 0x21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_13
.end method
