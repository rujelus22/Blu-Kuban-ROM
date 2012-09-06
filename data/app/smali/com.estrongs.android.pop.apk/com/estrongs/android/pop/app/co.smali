.class Lcom/estrongs/android/pop/app/co;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cm;

.field private final synthetic b:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cm;Ljava/lang/Exception;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/co;->a:Lcom/estrongs/android/pop/app/cm;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/co;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/co;->b:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/co;->b:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_31

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_31
    iget-object v1, p0, Lcom/estrongs/android/pop/app/co;->a:Lcom/estrongs/android/pop/app/cm;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/cm;->a(Lcom/estrongs/android/pop/app/cm;)Lcom/estrongs/android/pop/app/ck;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/ck;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/co;->a:Lcom/estrongs/android/pop/app/cm;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/cm;->a(Lcom/estrongs/android/pop/app/cm;)Lcom/estrongs/android/pop/app/ck;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/ck;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090146

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/co;->a:Lcom/estrongs/android/pop/app/cm;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/cm;->a(Lcom/estrongs/android/pop/app/cm;)Lcom/estrongs/android/pop/app/ck;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/app/ck;->b(Lcom/estrongs/android/pop/app/ck;)Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_7a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/co;->b:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method
