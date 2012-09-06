.class Lk/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lk/F;

.field final synthetic b:Lk/I;


# direct methods
.method constructor <init>(Lk/I;Lk/F;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lk/L;->b:Lk/I;

    iput-object p2, p0, Lk/L;->a:Lk/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lk/L;->b:Lk/I;

    iget-object v1, p0, Lk/L;->a:Lk/F;

    invoke-static {v0, v1}, Lk/I;->a(Lk/I;Lk/F;)V

    .line 73
    return-void
.end method
