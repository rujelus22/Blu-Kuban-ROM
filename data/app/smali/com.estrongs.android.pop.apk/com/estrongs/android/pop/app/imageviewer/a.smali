.class Lcom/estrongs/android/pop/app/imageviewer/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

.field public b:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;->ALLOW:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/a;->a:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/a;)V
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/a;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/a;->a:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    sget-object v1, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;->CANCEL:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    if-ne v0, v1, :cond_24

    const-string v0, "Cancel"

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "thread state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/a;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/a;->a:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    sget-object v1, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;->ALLOW:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    if-ne v0, v1, :cond_2d

    const-string v0, "Allow"

    goto :goto_8

    :cond_2d
    const-string v0, "?"

    goto :goto_8
.end method
