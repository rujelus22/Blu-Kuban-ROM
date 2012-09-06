.class public LAv;
.super Ljava/lang/Object;
.source "EditTextLayoutImpl.java"

# interfaces
.implements LAu;


# instance fields
.field private final a:Lcom/google/android/apps/docs/editors/text/EditText;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/text/EditText;)V
    .registers 3
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/text/EditText;

    iput-object v0, p0, LAv;->a:Lcom/google/android/apps/docs/editors/text/EditText;

    .line 20
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, LAv;->a:Lcom/google/android/apps/docs/editors/text/EditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/EditText;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public a(I)I
    .registers 4
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, LAv;->a:Lcom/google/android/apps/docs/editors/text/EditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/EditText;->a()LCl;

    move-result-object v0

    invoke-virtual {v0, p1}, LCl;->a(I)F

    move-result v0

    iget-object v1, p0, LAv;->a:Lcom/google/android/apps/docs/editors/text/EditText;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/text/EditText;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, LAv;->a:Lcom/google/android/apps/docs/editors/text/EditText;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/text/EditText;->e()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, LAv;->a:Lcom/google/android/apps/docs/editors/text/EditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/EditText;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public b(I)I
    .registers 4
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, LAv;->a:Lcom/google/android/apps/docs/editors/text/EditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/EditText;->a()LCl;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, LCl;->h(I)I

    move-result v1

    invoke-virtual {v0, v1}, LCl;->a(I)I

    move-result v0

    iget-object v1, p0, LAv;->a:Lcom/google/android/apps/docs/editors/text/EditText;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/text/EditText;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, LAv;->a:Lcom/google/android/apps/docs/editors/text/EditText;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/text/EditText;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public c()I
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, LAv;->a:Lcom/google/android/apps/docs/editors/text/EditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/EditText;->a()LCl;

    move-result-object v0

    iget-object v1, p0, LAv;->a:Lcom/google/android/apps/docs/editors/text/EditText;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/text/EditText;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, LCl;->g(I)I

    move-result v0

    return v0
.end method

.method public c(I)I
    .registers 4
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, LAv;->a:Lcom/google/android/apps/docs/editors/text/EditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/EditText;->a()LCl;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, LCl;->h(I)I

    move-result v1

    invoke-virtual {v0, v1}, LCl;->k(I)I

    move-result v0

    iget-object v1, p0, LAv;->a:Lcom/google/android/apps/docs/editors/text/EditText;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/text/EditText;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, LAv;->a:Lcom/google/android/apps/docs/editors/text/EditText;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/text/EditText;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public d()I
    .registers 4

    .prologue
    .line 64
    iget-object v0, p0, LAv;->a:Lcom/google/android/apps/docs/editors/text/EditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/EditText;->a()LCl;

    move-result-object v0

    iget-object v1, p0, LAv;->a:Lcom/google/android/apps/docs/editors/text/EditText;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/text/EditText;->getScrollY()I

    move-result v1

    iget-object v2, p0, LAv;->a:Lcom/google/android/apps/docs/editors/text/EditText;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/editors/text/EditText;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, LAv;->a:Lcom/google/android/apps/docs/editors/text/EditText;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/editors/text/EditText;->d()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, LAv;->a:Lcom/google/android/apps/docs/editors/text/EditText;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/editors/text/EditText;->c()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, LCl;->g(I)I

    move-result v0

    return v0
.end method

.method public d(I)I
    .registers 3
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, LAv;->a:Lcom/google/android/apps/docs/editors/text/EditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/EditText;->a()LCl;

    move-result-object v0

    invoke-virtual {v0, p1}, LCl;->h(I)I

    move-result v0

    return v0
.end method
