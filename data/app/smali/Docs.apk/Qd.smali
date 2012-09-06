.class public LQd;
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
    .line 240
    iput-object p1, p0, LQd;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 244
    iget-object v0, p0, LQd;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Lck;

    iget-object v1, p0, LQd;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 245
    iget-object v0, p0, LQd;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LXJ;

    invoke-interface {v0}, LXJ;->a()V

    .line 246
    iget-object v0, p0, LQd;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    sget-object v1, LQg;->c:LQg;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;LQg;)LQg;

    .line 248
    iget-object v0, p0, LQd;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->b(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;)V

    .line 250
    iget-object v0, p0, LQd;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;)V

    .line 251
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, LQd;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Lck;

    iget-object v1, p0, LQd;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 256
    const-string v0, "ModifySharingActivity"

    invoke-static {v0, p1, p2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    iget-object v0, p0, LQd;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    sget v1, LcY;->sharing_error:I

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->b(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;I)V

    .line 258
    iget-object v0, p0, LQd;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->finish()V

    .line 259
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 263
    iget-object v0, p0, LQd;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Lck;

    iget-object v1, p0, LQd;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 264
    iget-object v0, p0, LQd;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    sget v1, LcY;->sharing_list_offline:I

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->b(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;I)V

    .line 265
    iget-object v0, p0, LQd;->a:Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->finish()V

    .line 266
    return-void
.end method
