.class final LP/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, LP/b;->a:Ljava/lang/String;

    iput-object p2, p0, LP/b;->b:Landroid/content/Context;

    iput-object p3, p0, LP/b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 92
    invoke-static {}, Lcom/google/android/apps/analytics/i;->a()Lcom/google/android/apps/analytics/i;

    move-result-object v0

    iget-object v1, p0, LP/b;->a:Ljava/lang/String;

    iget-object v2, p0, LP/b;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/analytics/i;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 93
    const/4 v0, 0x1

    invoke-static {v0}, LP/a;->b(Z)Z

    .line 94
    invoke-static {}, Lcom/google/android/apps/analytics/i;->a()Lcom/google/android/apps/analytics/i;

    move-result-object v0

    iget-object v1, p0, LP/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/i;->a(Ljava/lang/String;)Z

    .line 95
    return-void
.end method
