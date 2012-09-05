.class Ld/am;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Ld/al;


# direct methods
.method constructor <init>(Ld/al;)V
    .registers 2

    iput-object p1, p0, Ld/am;->a:Ld/al;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Ld/am;->a:Ld/al;

    invoke-virtual {v0}, Ld/al;->e()V

    return-void
.end method
