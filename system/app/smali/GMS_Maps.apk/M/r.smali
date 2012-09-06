.class Lm/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lm/o;


# direct methods
.method constructor <init>(Lm/o;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lm/r;->b:Lm/o;

    iput p2, p0, Lm/r;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 681
    iget-object v0, p0, Lm/r;->b:Lm/o;

    invoke-static {v0}, Lm/o;->b(Lm/o;)Lm/d;

    move-result-object v0

    iget v1, p0, Lm/r;->a:I

    invoke-interface {v0, v1}, Lm/d;->a(I)V

    .line 682
    return-void
.end method
