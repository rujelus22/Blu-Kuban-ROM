.class public LgX;
.super Ljava/lang/Object;
.source "InvitationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/InvitationActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/InvitationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, LgX;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, LgX;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Lck;

    iget-object v1, p0, LgX;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 211
    iget-object v0, p0, LgX;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/InvitationActivity;->b(Lcom/google/android/apps/docs/app/InvitationActivity;)V

    .line 212
    return-void
.end method
