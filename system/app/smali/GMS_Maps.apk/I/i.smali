.class Li/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;

.field b:Ljava/util/LinkedList;

.field c:Li/k;

.field final d:Lt/f;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Li/i;->a:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Li/i;->b:Ljava/util/LinkedList;

    .line 80
    new-instance v0, Li/j;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Li/j;-><init>(Li/i;I)V

    iput-object v0, p0, Li/i;->d:Lt/f;

    return-void
.end method
