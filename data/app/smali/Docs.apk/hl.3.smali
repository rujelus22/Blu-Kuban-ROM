.class public final Lhl;
.super LcI;
.source "NewMainProxyActivity.java"


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lhl;->a:Landroid/app/Activity;

    invoke-direct {p0}, LcI;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Lhl;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 433
    return-void
.end method
