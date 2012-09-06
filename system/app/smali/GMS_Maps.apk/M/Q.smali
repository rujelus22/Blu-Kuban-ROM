.class Lm/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lo/x;

.field final synthetic b:Lm/o;


# direct methods
.method constructor <init>(Lm/o;Lo/x;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 663
    iput-object p1, p0, Lm/q;->b:Lm/o;

    iput-object p2, p0, Lm/q;->a:Lo/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 666
    iget-object v0, p0, Lm/q;->b:Lm/o;

    invoke-static {v0}, Lm/o;->b(Lm/o;)Lm/d;

    move-result-object v0

    iget-object v1, p0, Lm/q;->a:Lo/x;

    invoke-interface {v0, v1}, Lm/d;->a(Lo/x;)V

    .line 667
    return-void
.end method
