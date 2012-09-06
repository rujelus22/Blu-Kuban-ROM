.class Landroid/support/v4/app/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/app/m;


# direct methods
.method constructor <init>(Landroid/support/v4/app/m;)V
    .registers 2
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->e()Z

    .line 421
    return-void
.end method
