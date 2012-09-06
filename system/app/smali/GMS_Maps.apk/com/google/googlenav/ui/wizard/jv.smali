.class Lcom/google/googlenav/ui/wizard/jv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ju;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 824
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/jv;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jv;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 828
    return-void
.end method
