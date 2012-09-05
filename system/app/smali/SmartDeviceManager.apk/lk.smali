.class public final Llk;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final b:Lln$b;

.field final c:Lln$a;

.field final d:Lln$c;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lln$b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lln$b;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Llk;->b:Lln$b;

    .line 29
    new-instance v0, Lln$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lln$a;-><init>(Lnd;)V

    iput-object v0, p0, Llk;->c:Lln$a;

    .line 31
    new-instance v0, Lln$c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lln$c;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Llk;->d:Lln$c;

    .line 35
    iput-object p1, p0, Llk;->a:Ljava/util/HashMap;

    .line 36
    return-void
.end method
