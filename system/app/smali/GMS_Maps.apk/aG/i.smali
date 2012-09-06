.class Lag/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lag/h;


# direct methods
.method constructor <init>(Lag/h;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lag/i;->a:Lag/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lag/i;->a:Lag/h;

    invoke-static {v0}, Lag/h;->a(Lag/h;)Lag/b;

    move-result-object v0

    invoke-virtual {v0}, Lag/b;->notifyDataSetChanged()V

    .line 126
    return-void
.end method
