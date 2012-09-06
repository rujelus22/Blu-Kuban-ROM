.class Lcom/estrongs/android/pop/app/cv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopNoteEditor;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopNoteEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cv;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cv;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->d(Lcom/estrongs/android/pop/app/PopNoteEditor;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cv;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->finish()V

    :cond_d
    return-void
.end method
