.class Lcom/estrongs/android/pop/app/imageviewer/gallery/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/estrongs/android/pop/app/imageviewer/gallery/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/gallery/c;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/c;I)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/c;

    iput p2, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)I
    .registers 6

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/c;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/c;)Ljava/text/Collator;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_17
    return v0

    :cond_18
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/c;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/c;)Ljava/text/Collator;

    move-result-object v0

    invoke-interface {p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_17
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    check-cast p2, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)I

    move-result v0

    return v0
.end method
