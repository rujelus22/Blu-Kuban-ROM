.class public LKS;
.super Ljava/lang/Object;
.source "DocsNotificationProxyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/notification/DocsNotificationProxyActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/notification/DocsNotificationProxyActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, LKS;->a:Lcom/google/android/apps/docs/notification/DocsNotificationProxyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, LKS;->a:Lcom/google/android/apps/docs/notification/DocsNotificationProxyActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/notification/DocsNotificationProxyActivity;->finish()V

    .line 46
    return-void
.end method
