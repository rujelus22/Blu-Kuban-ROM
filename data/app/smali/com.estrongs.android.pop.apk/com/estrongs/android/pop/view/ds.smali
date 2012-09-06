.class Lcom/estrongs/android/pop/view/ds;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private final synthetic b:J


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;J)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ds;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-wide p2, p0, Lcom/estrongs/android/pop/view/ds;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ds;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-wide v1, p0, Lcom/estrongs/android/pop/view/ds;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(J)V

    return-void
.end method
