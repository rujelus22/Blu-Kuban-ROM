.class final Lcom/darekxan/extweaks/app/l;
.super Ljava/lang/Object;
.source "ExTweaksSettingsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/darekxan/extweaks/app/j;

.field private final synthetic b:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/darekxan/extweaks/app/j;Landroid/app/ProgressDialog;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/darekxan/extweaks/app/l;->a:Lcom/darekxan/extweaks/app/j;

    iput-object p2, p0, Lcom/darekxan/extweaks/app/l;->b:Landroid/app/ProgressDialog;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/darekxan/extweaks/app/l;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 79
    return-void
.end method
