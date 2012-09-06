.class public Lcom/estrongs/android/pop/view/is;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/estrongs/android/pop/view/a/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/OpenRecomm;

.field private final b:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/OpenRecomm;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/view/is;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/is;->b:Ljava/text/Collator;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/is;->b:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/view/a/i;Lcom/estrongs/android/pop/view/a/i;)I
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/is;->b:Ljava/text/Collator;

    iget-object v1, p1, Lcom/estrongs/android/pop/view/a/i;->b:Ljava/lang/String;

    iget-object v2, p2, Lcom/estrongs/android/pop/view/a/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/estrongs/android/pop/view/a/i;

    check-cast p2, Lcom/estrongs/android/pop/view/a/i;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/view/is;->a(Lcom/estrongs/android/pop/view/a/i;Lcom/estrongs/android/pop/view/a/i;)I

    move-result v0

    return v0
.end method
