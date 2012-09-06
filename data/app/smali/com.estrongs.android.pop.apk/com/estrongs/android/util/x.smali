.class Lcom/estrongs/android/util/x;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/util/v;


# direct methods
.method constructor <init>(Lcom/estrongs/android/util/v;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/util/x;->a:Lcom/estrongs/android/util/v;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/util/x;->a:Lcom/estrongs/android/util/v;

    invoke-static {v0}, Lcom/estrongs/android/util/v;->a(Lcom/estrongs/android/util/v;)V

    return-void
.end method
