.class final Lcom/darekxan/extweaks/app/d;
.super Ljava/lang/Object;
.source "ExTweaksActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/darekxan/extweaks/app/ExTweaksActivity;


# direct methods
.method constructor <init>(Lcom/darekxan/extweaks/app/ExTweaksActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/darekxan/extweaks/app/d;->a:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    const-string v1, "market://details?id=com.darekxan.extweaks.plus"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/darekxan/extweaks/app/d;->a:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    invoke-virtual {v1, v0}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method
