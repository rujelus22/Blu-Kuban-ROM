.class LCh;
.super Ljava/lang/Object;
.source "DynamicLayout.java"

# interfaces
.implements LCC;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "LCf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LCf;)V
    .registers 3
    .parameter

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LCh;->a:Ljava/lang/ref/WeakReference;

    .line 438
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 442
    iget-object v0, p0, LCh;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCf;

    .line 444
    if-eqz v0, :cond_e

    .line 445
    invoke-static {v0, p1, p2, p3, p4}, LCf;->a(LCf;Ljava/lang/CharSequence;III)V

    .line 448
    :cond_d
    :goto_d
    return-void

    .line 446
    :cond_e
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_d

    .line 447
    check-cast p1, Landroid/text/Spannable;

    invoke-interface {p1, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_d
.end method
