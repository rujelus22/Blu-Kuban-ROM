.class public Lcom/estrongs/android/widget/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/an;


# instance fields
.field protected c:I

.field protected d:[Ljava/io/File;

.field protected e:Lcom/estrongs/android/widget/ae;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/widget/ap;->c:I

    new-instance v0, Lcom/estrongs/android/widget/aq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/aq;-><init>(Lcom/estrongs/android/widget/ap;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ap;->e:Lcom/estrongs/android/widget/ae;

    new-instance v0, Lcom/estrongs/android/widget/ar;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/widget/ar;-><init>(Lcom/estrongs/android/widget/ap;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ap;->e:Lcom/estrongs/android/widget/ae;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    :try_start_0
    const-string v0, "icon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->e:Lcom/estrongs/android/widget/ae;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->e:Lcom/estrongs/android/widget/ae;

    iget-object v1, p0, Lcom/estrongs/android/widget/ap;->d:[Ljava/io/File;

    iget v2, p0, Lcom/estrongs/android/widget/ap;->c:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/estrongs/android/widget/ae;->a(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    const-string v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->d:[Ljava/io/File;

    iget v1, p0, Lcom/estrongs/android/widget/ap;->c:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_2c
    const-string v0, "size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->d:[Ljava/io/File;

    iget v1, p0, Lcom/estrongs/android/widget/ap;->c:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_43

    move-result-object v0

    goto :goto_18

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_47
    const-string v0, ""

    goto :goto_18
.end method

.method public a(I)Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->d:[Ljava/io/File;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a([Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/ap;->d:[Ljava/io/File;

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/widget/ap;->c:I

    return-void
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->d:[Ljava/io/File;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->d:[Ljava/io/File;

    array-length v0, v0

    goto :goto_5
.end method

.method public c(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->d:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method
