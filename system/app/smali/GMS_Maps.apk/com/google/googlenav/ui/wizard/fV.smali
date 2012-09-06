.class Lcom/google/googlenav/ui/wizard/fv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/fG;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ft;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ft;)V
    .registers 2
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fv;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fv;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ft;->b(Lcom/google/googlenav/ui/wizard/ft;)Lcom/google/googlenav/J;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 146
    return-void
.end method
