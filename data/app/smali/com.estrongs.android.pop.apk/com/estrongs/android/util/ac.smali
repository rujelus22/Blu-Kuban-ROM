.class Lcom/estrongs/android/util/ac;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/util/ab;

.field private final synthetic b:Ljava/util/List;

.field private final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/estrongs/android/util/ab;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/util/ac;->a:Lcom/estrongs/android/util/ab;

    iput-object p2, p0, Lcom/estrongs/android/util/ac;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/estrongs/android/util/ac;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/util/ac;->a:Lcom/estrongs/android/util/ab;

    iget-object v1, p0, Lcom/estrongs/android/util/ac;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/util/ac;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/ab;->a(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ab;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/util/ac;->a:Lcom/estrongs/android/util/ab;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/util/ab;->a(Lcom/estrongs/android/util/ab;Z)V

    return-void
.end method
