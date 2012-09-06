.class public LjT;
.super Ljava/lang/Object;
.source "TabletDocListActivity.java"

# interfaces
.implements LTx;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, LjT;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lld;LTE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 362
    invoke-virtual {p2}, LTE;->a()LTD;

    move-result-object v0

    .line 365
    sget-object v1, LTD;->b:LTD;

    if-eq v0, v1, :cond_f

    .line 366
    iget-object v0, p0, LjT;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lkc;

    invoke-interface {v0}, Lkc;->b()V

    .line 368
    :cond_f
    return-void
.end method
