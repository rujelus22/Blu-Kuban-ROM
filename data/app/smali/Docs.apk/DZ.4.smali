.class LDZ;
.super Landroid/database/ContentObserver;
.source "TextKeyListener.java"


# instance fields
.field final synthetic a:LDW;


# direct methods
.method public constructor <init>(LDW;)V
    .registers 3
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, LDZ;->a:LDW;

    .line 288
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 289
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 293
    iget-object v0, p0, LDZ;->a:LDW;

    invoke-static {v0}, LDW;->a(LDW;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 294
    iget-object v0, p0, LDZ;->a:LDW;

    invoke-static {v0}, LDW;->a(LDW;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 295
    if-nez v0, :cond_1d

    .line 296
    iget-object v0, p0, LDZ;->a:LDW;

    invoke-static {v0, v1}, LDW;->a(LDW;Z)Z

    .line 303
    :goto_1c
    return-void

    .line 298
    :cond_1d
    iget-object v1, p0, LDZ;->a:LDW;

    invoke-static {v1, v0}, LDW;->a(LDW;Landroid/content/ContentResolver;)V

    goto :goto_1c

    .line 301
    :cond_23
    iget-object v0, p0, LDZ;->a:LDW;

    invoke-static {v0, v1}, LDW;->a(LDW;Z)Z

    goto :goto_1c
.end method
