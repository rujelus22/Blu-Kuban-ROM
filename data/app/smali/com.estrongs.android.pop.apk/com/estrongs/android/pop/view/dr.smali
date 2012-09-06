.class Lcom/estrongs/android/pop/view/dr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private final synthetic b:J

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;JLjava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    iput-object p1, p0, Lcom/estrongs/android/pop/view/dr;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-wide p2, p0, Lcom/estrongs/android/pop/view/dr;->b:J

    iput-object p4, p0, Lcom/estrongs/android/pop/view/dr;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/estrongs/android/pop/view/dr;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/estrongs/android/pop/view/dr;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dr;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-wide v1, p0, Lcom/estrongs/android/pop/view/dr;->b:J

    iget-object v3, p0, Lcom/estrongs/android/pop/view/dr;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/dr;->d:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/estrongs/android/pop/view/dr;->e:Z

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;JLjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method
