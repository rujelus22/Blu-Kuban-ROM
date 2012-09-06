.class Lcom/google/android/apps/circles/people/b;
.super Lcom/google/android/apps/circles/people/c;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/apps/circles/people/MultiLineLayout;

.field private e:I

.field private f:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/circles/people/MultiLineLayout;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 38
    iput-object p1, p0, Lcom/google/android/apps/circles/people/b;->c:Lcom/google/android/apps/circles/people/MultiLineLayout;

    iput p2, p0, Lcom/google/android/apps/circles/people/b;->a:I

    iput p3, p0, Lcom/google/android/apps/circles/people/b;->b:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/circles/people/c;-><init>(Lcom/google/android/apps/circles/people/MultiLineLayout;Lcom/google/android/apps/circles/people/a;)V

    .line 39
    iput v1, p0, Lcom/google/android/apps/circles/people/b;->e:I

    .line 40
    iput v1, p0, Lcom/google/android/apps/circles/people/b;->f:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/google/android/apps/circles/people/c;->a(I)V

    .line 58
    iget v0, p0, Lcom/google/android/apps/circles/people/b;->e:I

    iget-object v1, p0, Lcom/google/android/apps/circles/people/b;->c:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/circles/people/b;->e:I

    .line 59
    iget v0, p0, Lcom/google/android/apps/circles/people/b;->f:I

    iget-object v1, p0, Lcom/google/android/apps/circles/people/b;->c:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/circles/people/b;->f:I

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/circles/people/b;->c:Lcom/google/android/apps/circles/people/MultiLineLayout;

    iget v1, p0, Lcom/google/android/apps/circles/people/b;->e:I

    iget v2, p0, Lcom/google/android/apps/circles/people/b;->a:I

    invoke-static {v1, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/circles/people/b;->f:I

    iget v3, p0, Lcom/google/android/apps/circles/people/b;->b:I

    invoke-static {v2, v3}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/circles/people/MultiLineLayout;->a(Lcom/google/android/apps/circles/people/MultiLineLayout;II)V

    .line 62
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/circles/people/b;->c:Lcom/google/android/apps/circles/people/MultiLineLayout;

    iget v1, p0, Lcom/google/android/apps/circles/people/b;->a:I

    iget v2, p0, Lcom/google/android/apps/circles/people/b;->b:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/apps/circles/people/MultiLineLayout;->a(Lcom/google/android/apps/circles/people/MultiLineLayout;Landroid/view/View;II)V

    .line 45
    return-void
.end method

.method protected a(Landroid/view/View;IIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/apps/circles/people/b;->e:I

    add-int v1, p2, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/circles/people/b;->e:I

    .line 51
    iget v0, p0, Lcom/google/android/apps/circles/people/b;->f:I

    add-int v1, p3, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/circles/people/b;->f:I

    .line 52
    return-void
.end method
