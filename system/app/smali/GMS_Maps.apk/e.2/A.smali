.class public abstract Le/A;
.super Ljava/lang/Object;


# instance fields
.field private final a:LW/d;


# direct methods
.method protected constructor <init>(LW/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/A;->a:LW/d;

    return-void
.end method


# virtual methods
.method public a()LW/a;
    .registers 3

    new-instance v0, LW/a;

    iget-object v1, p0, Le/A;->a:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    return-object v0
.end method

.method public abstract b(LW/a;)Ljava/lang/Object;
.end method
