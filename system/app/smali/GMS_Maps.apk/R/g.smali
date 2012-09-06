.class Lr/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/aF;


# instance fields
.field final synthetic a:Lr/f;


# direct methods
.method constructor <init>(Lr/f;)V
    .registers 2
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lr/g;->a:Lr/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln/am;ILn/al;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    if-nez p2, :cond_7

    .line 190
    iget-object v0, p0, Lr/g;->a:Lr/f;

    invoke-static {v0, p1}, Lr/f;->a(Lr/f;Ln/am;)V

    .line 192
    :cond_7
    return-void
.end method
