.class final Lcom/anddoes/launcher/gw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/LauncherModel;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/gw;->a:Lcom/anddoes/launcher/LauncherModel;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/anddoes/launcher/gw;->a:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherModel;->h(Lcom/anddoes/launcher/LauncherModel;)Ljava/util/ArrayList;

    .line 178
    return-void
.end method
