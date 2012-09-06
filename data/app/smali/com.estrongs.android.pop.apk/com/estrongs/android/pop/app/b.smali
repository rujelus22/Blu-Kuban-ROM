.class Lcom/estrongs/android/pop/app/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/e;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b;->a:Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b;->a:Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->a(Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b;->a:Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->a(Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b;->a:Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;

    const v1, 0x7f070046

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1f
    return-void
.end method
