.class Lcom/estrongs/android/pop/app/cu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/e;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopNoteEditor;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopNoteEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cu;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cu;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->b(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cu;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {}, Lcom/estrongs/android/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/PopNoteEditor;->c(Lcom/estrongs/android/pop/app/PopNoteEditor;Ljava/lang/String;)V

    :cond_12
    const-string v1, "AUTO"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cu;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Landroid/os/Bundle;Z)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cu;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->b(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    :goto_2d
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cu;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->b(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cu;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v1, p1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->c(Lcom/estrongs/android/pop/app/PopNoteEditor;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cu;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cu;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopNoteEditor;->b(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/c;->n(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cu;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Landroid/os/Bundle;Z)V

    goto :goto_20

    :cond_54
    move-object p1, v0

    goto :goto_2d
.end method
