.class Lcom/estrongs/android/util/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/util/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/util/a;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/util/c;->a:Lcom/estrongs/android/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ok clicked - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/util/c;->a:Lcom/estrongs/android/util/a;

    invoke-static {v2}, Lcom/estrongs/android/util/a;->a(Lcom/estrongs/android/util/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/util/c;->a:Lcom/estrongs/android/util/a;

    invoke-static {v0}, Lcom/estrongs/android/util/a;->b(Lcom/estrongs/android/util/a;)Lcom/estrongs/android/util/e;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/estrongs/android/util/c;->a:Lcom/estrongs/android/util/a;

    invoke-static {v0}, Lcom/estrongs/android/util/a;->b(Lcom/estrongs/android/util/a;)Lcom/estrongs/android/util/e;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/util/a;->b()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/util/c;->a:Lcom/estrongs/android/util/a;

    invoke-static {v2}, Lcom/estrongs/android/util/a;->a(Lcom/estrongs/android/util/a;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/estrongs/android/util/c;->a:Lcom/estrongs/android/util/a;

    invoke-static {v2}, Lcom/estrongs/android/util/a;->c(Lcom/estrongs/android/util/a;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/util/c;->a:Lcom/estrongs/android/util/a;

    invoke-static {v3}, Lcom/estrongs/android/util/a;->a(Lcom/estrongs/android/util/a;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
