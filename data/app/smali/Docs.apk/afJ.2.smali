.class LafJ;
.super LafI;
.source "Joiner.java"


# instance fields
.field final synthetic a:LafI;

.field final synthetic a:Ljava/lang/String;


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 265
    if-nez p1, :cond_5

    iget-object v0, p0, LafJ;->a:Ljava/lang/String;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, LafJ;->a:LafI;

    invoke-virtual {v0, p1}, LafI;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4
.end method
