.class LBK;
.super Ljava/lang/Object;
.source "OffsetTreeNode.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TNodeType;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:LBJ;

.field final synthetic b:I


# direct methods
.method constructor <init>(LBJ;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, LBK;->a:LBJ;

    iput p2, p0, LBK;->a:I

    iput p3, p0, LBK;->b:I

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
            "<TNodeType;>;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, LBL;

    invoke-direct {v0, p0}, LBL;-><init>(LBK;)V

    return-object v0
.end method
