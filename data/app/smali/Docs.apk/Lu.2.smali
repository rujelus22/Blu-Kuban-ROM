.class LLu;
.super Ljava/lang/Object;
.source "OpenUrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LLt;


# direct methods
.method constructor <init>(LLt;)V
    .registers 2
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, LLu;->a:LLt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 253
    iget-object v0, p0, LLu;->a:LLt;

    iget-object v0, v0, LLt;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    iget-object v1, p0, LLu;->a:LLt;

    iget-object v1, v1, LLt;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;Landroid/content/Intent;)V

    .line 254
    return-void
.end method
