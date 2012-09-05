.class public abstract Ljd;
.super Lhk;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljd$k;,
        Ljd$j;,
        Ljd$e;,
        Ljd$f;,
        Ljd$d;,
        Ljd$h;,
        Ljd$g;,
        Ljd$c;,
        Ljd$i;,
        Ljd$b;,
        Ljd$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lhk;-><init>()V

    iput-object p1, p0, Ljd;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Ljd;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lhc;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 24
    if-nez p1, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 30
    :cond_3
    return-object v0

    .line 28
    :cond_4
    :try_start_4
    invoke-virtual {p0, p1, p2}, Ljd;->b(Ljava/lang/String;Lhc;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_13

    move-result-object v0

    .line 29
    if-nez v0, :cond_3

    .line 35
    iget-object v0, p0, Ljd;->a:Ljava/lang/Class;

    const-string v1, "not a valid representation"

    invoke-virtual {p2, v0, p1, v1}, Lhc;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 32
    :catch_13
    move-exception v0

    .line 33
    iget-object v1, p0, Ljd;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a valid representation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, p1, v0}, Lhc;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0
.end method

.method protected abstract b(Ljava/lang/String;Lhc;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
