.class Lah/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lah/p;

.field final synthetic b:Lah/t;


# direct methods
.method constructor <init>(Lah/t;Lah/p;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lah/u;->b:Lah/t;

    iput-object p2, p0, Lah/u;->a:Lah/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lah/u;->a:Lah/p;

    invoke-interface {v0}, Lah/p;->P_()V

    .line 193
    return-void
.end method
