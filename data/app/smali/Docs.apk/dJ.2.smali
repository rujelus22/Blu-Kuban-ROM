.class public LdJ;
.super Ljava/lang/Object;
.source "AccountsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/AccountsActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/AccountsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, LdJ;->a:Lcom/google/android/apps/docs/app/AccountsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, LdJ;->a:Lcom/google/android/apps/docs/app/AccountsActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:Lck;

    iget-object v1, p0, LdJ;->a:Lcom/google/android/apps/docs/app/AccountsActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 157
    iget-object v0, p0, LdJ;->a:Lcom/google/android/apps/docs/app/AccountsActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/AccountsActivity;->a(Lcom/google/android/apps/docs/app/AccountsActivity;)V

    .line 158
    return-void
.end method
