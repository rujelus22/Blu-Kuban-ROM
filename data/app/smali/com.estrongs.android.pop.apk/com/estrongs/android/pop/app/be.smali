.class Lcom/estrongs/android/pop/app/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/CompressActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/CompressActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/be;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 10

    const-string v0, ""

    :goto_2
    if-lt p2, p3, :cond_5

    return-object v0

    :cond_5
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    int-to-short v1, v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_24

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_24
    add-int/lit8 p2, p2, 0x1

    goto :goto_2
.end method
