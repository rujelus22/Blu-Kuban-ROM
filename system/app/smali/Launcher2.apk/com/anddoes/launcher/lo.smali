.class final Lcom/anddoes/launcher/lo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Workspace;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/lo;->a:Lcom/anddoes/launcher/Workspace;

    .line 1957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/anddoes/launcher/lo;->a:Lcom/anddoes/launcher/Workspace;

    sget-object v1, Lcom/anddoes/launcher/lv;->b:Lcom/anddoes/launcher/lv;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/lv;Z)V

    .line 1960
    return-void
.end method
