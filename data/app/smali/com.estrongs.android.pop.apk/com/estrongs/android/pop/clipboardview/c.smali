.class Lcom/estrongs/android/pop/clipboardview/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;

.field private final synthetic b:I

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;IZ)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/clipboardview/c;->a:Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;

    iput p2, p0, Lcom/estrongs/android/pop/clipboardview/c;->b:I

    iput-boolean p3, p0, Lcom/estrongs/android/pop/clipboardview/c;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/c;->a:Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;

    iget v1, p0, Lcom/estrongs/android/pop/clipboardview/c;->b:I

    iget-boolean v2, p0, Lcom/estrongs/android/pop/clipboardview/c;->c:Z

    invoke-static {v0, p2, v1, v2}, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->a(Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;IIZ)V

    return-void
.end method
