.class Lcom/estrongs/android/pop/scanner/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/scanner/a;

.field private final synthetic b:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/scanner/a;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/scanner/b;->a:Lcom/estrongs/android/pop/scanner/a;

    iput-object p2, p0, Lcom/estrongs/android/pop/scanner/b;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/b;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(ZJ)I

    return-void
.end method
