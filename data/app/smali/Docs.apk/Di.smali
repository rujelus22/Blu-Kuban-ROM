.class public LDi;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements LCZ;


# instance fields
.field private a:LDf;

.field final synthetic a:Lcom/google/android/apps/docs/editors/text/TextView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;)V
    .registers 2
    .parameter

    .prologue
    .line 8368
    iput-object p1, p0, LDi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;LCR;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 8368
    invoke-direct {p0, p1}, LDi;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    return-void
.end method

.method private a()LDc;
    .registers 4

    .prologue
    .line 8402
    iget-object v0, p0, LDi;->a:LDf;

    if-nez v0, :cond_e

    .line 8403
    new-instance v0, LDf;

    iget-object v1, p0, LDi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LDf;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;LCR;)V

    iput-object v0, p0, LDi;->a:LDf;

    .line 8405
    :cond_e
    iget-object v0, p0, LDi;->a:LDf;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 8375
    invoke-direct {p0}, LDi;->a()LDc;

    move-result-object v0

    check-cast v0, LDf;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, LDf;->c(I)V

    .line 8376
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 8391
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 8379
    invoke-direct {p0}, LDi;->a()LDc;

    move-result-object v0

    check-cast v0, LDf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LDf;->c(I)V

    .line 8380
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 8384
    iget-object v0, p0, LDi;->a:LDf;

    if-eqz v0, :cond_9

    .line 8385
    iget-object v0, p0, LDi;->a:LDf;

    invoke-virtual {v0}, LDf;->d()V

    .line 8387
    :cond_9
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 8410
    iget-object v0, p0, LDi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 8411
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 8413
    iget-object v0, p0, LDi;->a:LDf;

    if-eqz v0, :cond_12

    iget-object v0, p0, LDi;->a:LDf;

    invoke-virtual {v0}, LDf;->f()V

    .line 8414
    :cond_12
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .registers 2
    .parameter

    .prologue
    .line 8396
    if-nez p1, :cond_5

    .line 8397
    invoke-virtual {p0}, LDi;->c()V

    .line 8399
    :cond_5
    return-void
.end method
