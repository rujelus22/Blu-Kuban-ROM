.class final Landroid/support/v4/app/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/app/j;


# direct methods
.method constructor <init>(Landroid/support/v4/app/j;)V
    .registers 2
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->c()Z

    .line 421
    return-void
.end method
