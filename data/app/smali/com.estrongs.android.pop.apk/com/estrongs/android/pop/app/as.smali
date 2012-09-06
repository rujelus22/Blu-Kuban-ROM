.class Lcom/estrongs/android/pop/app/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ar;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ar;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/as;->a:Lcom/estrongs/android/pop/app/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/as;->a:Lcom/estrongs/android/pop/app/ar;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ar;->a(Lcom/estrongs/android/pop/app/ar;)Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/app/as;->a(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
