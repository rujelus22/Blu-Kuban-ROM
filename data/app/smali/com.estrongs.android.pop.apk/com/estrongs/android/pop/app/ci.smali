.class Lcom/estrongs/android/pop/app/ci;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cf;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cf;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ci;->a:Lcom/estrongs/android/pop/app/cf;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/ci;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->a:Lcom/estrongs/android/pop/app/cf;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cf;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ci;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V

    return-void
.end method
