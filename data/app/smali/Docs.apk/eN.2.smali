.class public LeN;
.super Ljava/lang/Object;
.source "DocumentOpenerActivity.java"


# instance fields
.field private final a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lld;LeD;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LeN;->a:Landroid/content/Intent;

    .line 87
    iget-object v0, p0, LeN;->a:Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 88
    iget-object v0, p0, LeN;->a:Landroid/content/Intent;

    invoke-virtual {p2, v0}, Lld;->a(Landroid/content/Intent;)V

    .line 89
    iget-object v0, p0, LeN;->a:Landroid/content/Intent;

    const-string v1, "documentOpenMethod"

    invoke-virtual {p3}, LeD;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, LeN;->a:Landroid/content/Intent;

    return-object v0
.end method
