.class public abstract Liy;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liy$c;,
        Liy$a;,
        Liy$b;,
        Liy$e;,
        Liy$d;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lnd;

.field protected c:Lhf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lht;

.field protected e:Ljava/lang/Object;

.field protected f:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lnd;Lht;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    .line 65
    :cond_b
    const-string v0, ""

    iput-object v0, p0, Liy;->a:Ljava/lang/String;

    .line 69
    :goto_f
    iput-object p2, p0, Liy;->b:Lnd;

    .line 70
    iput-object p3, p0, Liy;->d:Lht;

    .line 71
    return-void

    .line 67
    :cond_14
    sget-object v0, Lni;->a:Lni;

    invoke-virtual {v0, p1}, Lni;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liy;->a:Ljava/lang/String;

    goto :goto_f
.end method

.method protected static a(Ljava/lang/Exception;)Ljava/io/IOException;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 185
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 187
    :cond_7
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_e

    .line 188
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :cond_e
    move-object v0, p0

    .line 192
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 193
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_f

    .line 195
    :cond_1a
    new-instance v1, Lhg;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lhg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public final a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 143
    sget-object v1, Lfg;->VALUE_NULL:Lfg;

    if-ne v0, v1, :cond_b

    .line 144
    iget-object v0, p0, Liy;->e:Ljava/lang/Object;

    .line 149
    :goto_a
    return-object v0

    .line 146
    :cond_b
    iget-object v0, p0, Liy;->d:Lht;

    if-eqz v0, :cond_18

    .line 147
    iget-object v0, p0, Liy;->c:Lhf;

    iget-object v1, p0, Liy;->d:Lht;

    invoke-virtual {v0, p1, p2, v1}, Lhf;->a(Lfd;Lhc;Lht;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    .line 149
    :cond_18
    iget-object v0, p0, Liy;->c:Lhf;

    invoke-virtual {v0, p1, p2}, Lhf;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method public abstract a(Lfd;Lhc;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation
.end method

.method public final a(Lhf;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Liy;->c:Lhf;

    if-eqz v0, :cond_37

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already had assigned deserializer for property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Liy;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Liy;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_37
    iput-object p1, p0, Liy;->c:Lhf;

    .line 79
    iget-object v0, p0, Liy;->c:Lhf;

    invoke-virtual {v0}, Lhf;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Liy;->e:Ljava/lang/Object;

    .line 80
    return-void
.end method

.method protected final a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_57

    .line 166
    if-nez p2, :cond_48

    const-string v0, "[NULL]"

    .line 167
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problem deserializing property \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Liy;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    const-string v2, "\' (expected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Liy;->b:Lnd;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    const-string v2, "; actual type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_51

    .line 172
    const-string v2, ", problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :goto_3e
    new-instance v0, Lhg;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lhg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 166
    :cond_48
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 174
    :cond_51
    const-string v0, " (no error message provided)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 178
    :cond_57
    invoke-static {p1}, Liy;->a(Ljava/lang/Exception;)Ljava/io/IOException;

    .line 179
    return-void
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Liy;->f:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Liy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lnd;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Liy;->b:Lnd;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Liy;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Liy;->c:Lhf;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public f()I
    .registers 2

    .prologue
    .line 109
    const/4 v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Liy;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
