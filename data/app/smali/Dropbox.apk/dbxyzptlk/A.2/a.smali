.class public final Ldbxyzptlk/A/a;
.super Ljava/io/Writer;
.source "panda.py"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Ldbxyzptlk/A/a;->a:Ljava/lang/StringBuilder;

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Ldbxyzptlk/A/a;->a:Ljava/lang/StringBuilder;

    .line 52
    return-void
.end method


# virtual methods
.method public final append(C)Ljava/io/Writer;
    .registers 3
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Ldbxyzptlk/A/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 3
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Ldbxyzptlk/A/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 84
    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Ldbxyzptlk/A/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 98
    return-object p0
.end method

.method public final bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Ldbxyzptlk/A/a;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Ldbxyzptlk/A/a;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Ldbxyzptlk/A/a;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .registers 1

    .prologue
    .line 106
    return-void
.end method

.method public final flush()V
    .registers 1

    .prologue
    .line 113
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Ldbxyzptlk/A/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 123
    if-eqz p1, :cond_7

    .line 124
    iget-object v0, p0, Ldbxyzptlk/A/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_7
    return-void
.end method

.method public final write([CII)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    if-eqz p1, :cond_7

    .line 138
    iget-object v0, p0, Ldbxyzptlk/A/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 140
    :cond_7
    return-void
.end method
