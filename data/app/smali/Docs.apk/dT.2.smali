.class public LdT;
.super Ljava/lang/Object;
.source "CheckStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/CheckStatusActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/CheckStatusActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, LdT;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, LdT;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:Lck;

    iget-object v1, p0, LdT;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 150
    iget-object v0, p0, LdT;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a(Lcom/google/android/apps/docs/app/CheckStatusActivity;)V

    .line 151
    return-void
.end method
