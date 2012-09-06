.class Lcom/google/googlenav/ui/wizard/hd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac/d;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ha;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ha;)V
    .registers 2
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hd;->a:Lcom/google/googlenav/ui/wizard/ha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Z()V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hd;->a:Lcom/google/googlenav/ui/wizard/ha;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/ha;->a(Lcom/google/googlenav/ui/wizard/ha;Z)Z

    .line 121
    return-void
.end method
