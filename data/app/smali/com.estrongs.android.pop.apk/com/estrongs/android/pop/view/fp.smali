.class Lcom/estrongs/android/pop/view/fp;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ff;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/estrongs/android/pop/d/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/d/g;)V
    .registers 5

    iput-object p1, p0, Lcom/estrongs/android/pop/view/fp;->a:Lcom/estrongs/android/pop/view/ff;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/fp;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/fp;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/view/fp;->d:Lcom/estrongs/android/pop/d/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fp;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->m(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/d/f;

    move-result-object v0

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/view/fp;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/fp;->c:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/estrongs/android/pop/view/fp;->d:Lcom/estrongs/android/pop/d/g;

    invoke-interface/range {v0 .. v6}, Lcom/estrongs/android/pop/d/f;->a(JLjava/lang/String;Ljava/lang/String;ZLcom/estrongs/android/pop/d/g;)Ljava/util/Map;

    return-void
.end method
