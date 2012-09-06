.class Lne;
.super Ljava/lang/Object;
.source "CooperateStateMachineProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnc;


# direct methods
.method constructor <init>(Lnc;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lne;->a:Lnc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lne;->a:Lnc;

    invoke-virtual {v0}, Lnc;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 143
    iget-object v0, p0, Lne;->a:Lnc;

    invoke-virtual {v0}, Lnc;->dismiss()V

    .line 145
    :cond_d
    return-void
.end method
