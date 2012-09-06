.class Lcom/estrongs/android/pop/d/r;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Map;

.field public c:Z

.field public d:Z

.field public e:I

.field public f:Ljava/util/Map;

.field public g:Z

.field public h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/estrongs/android/pop/d/e;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field final synthetic j:Lcom/estrongs/android/pop/d/q;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/d/q;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/d/r;->j:Lcom/estrongs/android/pop/d/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/d/r;->i:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/d/q;Lcom/estrongs/android/pop/d/r;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/d/r;-><init>(Lcom/estrongs/android/pop/d/q;)V

    return-void
.end method
