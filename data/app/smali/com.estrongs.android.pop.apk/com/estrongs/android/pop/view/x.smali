.class Lcom/estrongs/android/pop/view/x;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/x;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/x;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    const-string v1, "http://graph.kanbox.com/graph_auth"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;Ljava/lang/String;)V

    return-void
.end method