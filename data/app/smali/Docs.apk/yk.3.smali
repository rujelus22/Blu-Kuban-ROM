.class Lyk;
.super Landroid/text/Editable$Factory;
.source "RedrawManager.java"


# instance fields
.field final synthetic a:Lyj;

.field private a:Z


# direct methods
.method constructor <init>(Lyj;)V
    .registers 3
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lyk;->a:Lyj;

    invoke-direct {p0}, Landroid/text/Editable$Factory;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyk;->a:Z

    return-void
.end method


# virtual methods
.method public newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 141
    if-eqz p1, :cond_2d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 142
    const-string v0, "RedrawManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New editable called with \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 145
    :cond_2d
    iget-boolean v0, p0, Lyk;->a:Z

    if-nez v0, :cond_3e

    move v0, v1

    :goto_32
    invoke-static {v0}, LafQ;->b(Z)V

    .line 146
    iput-boolean v1, p0, Lyk;->a:Z

    .line 147
    iget-object v0, p0, Lyk;->a:Lyj;

    invoke-static {v0}, Lyj;->a(Lyj;)LBQ;

    move-result-object v0

    return-object v0

    .line 145
    :cond_3e
    const/4 v0, 0x0

    goto :goto_32
.end method
