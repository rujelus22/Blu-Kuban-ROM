.class Lcom/estrongs/android/pop/app/cg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cf;

.field private final synthetic b:J


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cf;J)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cg;->a:Lcom/estrongs/android/pop/app/cf;

    iput-wide p2, p0, Lcom/estrongs/android/pop/app/cg;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cg;->a:Lcom/estrongs/android/pop/app/cf;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cf;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-wide v1, p0, Lcom/estrongs/android/pop/app/cg;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(J)V

    return-void
.end method
