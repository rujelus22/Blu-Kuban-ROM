.class LaN/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lad/e;


# instance fields
.field final synthetic a:LaN/f;


# direct methods
.method constructor <init>(LaN/f;)V
    .registers 2
    .parameter

    .prologue
    .line 935
    iput-object p1, p0, LaN/g;->a:LaN/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 938
    iget-object v0, p0, LaN/g;->a:LaN/f;

    iget-object v0, v0, LaN/f;->d:LaN/j;

    iget-object v1, p0, LaN/g;->a:LaN/f;

    iget-object v1, v1, LaN/f;->e:Ln/Q;

    invoke-virtual {v0, v1}, LaN/j;->a(Ln/Q;)V

    .line 939
    return-void
.end method
