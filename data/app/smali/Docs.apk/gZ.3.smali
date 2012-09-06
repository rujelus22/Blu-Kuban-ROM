.class public LgZ;
.super Ljava/lang/Object;
.source "InvitationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/InvitationActivity;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/InvitationActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, LgZ;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    iput-object p2, p0, LgZ;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 307
    iget-object v0, p0, LgZ;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Lck;

    iget-object v1, p0, LgZ;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 308
    iget-object v0, p0, LgZ;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    iget-object v1, p0, LgZ;->a:Ljava/lang/String;

    sget-object v2, Lhi;->b:Lhi;

    sget-object v3, Lhh;->c:Lhh;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a(Landroid/app/Activity;Ljava/lang/String;Lhi;Lhh;)V

    .line 310
    iget-object v0, p0, LgZ;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/InvitationActivity;->finish()V

    .line 311
    return-void
.end method
