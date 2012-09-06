.class Lcom/estrongs/android/pop/view/ee;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ee;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/ee;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ee;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ee;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    return-void
.end method
