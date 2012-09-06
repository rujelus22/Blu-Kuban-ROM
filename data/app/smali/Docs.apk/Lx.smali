.class public final LLx;
.super Lpr;
.source "OpenUrlActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, LLx;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    invoke-direct {p0}, Lpr;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;LLt;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, LLx;-><init>(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, LLx;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Lck;

    iget-object v1, p0, LLx;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 101
    iget-object v0, p0, LLx;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    const-string v1, "Account selection failed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    return-void
.end method

.method public a(Landroid/accounts/Account;)V
    .registers 4
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, LLx;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Lck;

    iget-object v1, p0, LLx;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 94
    iget-object v0, p0, LLx;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    iget-object v0, p0, LLx;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;)V

    .line 96
    return-void
.end method
