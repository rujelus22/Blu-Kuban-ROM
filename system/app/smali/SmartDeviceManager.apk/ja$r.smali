.class public final Lja$r;
.super Ljf;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljf",
        "<",
        "Ljava/lang/StackTraceElement;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1140
    const-class v0, Ljava/lang/StackTraceElement;

    invoke-direct {p0, v0}, Ljf;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 1137
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    sget-object v1, Lfg;->START_OBJECT:Lfg;

    if-ne v0, v1, :cond_95

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const/4 v3, -0x1

    move v7, v3

    move-object v3, v0

    move v0, v7

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    :cond_15
    :goto_15
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v4

    sget-object v5, Lfg;->FIELD_NAME:Lfg;

    if-ne v4, v5, :cond_21

    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v4

    :cond_21
    sget-object v5, Lfg;->END_OBJECT:Lfg;

    if-eq v4, v5, :cond_8f

    invoke-virtual {p1}, Lfd;->f()Ljava/lang/String;

    move-result-object v5

    const-string v6, "className"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    :cond_36
    const-string v6, "fileName"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_43
    const-string v6, "lineNumber"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_74

    invoke-virtual {v4}, Lfg;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p1}, Lfd;->q()I

    move-result v0

    goto :goto_15

    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-numeric token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") for property \'lineNumber\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lhg;->a(Lfd;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    :cond_74
    const-string v4, "methodName"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    :cond_81
    const-string v4, "nativeMethod"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, p0, Lja$r;->m:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v4, v5}, Lja$r;->a(Lfd;Lhc;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_15

    :cond_8f
    new-instance v4, Ljava/lang/StackTraceElement;

    invoke-direct {v4, v3, v2, v1, v0}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v4

    :cond_95
    iget-object v0, p0, Lja$r;->m:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0
.end method
