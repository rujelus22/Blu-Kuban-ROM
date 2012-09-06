.class public LQf;
.super Ljava/lang/Object;
.source "ModifySharingActivity.java"

# interfaces
.implements LQn;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, LQf;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 555
    iget-object v0, p0, LQf;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Lck;

    iget-object v1, p0, LQf;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 556
    iget-object v0, p0, LQf;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    iget-object v1, p0, LQf;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    iget-object v1, v1, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;Landroid/view/View;)V

    .line 557
    iget-object v0, p0, LQf;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    sget v1, LcY;->sharing_message_saved:I

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->b(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;I)V

    .line 558
    iget-object v0, p0, LQf;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->c(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;)V

    .line 559
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 563
    iget-object v0, p0, LQf;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Lck;

    iget-object v1, p0, LQf;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 564
    const-string v0, "ModifySharingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, LZA;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 569
    iget-object v0, p0, LQf;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Lck;

    iget-object v1, p0, LQf;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 570
    return-void
.end method
