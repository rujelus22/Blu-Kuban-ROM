.class Lcom/estrongs/android/pop/app/cx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopNoteEditor;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopNoteEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cx;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cx;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->e(Lcom/estrongs/android/pop/app/PopNoteEditor;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cx;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->f(Lcom/estrongs/android/pop/app/PopNoteEditor;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cx;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->finish()V

    return-void
.end method
