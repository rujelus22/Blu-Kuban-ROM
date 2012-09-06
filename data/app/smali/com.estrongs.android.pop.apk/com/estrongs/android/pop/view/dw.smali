.class Lcom/estrongs/android/pop/view/dw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/s;


# instance fields
.field a:I

.field final synthetic b:Lcom/estrongs/android/pop/view/dv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/dv;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/dw;->b:Lcom/estrongs/android/pop/view/dv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/view/dw;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .registers 7

    iget v0, p0, Lcom/estrongs/android/pop/view/dw;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/view/dw;->a:I

    iget v0, p0, Lcom/estrongs/android/pop/view/dw;->a:I

    rem-int/lit8 v0, v0, 0x32

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dw;->b:Lcom/estrongs/android/pop/view/dv;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/pop/view/dw;->b:Lcom/estrongs/android/pop/view/dv;

    iget-object v4, v4, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/util/r;

    invoke-virtual {v4}, Lcom/estrongs/android/util/r;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/estrongs/android/pop/view/dw;->b:Lcom/estrongs/android/pop/view/dv;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/util/r;

    invoke-virtual {v3}, Lcom/estrongs/android/util/r;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/dv;->a(Lcom/estrongs/android/pop/view/dv;[Ljava/lang/Object;)V

    :cond_3b
    return-void
.end method
