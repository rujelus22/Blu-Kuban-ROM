.class Lcom/estrongs/android/pop/app/ch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cf;

.field private final synthetic b:J

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cf;JLjava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ch;->a:Lcom/estrongs/android/pop/app/cf;

    iput-wide p2, p0, Lcom/estrongs/android/pop/app/ch;->b:J

    iput-object p4, p0, Lcom/estrongs/android/pop/app/ch;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/estrongs/android/pop/app/ch;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/estrongs/android/pop/app/ch;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ch;->a:Lcom/estrongs/android/pop/app/cf;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cf;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-wide v1, p0, Lcom/estrongs/android/pop/app/ch;->b:J

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ch;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/ch;->d:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/estrongs/android/pop/app/ch;->e:Z

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(JLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
