.class Lah/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lah/a;


# direct methods
.method constructor <init>(Lah/a;)V
    .registers 2
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lah/e;->a:Lah/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 329
    iget-object v0, p0, Lah/e;->a:Lah/a;

    iget-object v1, p0, Lah/e;->a:Lah/a;

    invoke-static {v1}, Lah/a;->c(Lah/a;)Ljava/util/Vector;

    move-result-object v1

    invoke-static {v0, v1}, Lah/a;->b(Lah/a;Ljava/util/Vector;)V

    .line 330
    return-void
.end method
