.class public Lr/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/aF;


# instance fields
.field private final a:Lr/aF;

.field private final b:Lr/aF;


# direct methods
.method public constructor <init>(Lr/aF;Lr/aF;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lr/b;->a:Lr/aF;

    .line 20
    iput-object p2, p0, Lr/b;->b:Lr/aF;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Ln/am;ILn/al;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lr/b;->a:Lr/aF;

    if-eqz v0, :cond_9

    .line 26
    iget-object v0, p0, Lr/b;->a:Lr/aF;

    invoke-interface {v0, p1, p2, p3}, Lr/aF;->a(Ln/am;ILn/al;)V

    .line 28
    :cond_9
    iget-object v0, p0, Lr/b;->b:Lr/aF;

    if-eqz v0, :cond_12

    .line 29
    iget-object v0, p0, Lr/b;->b:Lr/aF;

    invoke-interface {v0, p1, p2, p3}, Lr/aF;->a(Ln/am;ILn/al;)V

    .line 31
    :cond_12
    return-void
.end method
