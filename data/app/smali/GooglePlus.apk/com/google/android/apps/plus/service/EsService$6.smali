.class final Lcom/google/android/apps/plus/service/EsService$6;
.super Ljava/lang/Object;
.source "EsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/EsService;->updateNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2235
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsService$6;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/EsService$6;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService$6;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$6;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/service/AndroidNotification;->update(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2242
    return-void
.end method