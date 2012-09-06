.class Lcom/google/googlenav/ui/wizard/iH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/bf;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/iG;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/iG;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iH;->a:Lcom/google/googlenav/ui/wizard/iG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iH;->a:Lcom/google/googlenav/ui/wizard/iG;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/iG;->a(Lcom/google/googlenav/ui/wizard/iG;)Lcom/google/googlenav/J;

    move-result-object v0

    const/16 v1, 0x3e6

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 117
    return-void
.end method
