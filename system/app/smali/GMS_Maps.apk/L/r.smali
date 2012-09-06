.class Ll/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/O;


# instance fields
.field final synthetic a:Ll/q;


# direct methods
.method constructor <init>(Ll/q;)V
    .registers 2
    .parameter

    .prologue
    .line 837
    iput-object p1, p0, Ll/r;->a:Ll/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln/p;ILn/w;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 841
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 846
    :cond_3
    :goto_3
    return-void

    .line 843
    :cond_4
    if-nez p2, :cond_3

    .line 844
    iget-object v0, p0, Ll/r;->a:Ll/q;

    invoke-static {v0, p3}, Ll/q;->a(Ll/q;Ln/w;)V

    goto :goto_3
.end method
