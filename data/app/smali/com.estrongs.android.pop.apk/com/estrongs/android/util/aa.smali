.class public Lcom/estrongs/android/util/aa;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/util/k;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:I

.field private d:Lcom/estrongs/android/util/aa;

.field private e:Lcom/estrongs/android/util/aa;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/util/k;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/util/aa;->d:Lcom/estrongs/android/util/aa;

    iput-object v0, p0, Lcom/estrongs/android/util/aa;->e:Lcom/estrongs/android/util/aa;

    iput-object v0, p0, Lcom/estrongs/android/util/aa;->a:Ljava/util/List;

    iput-boolean v1, p0, Lcom/estrongs/android/util/aa;->b:Z

    iput v1, p0, Lcom/estrongs/android/util/aa;->c:I

    iput-object p1, p0, Lcom/estrongs/android/util/aa;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/util/aa;)Lcom/estrongs/android/util/aa;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/util/aa;->e:Lcom/estrongs/android/util/aa;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/util/aa;Lcom/estrongs/android/util/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/util/aa;->d:Lcom/estrongs/android/util/aa;

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/util/aa;Lcom/estrongs/android/util/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/util/aa;->e:Lcom/estrongs/android/util/aa;

    return-void
.end method
