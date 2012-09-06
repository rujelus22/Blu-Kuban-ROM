.class Lm/l;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lm/k;


# direct methods
.method constructor <init>(Lm/k;)V
    .registers 2
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lm/l;->a:Lm/k;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lm/l;->a:Lm/k;

    invoke-static {v0, p1}, Lm/k;->a(Lm/k;Landroid/os/Message;)V

    .line 254
    return-void
.end method
