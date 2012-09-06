.class public Lha;
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
    .line 322
    iput-object p1, p0, Lha;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    iput-object p2, p0, Lha;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 328
    iget-object v0, p0, Lha;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Lck;

    iget-object v1, p0, Lha;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 329
    iget-object v0, p0, Lha;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:LeO;

    iget-object v1, p0, Lha;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, LeO;->a(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lha;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    iget-object v1, p0, Lha;->a:Ljava/lang/String;

    sget-object v2, Lhi;->b:Lhi;

    sget-object v3, Lhh;->c:Lhh;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a(Landroid/app/Activity;Ljava/lang/String;Lhi;Lhh;)V

    .line 332
    iget-object v0, p0, Lha;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/InvitationActivity;->finish()V

    .line 333
    return-void
.end method
