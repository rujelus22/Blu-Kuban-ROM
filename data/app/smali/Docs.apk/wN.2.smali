.class LwN;
.super Ljava/lang/Object;
.source "DocumentWalker.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "LFt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:Ljava/util/Iterator;

.field final synthetic a:LwM;

.field final synthetic b:I


# direct methods
.method constructor <init>(LwM;ILjava/util/Iterator;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, LwN;->a:LwM;

    iput p2, p0, LwN;->a:I

    iput-object p3, p0, LwN;->a:Ljava/util/Iterator;

    iput p4, p0, LwN;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "LFt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, LwO;

    invoke-direct {v0, p0}, LwO;-><init>(LwN;)V

    return-object v0
.end method
