.class public Lcom/estrongs/android/pop/view/he;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/view/hd;


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lcom/estrongs/android/pop/view/ff;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/ff;I)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/pop/view/he;-><init>(Lcom/estrongs/android/pop/view/ff;II)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/view/ff;II)V
    .registers 5

    iput-object p1, p0, Lcom/estrongs/android/pop/view/he;->c:Lcom/estrongs/android/pop/view/ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/view/he;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/view/he;->b:I

    iput p2, p0, Lcom/estrongs/android/pop/view/he;->a:I

    iput p3, p0, Lcom/estrongs/android/pop/view/he;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Lcom/estrongs/android/pop/view/he;->a:I

    if-nez v1, :cond_14

    iget v1, p0, Lcom/estrongs/android/pop/view/he;->b:I

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/estrongs/android/pop/view/he;->b:I

    iget-object v2, p0, Lcom/estrongs/android/pop/view/he;->c:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v2, p1}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;Landroid/content/pm/ApplicationInfo;)I

    move-result v2

    if-ne v1, v2, :cond_2c

    :cond_13
    :goto_13
    return v0

    :cond_14
    iget v1, p0, Lcom/estrongs/android/pop/view/he;->a:I

    if-ne v1, v0, :cond_2e

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_2e

    iget v1, p0, Lcom/estrongs/android/pop/view/he;->b:I

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/estrongs/android/pop/view/he;->b:I

    iget-object v2, p0, Lcom/estrongs/android/pop/view/he;->c:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v2, p1}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;Landroid/content/pm/ApplicationInfo;)I

    move-result v2

    if-eq v1, v2, :cond_13

    :cond_2c
    const/4 v0, 0x0

    goto :goto_13

    :cond_2e
    iget v1, p0, Lcom/estrongs/android/pop/view/he;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2c

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_3f

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2c

    :cond_3f
    iget v1, p0, Lcom/estrongs/android/pop/view/he;->b:I

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/estrongs/android/pop/view/he;->b:I

    iget-object v2, p0, Lcom/estrongs/android/pop/view/he;->c:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v2, p1}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;Landroid/content/pm/ApplicationInfo;)I

    move-result v2

    if-ne v1, v2, :cond_2c

    goto :goto_13
.end method
