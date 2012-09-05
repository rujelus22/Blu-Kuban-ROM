.class final Lie$d;
.super Lie$a;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lie$a",
        "<[C>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 137
    const-class v0, [C

    invoke-direct {p0, v0}, Lie$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 133
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v1

    sget-object v2, Lfg;->VALUE_STRING:Lfg;

    if-ne v1, v2, :cond_1c

    invoke-virtual {p1}, Lfd;->j()[C

    move-result-object v1

    invoke-virtual {p1}, Lfd;->l()I

    move-result v2

    invoke-virtual {p1}, Lfd;->k()I

    move-result v3

    new-array v4, v3, [C

    invoke-static {v1, v2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v4

    :goto_1b
    return-object v1

    :cond_1c
    sget-object v2, Lfg;->START_ARRAY:Lfg;

    if-ne v1, v2, :cond_78

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_27
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v2

    sget-object v3, Lfg;->END_ARRAY:Lfg;

    if-eq v2, v3, :cond_6f

    sget-object v3, Lfg;->VALUE_STRING:Lfg;

    if-eq v2, v3, :cond_3a

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v1

    throw v1

    :cond_3a
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_67

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not convert a JSON String of length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into a char element of char array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lhg;->a(Lfd;Ljava/lang/String;)Lhg;

    move-result-object v1

    throw v1

    :cond_67
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_6f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_1b

    :cond_78
    sget-object v2, Lfg;->VALUE_EMBEDDED_OBJECT:Lfg;

    if-ne v1, v2, :cond_99

    invoke-virtual {p1}, Lfd;->w()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_84

    const/4 v1, 0x0

    goto :goto_1b

    :cond_84
    instance-of v2, v1, [C

    if-eqz v2, :cond_8e

    move-object v0, v1

    check-cast v0, [C

    move-object p0, v0

    move-object v1, p0

    goto :goto_1b

    :cond_8e
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_99

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_1b

    :cond_99
    iget-object v1, p0, Lie$d;->m:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v1

    throw v1
.end method
