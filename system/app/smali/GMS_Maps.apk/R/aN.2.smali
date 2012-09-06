.class final Lr/aN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/aO;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln/am;Ln/aF;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-virtual {p1}, Ln/am;->j()Ln/av;

    move-result-object v0

    invoke-static {v0}, Ln/t;->a(Ln/av;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    .line 190
    const/4 v0, 0x0

    .line 192
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method
