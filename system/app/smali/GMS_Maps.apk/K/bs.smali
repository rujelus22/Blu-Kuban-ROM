.class public LK/bs;
.super Ljava/lang/Object;


# instance fields
.field a:LK/cd;

.field b:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LK/bt;

    invoke-direct {v0}, LK/bt;-><init>()V

    iput-object v0, p0, LK/bs;->a:LK/cd;

    return-void
.end method
