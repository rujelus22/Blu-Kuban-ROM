.class Lcom/estrongs/android/widget/z;
.super Lcom/estrongs/android/widget/ap;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/w;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/w;Landroid/content/Context;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/widget/z;->a:Lcom/estrongs/android/widget/w;

    iput-object p3, p0, Lcom/estrongs/android/widget/z;->b:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/estrongs/android/widget/ap;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const-string v0, "icon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/estrongs/android/widget/z;->d:[Ljava/io/File;

    iget v1, p0, Lcom/estrongs/android/widget/z;->c:I

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/estrongs/android/widget/MountPointFile;

    if-eqz v0, :cond_2f

    :try_start_12
    iget-object v0, p0, Lcom/estrongs/android/widget/z;->d:[Ljava/io/File;

    iget v1, p0, Lcom/estrongs/android/widget/z;->c:I

    aget-object v0, v0, v1

    check-cast v0, Lcom/estrongs/android/widget/MountPointFile;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/MountPointFile;->getIconResId()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/widget/z;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_27} :catch_29

    move-result-object v0

    :goto_28
    return-object v0

    :catch_29
    move-exception v0

    invoke-super {p0, p1}, Lcom/estrongs/android/widget/ap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_28

    :cond_2f
    invoke-super {p0, p1}, Lcom/estrongs/android/widget/ap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_28
.end method
