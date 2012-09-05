.class public final Lja$i;
.super Ljf;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljf",
        "<",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 624
    const-class v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Ljf;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private b(Lfd;Lhc;)Ljava/lang/Class;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd;",
            "Lhc;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 630
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 632
    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    if-ne v0, v1, :cond_19

    .line 634
    :try_start_8
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    return-object v0

    .line 635
    :catch_11
    move-exception v0

    .line 636
    iget-object v1, p0, Lja$i;->m:Ljava/lang/Class;

    invoke-virtual {p2, v1, v0}, Lhc;->a(Ljava/lang/Class;Ljava/lang/Exception;)Lhg;

    move-result-object v0

    throw v0

    .line 639
    :cond_19
    iget-object v0, p0, Lja$i;->m:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final bridge synthetic a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 620
    invoke-direct {p0, p1, p2}, Lja$i;->b(Lfd;Lhc;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
