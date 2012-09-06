.class Lcom/estrongs/android/pop/app/da;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopNoteEditor;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopNoteEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/da;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/da;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Z)V

    return-void
.end method
